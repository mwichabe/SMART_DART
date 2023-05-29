import 'package:academics/pages/NavigationDrawer/NavigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  secureScreen()async
  {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //secureScreen();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: Colors.white,
            endDrawer: const Navigation_drawer(),
            appBar: AppBar(
              title: const Text('SMART DESK',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
              centerTitle: true,
              backgroundColor: Colors.grey[700],
              elevation: 0.0,
              leading: null,
            ),
            body: Padding(
              padding: const EdgeInsets.all(28.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider
                      (
                      height: 5,
                      color: Colors.orange[400],
                    ),
                    Text('Swipe for more >>', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.orange[400] )),
                    Divider
                      (
                      height: 5,
                      color: Colors.orange[400],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,

                      child: Row
                        (
                        children:
                        [
                          GestureDetector(
                            onTap: ()
                            {
                              Fluttertoast.showToast(msg: 'Double tap to view page');
                            },
                            onDoubleTap: ()
                            {
                              Navigator.pushNamed(context,'services');
                            },
                            child: Card
                              (
                              shadowColor: Colors.orange[400],
                              surfaceTintColor: Colors.lightBlueAccent,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: const  [
                                    Image(image: AssetImage("assets/Serviceindex.jpeg")),
                                     Padding(
                                       padding: EdgeInsets.all(8.0),
                                       child: Text("Services Offered",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                                     ),
                                    SizedBox(height: 5,),
                                    Text('We offer virtual and physical tutorials \n '
                                        'for various courses, \n '
                                        'to learn more click this image.',style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                           const SizedBox(width: 10,),
                          GestureDetector(
                            onTap: ()
                            {
                              Fluttertoast.showToast(msg: 'Double tap to view content.');
                            },
                            onDoubleTap: ()
                            {
                              Navigator.pushNamed(context,'academicResearch');
                            },
                            child: Card(
                              shadowColor: Colors.yellow,
                              surfaceTintColor: Colors.orange[400],

                              child: Column
                                (
                                children:
                                 const [
                                  Image(image: AssetImage('assets/researchHome.jpeg')),
                                  Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child:  Text("Academic Research",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                                  ),
                                   SizedBox(height: 5.0,),
                                   Text('We can do quality '
                                       'work for you.\n'
                                       'To know the academic work we can handle, \n'
                                       'click on the image above.',style: TextStyle(fontSize: 18),)
                                ],
                              ),

                            ),
                          ),
                          const SizedBox(width: 10,),
                           GestureDetector(
                             onTap: ()
                             {
                               Fluttertoast.showToast(msg: 'Double tap to view content.');
                             },
                             onDoubleTap: ()
                             {
                               Navigator.pushNamed(context, 'pastPapers');
                             },
                             child: Card
                              (
                              shadowColor: Colors.blueGrey,
                              surfaceTintColor: Colors.yellow,

                              child:Column
                                (
                                children:
                                const [
                                  Image(image: AssetImage('assets/pastPapers.jpeg')),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("We have latest past papers\n "
                                        "for students to revise,\n"
                                        " we have majorly specialised on three courses;\n"
                                        " MBA, MSC and MPPA, \n"
                                        "click on the image to learn more.",style: TextStyle(fontSize: 18),),
                                  ),
                                ],
                              )


                          ),
                           ),
                           const SizedBox(width: 10,)
                        ]

                      ),
                    ),
                    const SizedBox(height: 80,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: (){
                            alertDialog();
                          },
                          child: const Text('Learn More About Us ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.blueGrey),),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.blueGrey,
                      height: 15,
                    ),
                    const Text('      Reach to Us :',style: TextStyle(color: Colors.blueGrey,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //whatsApp Icon
                        IconButton(
                          onPressed: (){
                            whatsApp();
                          },
                          icon: const Icon(Icons.chat,size: 90,),
                          color: Colors.green,
                        ),
                        //email icon
                        IconButton(
                          onPressed: (){
                            openMail();
                          },
                          icon: const Icon(Icons.mail,size: 90,),
                          color: Colors.red,),
                        //phone call
                        IconButton(
                          onPressed: (){
                            launchUrl(Uri.parse('tel: +254704858069'));
                            //launchUrl(
                              // Uri.parse('tel:+254704858069')
                            //);
                          },
                          icon: const Icon(Icons.phone,size: 90,),
                          color: Colors.blue,),
                      ],
                    )
                  ],
                ),
              ),
            )

        ));

  }
  whatsApp() {
    return launchUrl(
      Uri.parse(
        //'https://wa.me/+254704858069'
        'whatsapp://send?phone=+254704858069+&text=Hello, Iam using the Smart Desk '
            'application and I would like to enquire about...',
      ),
    );
  }
  openMail(){
    return launchUrl(
        Uri.parse(
            'mailto:mwichabecollins@gmail.com?subject=Hello&body= I am using the Smart Desk '
                'application and '
                'I would like to enquire about...'
        )
    );
  }
  alertDialog()
  {
    showDialog(
        context: context,
        builder: (context)
        {
          return const AlertDialog(
            content: Text('We are dedicated to empower students with quality resource materials for their study in school.\n'
                'Success is guaranteed by hard work.',style:TextStyle(fontSize: 18)),
          );
        });
  }
}
