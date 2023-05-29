import 'package:academics/pages/contentPage/ContentPAge.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../model/UserModel.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //form key
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  String errorMessage='';
  //editing controllers
  final firstNameEditingController= TextEditingController();
  final secondNameEditingController= TextEditingController();
  final emailEditingController= TextEditingController();
  final passwordEditingController= TextEditingController();
  final confirmPasswordEditingController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    //FirstName
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      validator:(value){
        if(value!.isEmpty){
          return ('Please enter your first name');
        }
      },
      onSaved: (value)
      {
        firstNameEditingController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefix:  Icon(Icons.account_circle,color: Colors.orange[400],),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "First name",
        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10)
        ),
      ),
    );
    //second name
    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameEditingController,
      keyboardType: TextInputType.name,
      validator:(value) {
        if (value!.isEmpty) {
          return ('Please enter your second name');
        }
      },
      onSaved: (value)
      {
        secondNameEditingController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefix: Icon(Icons.account_circle,color: Colors.orange[400],),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Second name",
        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10)
        ),
      ),
    );
    //email
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator:(value){
        if(value!.isEmpty){
          return ('Please enter your email');
        }
        //reg expression
        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
            .hasMatch(value)){return("Please enter a valid email");}
        return null;
      },
      onSaved: (value)
      {
        emailEditingController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefix: Icon(Icons.email,color: Colors.orange[400],),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Enter email",
        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10)
        ),
      ),
    );
    //password
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      validator:(value){
        RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#&*~]).{6,}$');
        if(value!.isEmpty){
          return ("Password is required");
        }
        if(!regex.hasMatch(value)){
          return  '''Password must be at least 6 characters
          Include: uppercase,number & symbol.
              '''
          ;

        }
      },
      onSaved: (value)
      {
        passwordEditingController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefix: Icon(Icons.vpn_key,color: Colors.orange[400],),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Password",
        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10)
        ),
      ),
    );
    // confirm password
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      validator: (value){
        if(value!.isEmpty) {
          return 'Please confirm your password';
        }
        if(value != passwordEditingController.text) {
          return 'Your password does not match';
        }
        return null;
      },
      onSaved: (value)
      {
        confirmPasswordEditingController.text=value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefix: Icon(Icons.vpn_key,color: Colors.orange[400],),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10)
        ),
      ),
    );
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(50),
      color: Colors.orange[400],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20,15,20,15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          register(emailEditingController.text, passwordEditingController.text);

        },
        child: const Text('SIGNUP',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );


    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                    key: _formKey,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration
                            (
                            borderRadius: const BorderRadius.all(Radius.circular(40)),
                            color: Colors.orange[400]
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('SMART DESK',style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 28),),
                          ),
                        ),
                        const Text('SingUp ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                        const SizedBox(height: 25,),
                        firstNameField,
                        const SizedBox(height: 15,),
                        secondNameField,
                        const SizedBox(height: 15,),
                        emailField,
                        const SizedBox(height: 15,),
                        passwordField,
                        const SizedBox(height: 15,),
                        confirmPasswordField,
                        const SizedBox(height: 25,),
                        signUpButton,
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget> [
                            const Text('Already a member  '),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, 'logIn');
                              },
                              child: const Text('Login.',style: TextStyle(color: Colors.lightBlueAccent),),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
  postDetailsToFirestore()async
  {
    // calling firestore
    FirebaseFirestore firebaseFirestore= FirebaseFirestore.instance;
    User? user= _auth.currentUser;
    //calling usermodel
    UserModelOne userModel=UserModelOne();
    // sending content
    userModel.email=user!.email;
    userModel.uid=user.uid;
    userModel.firstName=firstNameEditingController.text;
    userModel.secondName=secondNameEditingController.text;
    await firebaseFirestore
        .collection('users')
        .doc(user.uid)
        .set(userModel.toMap());
    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context)=>const ContentPage()),
            (route) => false);
    Fluttertoast.showToast(msg: 'Account created successfully',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      timeInSecForIosWeb: 1,
      fontSize: 16,);
  }
  void register(String email,String password) async
  {
    if (_formKey.currentState!.validate())
    {
      await _auth.createUserWithEmailAndPassword(
          email: emailEditingController.text,
          password: passwordEditingController.text)
          .then((value) => {
        postDetailsToFirestore()
      }).catchError((e)
      {Fluttertoast.showToast(msg: e!.message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        timeInSecForIosWeb: 1,
        fontSize: 16,);
      });
    }
  }

}
