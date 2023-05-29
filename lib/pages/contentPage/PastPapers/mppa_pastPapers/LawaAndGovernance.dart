import 'package:flutter/material.dart';
class LawandGovPastPaper extends StatefulWidget {
  const LawandGovPastPaper({Key? key}) : super(key: key);

  @override
  State<LawandGovPastPaper> createState() => _LawandGovPastPaperState();
}

class _LawandGovPastPaperState extends State<LawandGovPastPaper> {
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
                      child: Image.asset('assets/mppa/law_and_governance.jpeg')),
                  const SizedBox(height: 25,),
                  Row(
                    children:  [
                      const Text('YOU HAVE REACHED THE END.   '),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, 'pastPapers');},
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
