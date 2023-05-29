import 'package:flutter/material.dart';
class quantitativeTechniques extends StatefulWidget {
  const quantitativeTechniques({Key? key}) : super(key: key);

  @override
  State<quantitativeTechniques> createState() => _quantitativeTechniquesState();
}

class _quantitativeTechniquesState extends State<quantitativeTechniques> {
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
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:Text('FIRST PAST PAPER',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white)),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red)
                      ),
                      child: Image.asset('assets/mppa/quantitativepage1.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/quantitativeTechniquePage2.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/quantitativeTechniquePage2.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/quantitativepage3.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/quantitativePage4.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/quantitativepage5.jpeg')),
                  const SizedBox(height: 15,),
                  const Text('SECOND PAPER'),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/QuantitativePaper2.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/QuantitativePaper2Page1.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/QuantitativePaper2Page1.jpeg')),
                  const SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange)
                      ),
                      child: Image.asset('assets/mppa/QuantitativePaper2Page2.jpeg')),
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
