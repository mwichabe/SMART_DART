//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:academics/pages/log%20in%20page/signUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  //form key
  final _formKey = GlobalKey<FormState>();
  // text controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String email = 'test@gmail.com';
  String pass='123';
  Future checkLogin()async{if(emailController.text==email&&passwordController.text==pass)
  { }
  else { }

  }
  @override
  Widget build(BuildContext context) {
    //email
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator:(value){
        if(value!.isEmpty){
          return ('Please enter your email');
        }
        //reg expression
        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
            .hasMatch(value)){return("Please Enter a valid email");}
        return null;
      }
      ,
      onSaved: (value)
      {
        emailController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefix: const Icon(Icons.email,color: Colors.blue,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Enter Email",
        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10)
        ),
      ),
    );
    //password
    final passwordField = TextFormField(
      obscureText: true,
      autofocus: false,
      controller: passwordController,
      validator:(value){
        RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!$@#&*~]).{6,}$');
        if(value!.isEmpty){
          return ("Password is required");
        }
        if(!regex.hasMatch(value)){
          return ('''Password must be at least 6 characters
          Include: uppercase,number & symbol.''');
        }
      },
      onSaved: (value)
      {
        passwordController.text=value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefix: const Icon(Icons.vpn_key,color: Colors.blue,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Enter password",
        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10)
        ),
      ),
    );
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(50),
      color: Colors.orange[400],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20,15,20,15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          setState(() {
            _isLoading = true;
          });
          signIn(emailController.text, passwordController.text);
        },
        child: const Text('LOGIN',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
      ),
    );
    return Scaffold(
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
                        Container
                          (
                          decoration: const BoxDecoration
                            (
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                          child: Column
                            (
                            children:
                            [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,8,8),
                                child: Container
                                  (
                                  decoration:  BoxDecoration
                                    (
                                    color: Colors.orange[400],
                                    borderRadius: const BorderRadius.all(Radius.circular(40))
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('SMART DESK',style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 28),),
                                  ),
                                ),
                              ),
                              const Text('Sing In ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                              const SizedBox(height: 15,),
                              emailField,
                              const SizedBox(height: 15,),
                              passwordField,
                              const SizedBox(height: 35,),
                              loginButton,
                              const SizedBox(height: 15,),
                              Visibility(
                                visible: _isLoading,
                                child: const Center(
                                  child: SpinKitCircle(
                                    color: Colors.white,
                                    size: 50.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context,'resetPassword');
                              },
                              child:  Text('Forgot password?',style: TextStyle(color: Colors.orange[400]),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget> [
                            const Text('Do not have an account?  '),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(context,MaterialPageRoute(
                                    builder:(context)=> const SignUp()));
                              },
                              child: const Text('SignUp.',style: TextStyle(color: Colors.lightBlueAccent),),
                            )
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: (){
                                whatsApp();
                              },
                              child:  Text('Help>> Contact Admin',style: TextStyle(color: Colors.orange[400]),),
                            ),
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
  void signIn(String email, String password) async
  {
    if(_formKey.currentState!.validate()){
      await _auth
          .signInWithEmailAndPassword(email: emailController.text,password:passwordController.text)
          .then((uid)=>{
        Navigator.pushReplacementNamed(context,'contentPage'),
        Fluttertoast.showToast(msg:'Login Successful',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.green,
          timeInSecForIosWeb: 1,
          fontSize: 16,),
      }).catchError((e)
      {
        Fluttertoast.showToast(msg: e!.message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        timeInSecForIosWeb: 1,
        fontSize: 16,);
      });
    }
  }
  whatsApp() {
    return launchUrl(
      Uri.parse(
        'https://wa.me/+254704858069'
        'whatsapp://send?phone=+254704858069+&text=Hello, I am unable to Login because of...',
      ),
    );
  }
}
