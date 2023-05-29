import 'package:flutter/material.dart';
class MPPA extends StatefulWidget {
  const MPPA({Key? key}) : super(key: key);

  @override
  State<MPPA> createState() => _MPPAState();
}

class _MPPAState extends State<MPPA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Text('Master in Public Policy and Administration',style: TextStyle(fontWeight: FontWeight.w800),)),
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
              /*TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'/FaP');
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
                        child: Text('AMC 800: RESERACH METHODS IN SOCIAL SCIENCE',style: TextStyle(color: Colors.white),),
                      ))),*/
              //const SizedBox(height: 3.0,),
              /*TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context, '/me');
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
                        child: Text('APP 800: MICROECONOMICS FOR PUBLIC POLICY',style: TextStyle(color: Colors.white),),
                      ))),*/
              //const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context, 'quantitativeTechnique');
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
                        child: Text('APP 801: QUANTITATIVE TECHNICHQUES FOR PUBLIC POLICY',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'publicAdministration');
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
                        child: Text('APP 802: PUBLIC ADMINISTRATION',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              /*TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'/dg');
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
                        child: Text('APP 803: DEVOLVED GOVERNMENT',style: TextStyle(color: Colors.white),),
                      ))),*/
              const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'lawandgovernance');
                  },
                  child:Container(
                      width: 400,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            color: Colors.white,
                          )
                      ),       child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(' APP 804: LAW AND GOVERNANCE',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              /*TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'/MFPP');
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
                        child: Text('APP 805: MACROECONOMICS FOR PUBLIC POLICY',style: TextStyle(color: Colors.white),),
                      ))),*/
              const SizedBox(height: 3.0,),

              /*TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'/PFAC');
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
                        child: Text('APP 806: PUBLIC FINANCE AND ACCOUNTING',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'/PISM');
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
                        child: Text('APP 807: PUBLIC INFORMATION SYSTEM MANAGEMENT',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,'/cg');
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
                        child: Text('APP 808: COROPORATE GOVERNANCE',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context, '/pm');
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
                        child: Text('APP 809: PROJECT MANAGEMENT IN PUBLIC SECTOR',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context, '/sm');
                  },
                  child:Container(
                      width: 400,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            color: Colors.white,
                          )
                      ),       child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('APP 816: STRATEGIC MANAGEMENT IN THE PUBLIC SECTOR',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),
              TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context, '/PPA');
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
                        child: Text('APP 817: PUBLIC POLICY ANALYSIS',style: TextStyle(color: Colors.white),),
                      ))),
              const SizedBox(height: 3.0,),*/

            ],
          ),
        ),
      ),
    );
  }
}
