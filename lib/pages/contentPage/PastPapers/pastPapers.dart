import 'package:flutter/material.dart';
class past_papers extends StatefulWidget {
  const past_papers({Key? key}) : super(key: key);

  @override
  State<past_papers> createState() => _past_papersState();
}

class _past_papersState extends State<past_papers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('COURSES',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[700],
          leading: GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context,'contentPage');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration:  BoxDecoration
                      (
                      borderRadius:const  BorderRadius.all(Radius.circular(50)),
                      color: Colors.orange[400]
                    ),
                    child: const Icon(Icons.home, color:  Colors.black,)),
              ))
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30,170,30,30),
          child: Container(
            margin: const EdgeInsets.all(18),
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style:  ButtonStyle
                            (
                              backgroundColor: MaterialStateProperty.all(Colors.orange[400])
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, 'mba');
                          },
                          child:  const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text('MBA (Master of Business Administration)',style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                              color: Colors.black,
                            )),
                          )),
                    ),
                    const SizedBox(height: 20,),
                    Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle
                            (
                              backgroundColor: MaterialStateProperty.all(Colors.orange[400])
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context,'msc');
                          },
                          child:  const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text('MSc (Master of Science) ',style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                              color: Colors.black,
                            )),
                          )),
                    ),
                    const SizedBox(height: 20,),
                    Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style:  ButtonStyle
                            (
                              backgroundColor: MaterialStateProperty.all(Colors.orange[400])
                          ),
                          onPressed: (){
                            Navigator.pushReplacementNamed(context,'mppa');
                          },
                          child: const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text('MPPA (Master in Public Policy and Administration)',style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                              color: Colors.black,
                            ),),
                          )),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
