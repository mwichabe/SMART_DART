import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../model/UserModel.dart';
class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  bool isImageSelected =false;
  bool isLoading=false;
  final _formKey = GlobalKey<FormState>();
  User? user = FirebaseAuth.instance.currentUser;
  UserModelOne loggedInUser = UserModelOne();
  //pick image
  File? _image;
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
        isImageSelected = true;
      });
    }
    print('$_image');
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold
      (
      appBar: AppBar(
        title: const Text('Update your Profile Picture'),
        centerTitle: true,
      ),
      body: Center
        (
        child: SingleChildScrollView(
          child: Column
            (
            children:
            [
              Stack
                (
                children:
                [
                  CircleAvatar
                    (
                    radius: 64,
                    backgroundColor: Colors.white,
                    child: ClipOval
                      (
                      child: SizedBox
                        (
                          height: 180,
                          width: 180,
                          child: _image != null
                              ? Image.file(
                            _image!,
                            fit: BoxFit.fill,
                            height: 180,
                            width: 180,
                          )
                              :
                          Image.network(
                            loggedInUser.profilePictureUrl ?? 'https://static.vecteezy.com/system/resources/thumbnails/002/318/271/small/user-profile-icon-free-vector.jpg',
                            fit: BoxFit.cover,
                            width: 140,
                            height: 140,
                            errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
                          )
                      ),
                    ),
                  ),
                  Positioned(child: IconButton
                    (
                      onPressed: _pickImage,
                      icon: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.add_a_photo,
                          color: Colors.black,
                        ),
                      )
                  ),
                    bottom: -10,
                    left: 80,
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Stack
                (
                alignment: Alignment.center,
                children:
                [
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isLoading=true ;
                        });
                        String UniqueFileName = DateTime.now().millisecond.toString();
                        Reference referenceRoot = FirebaseStorage.instance.ref();
                        Reference referenceDirImage = referenceRoot.child('images');
                        Reference referenceImageToUpload = referenceDirImage.child(UniqueFileName);
                        try {
                          await referenceImageToUpload.putFile(_image!);
                          String imageUrl = await referenceImageToUpload.getDownloadURL();
                          loggedInUser.profilePictureUrl = imageUrl;
                          await FirebaseFirestore.instance.collection('users')
                              .doc(user!.uid)
                              .update(loggedInUser.toMap());
                          Navigator.pushReplacementNamed(context, 'signUp');
                          Fluttertoast.showToast(msg: 'Profile photo and information updated successfully',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.green,
                            timeInSecForIosWeb: 1,
                            fontSize: 16,);
                        } catch (err) {
                          Fluttertoast.showToast(msg: 'An error occurred in Firebase Firestore: $err');
                        }
                      } else {
                        Fluttertoast.showToast(msg: 'No image selected, please update your profile photo.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          timeInSecForIosWeb: 1,
                          fontSize: 16,);
                        //Fluttertoast.showToast(msg: 'No image selected, please update your profile photo.');
                      }
                      setState(() {
                        isLoading=false;
                      });
                    },


                    child: Text('SAVE'),
                    style: ElevatedButton.styleFrom
                      (
                      backgroundColor: Colors.blue,
                    ),),
                  if (isLoading)
                    const CircularProgressIndicator(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
