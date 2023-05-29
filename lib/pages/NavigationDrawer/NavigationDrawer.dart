import 'package:academics/pages/log%20in%20page/logIn.dart';
import 'package:academics/pages/model/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Navigation_drawer extends StatefulWidget {
  const Navigation_drawer({Key? key}) : super(key: key);

  @override
  State<Navigation_drawer> createState() => _Navigation_drawerState();
}

class _Navigation_drawerState extends State<Navigation_drawer> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModelOne loggedInUser = UserModelOne();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((value){
      loggedInUser= UserModelOne.fromMap(value.data());
      setState((){});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              decoration: const BoxDecoration
                (
                color: Colors.grey,
              ),
              accountName:  Text('${loggedInUser.firstName} ${loggedInUser.secondName}'),
              accountEmail: Text('${loggedInUser.email}'),
              currentAccountPicture:
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child:  Image(image: AssetImage('assets/person-icon.png')),
              )
          ),
          ListTile(
            leading: Icon(Icons.home,color: Colors.orange[400],),
            title:  const Text('Home'),
            onTap: ()=>Navigator.pushNamed(context, 'home'),
          ),
          ListTile(
            leading:  Icon(Icons.book_online,color: Colors.orange[400],),
            title:  const Text('Past papers'),
            onTap: ()=>Navigator.pushNamed(context, 'pastPapers'),
          ),
          ListTile(
            leading:  Icon(Icons.explore,color: Colors.orange[400]),
            title:  const Text('Academic Research'),
            onTap: ()=>Navigator.pushNamed(context,'academicResearch'),
          ),
          ListTile(
            leading:  Icon(Icons.design_services_outlined,color: Colors.orange[400]),
            title:  const Text('Services'),
            onTap: ()=>Navigator.pushNamed(context,'services'),
          ),
          ListTile(
            leading:  Icon(Icons.help,color: Colors.orange[400]),
            title:  const Text('Help'),
            onTap: ()=>Navigator.pushNamed(context,'help'),
          ),
          ListTile(
            leading:  Icon(Icons.settings,color: Colors.red[400]),
            title:  const Text('Delete Account'),
            onTap: ()=> Navigator.pushNamed(
                context,'DeleteAccountPermanently'),
          ),
          ListTile(
              leading:  Icon(Icons.exit_to_app,color: Colors.orange[400]),
              title:  const Text('Log out'),
              onTap: (){
                FirebaseAuth.instance.signOut().then((value)
                {
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const LoginScreen()));
                });
              }
          ),
        ],
      ),
    );
  }
}
