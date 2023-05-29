import 'package:flutter/material.dart';
class MBA extends StatefulWidget {
  const MBA({Key? key}) : super(key: key);

  @override
  State<MBA> createState() => _MBAState();
}

class _MBAState extends State<MBA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text('Master in Business Administration',style: TextStyle(fontWeight: FontWeight.w800),)),
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
                    Navigator.pushNamed(context, 'finanicialManagement');
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

                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('BAC 815: FINANCIAL MANAGEMENT',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 10,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context, 'managerialEconomics');
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

                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('BBA 821: MANAGERIAL ECONOMICS',style: TextStyle(color: Colors.white),),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
