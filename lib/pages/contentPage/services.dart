import 'package:academics/pages/model/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: const Text('We offer the following services:'),
        backgroundColor: Colors.grey,
        elevation: 0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context,'contentPage');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration
                  (
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white
                ),
                  child: const Icon(Icons.home,color: Colors.black,)),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/servicesBackground.jpg'
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: Column(
              children: [
                const Text('i) Virtual tutorials.\n\n'
                    'ii) Physical tutorial for those around Nairobi. (Contact us for more information)'
                    '\n\n'
                    'These are the units/subjects scheduled for tutorials\n',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                const Text('1. Managerial economics',style: TextStyle(color:Colors.white,fontSize: 18, fontWeight: FontWeight.bold),),

                const SizedBox(height: 15,),
                const Text('2. Micro-economics',style: TextStyle(color:Colors.white,fontSize: 18, fontWeight: FontWeight.bold)),

                const SizedBox(height: 15,),
                const Text('3. Macro-economics',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),

                const SizedBox(height: 15,),
                const Text('4. Quantitative Analysis',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),

                const SizedBox(height: 15,),
                const Text('5. Applied Statistics',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),

                const SizedBox(height: 15,),
                const Text('6. Theory of Finance',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),

                const SizedBox(height: 15,),
                const Text('7. Taxation',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),

                const SizedBox(height: 15,),
                const Text('8. Financial Accounting',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                const SizedBox(width: 10,),

                const SizedBox(height: 15,),
                const Text('9. Cost Accounting',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                const SizedBox(height: 15,),
                const Text('10. Management Accounting',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                const SizedBox(height: 15,),
                Text('Study materials will be shared upon scheduling.',style: TextStyle(color: Colors.green[200],fontWeight:FontWeight.bold,fontSize: 18),),
                const SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    color: Colors.grey,


                  ),
                  //color: Colors.grey,
                  child: Text('WHY US?\n\n\n'
                      'Hello ${loggedInUser.firstName}, by engaging with us you will be able to '
                      'gain the following benefits:\n\n'
                      '1. You will get free learning materials.\n'
                      '2. Affordable, flexible and subject variety.\n'
                      '3. Service delivery that operates for 24hours.\n'
                      '4. Expert tutorials.\n'
                      '5. Quality services at flexible and affordable charges',style: const TextStyle(
                    fontSize: 18,
                  ),),
                ),
                const Text('Reach out to us for scheduling.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black),),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: (){
                        whatsApp();
                      },
                      icon: const Icon(Icons.chat,size: 40,),
                      color: Colors.green,
                    ),
                    IconButton(
                      onPressed: (){
                        openMail();
                      },
                      icon: const Icon(Icons.mail,size: 40,),
                      color: Colors.red,),
                    IconButton(
                      onPressed: (){
                        //FlutterPhoneDirectCaller.call
                        launchUrl(
                            Uri.parse('tel:+254704858069')
                        );
                      },
                      icon: const Icon(Icons.phone,size: 40,),
                      color: Colors.blue,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  whatsApp() {
    return launchUrl(
      Uri.parse(
        //'https://wa.me/+254704858069'
        'whatsapp://send?phone=+254704858069+&text=Hello, Iam using Smart Desk and I would like to participate in the following service(s)',
      ),
    );
  }
  openMail(){
    return launchUrl(
        Uri.parse(
            'mailto:mwichabecollins@gmail.com?subject=Hello&body=Iam using Smart Desk and I would like to participate in the following service(s)'
        )
    );
  }
}
