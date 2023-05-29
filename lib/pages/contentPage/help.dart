// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context,'contentPage');
              },
            child: Container
              (
              decoration: const  BoxDecoration
                (
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white
              ),
              child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration
                (
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Let us help you deal with the situation that you are undergoing,\n'
                        'You can reach for help through:\n',
                    style: TextStyle(fontSize: 28, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      whatsApp();
                    },
                    child: const Text(
                      '\n1. WhatsApp messaging.',
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse('tel:+254704858069'));
                      },
                      child: const Text(
                          '\n2. For urgent help you can reach us through a phone call',
                          style: TextStyle(color: Colors.blue, fontSize: 18))),
                  const SizedBox(height: 15,),
                ],
              ),
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
        'whatsapp://send?phone=+254704858069+&text=Hello, I have this problem...',
      ),
    );
  }
}
//methods in public policy
