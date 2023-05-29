import 'package:flutter/material.dart';
class ManagerialEconomics extends StatefulWidget {
  const ManagerialEconomics({Key? key}) : super(key: key);

  @override
  State<ManagerialEconomics> createState() => _ManagerialEconomicsState();
}

class _ManagerialEconomicsState extends State<ManagerialEconomics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red)
                        ),
                        child: Image.asset('assets/mba/managerialEconomics_BBA_821/page1.jpeg')),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page2.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page3.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page4.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page5.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page6.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page7.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page8.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page9.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page10.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page11.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page12.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page13.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page14.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page15.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page16.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page17.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page18.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page19.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mba/managerialEconomics_BBA_821/page20.jpeg')),
                  const SizedBox(height: 10,),

                  Row(
                    children:  [
                      const Text('YOU HAVE REACHED THE END.   '),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'pastPapers');},
                        child: const Text('COURSES',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w900),),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
