import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  secureScreen ()async
  {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secureScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView
            (
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28.0,100.0,28.0,28.0),
              child: Column
                (
                children:
                [
                  Container
                    (
                    decoration: const BoxDecoration
                      (
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.grey,

                    ),
                    width: 340,
                    height: 460,

                    child: Column
                      (
                      children:
                       [
                         Center(
                           child: Container(
                             decoration: BoxDecoration
                               (
                               borderRadius: const BorderRadius.all(Radius.circular(40)),
                               color: Colors.orange[400]
                             ),
                             child: const Padding(
                               padding: EdgeInsets.all(8.0),
                               child: Text('SMART DESK',style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 28,
                                 fontWeight: FontWeight.bold,
                               ),
                                 textAlign: TextAlign.center,
                               ),
                             ),
                           ),
                         ),
                        Container(
                          decoration: const BoxDecoration
                            (
                            borderRadius: BorderRadius.all(Radius.circular(40))
                          ),
                            child: Card(
                                clipBehavior: Clip.hardEdge,
                                child: Image.asset('assets/homePage.jpg'))),

                       ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: (){Navigator.pushNamed(context,'termsAndCo');},
                            style: ButtonStyle
                              (
                              shape: MaterialStateProperty.all(RoundedRectangleBorder
                                (borderRadius:BorderRadius.circular(40),
                              side: const BorderSide(color: Colors.deepOrange))),
                              backgroundColor: MaterialStateProperty.all(Colors.orange[400])
                            ),
                            child: const Text('Get Started',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),)),

                        const SizedBox(width: 120,),
                        GestureDetector
                          (
                          onTap: ()
                          {
                            Navigator.pushReplacementNamed(context,'logIn');
                          },
                          child: Text('Log in',style: TextStyle(color: Colors.orange[400],
                          fontWeight: FontWeight.w900)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          )),
    );
  }
}
