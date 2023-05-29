import 'package:flutter/material.dart';
class MSc extends StatefulWidget {
  const MSc({Key? key}) : super(key: key);

  @override
  State<MSc> createState() => _MScState();
}

class _MScState extends State<MSc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text('Master in Science',style: TextStyle(fontWeight: FontWeight.w800),)),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey,
        leading: GestureDetector(
          onTap: ()
          {
            Navigator.pushReplacementNamed(context,'pastPapers');
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container
              (
              decoration: BoxDecoration
                (
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color:  Colors.orange[400]
              ),
              child: const Icon(Icons.arrow_back_ios, color:  Colors.black,),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('UNIT CODE AND NAME',style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w300)),
              const SizedBox(height: 3,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context, 'quantTechniques840');
                  },
                  child:Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            color: Colors.white,
                          )
                      ),

                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('BMS 840: QUANTITATIVE TECHNIQUES',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'researchMethods');
                  },
                  child:Container(
                      width: 400,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            color: Colors.white,
                          )
                      ),
                      child:  const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Amc 800: RESEARCH METHODS IN SOCIAL SCIENCE',style: TextStyle(color: Colors.white),),
                      ))),

            ],
          ),
        ),
      ),
    );
  }
}
