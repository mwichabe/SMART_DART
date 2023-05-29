// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AcademicResearch extends StatefulWidget {
  const AcademicResearch({Key? key}) : super(key: key);

  @override
  State<AcademicResearch> createState() => _AcademicResearchState();
}

class _AcademicResearchState extends State<AcademicResearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Academic Research'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey,
        leading: GestureDetector(
          onTap: (){
          Navigator.pushReplacementNamed(context,'contentPage');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: const BoxDecoration
                (
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
              ),
              child: const Icon(Icons.home, color: Colors.black,)),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/researchBAckground.jpg'),
                    fit: BoxFit.cover),
              ),
              child: const  SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  'At an affordable fee you can get:\n\n'
                      '  Quality work done on: \n'
                      '1. Business proposals\n'
                      '2. Diploma proposals\n'
                      '3. Bachelors proposals\n'
                      '4. Masters proposals\n'
                      '5. PhD proposals\n'
                      '6. Analysis using SPSS/STATA\n'
                      '7. Power point presentations\n'
                      '8. Plagiarism edits\n'
                      '9. Concept papers, journal development and assignments\n'
                      '10. Thesis\n'
                      '11. Dissertations\n'
                      '12. Defence preparations\n'
                      '13. Company profiles and any other research needs.\n',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                color: Colors.grey,
                child: const Text(
                  'Email us or WhatsApp or call the number attached to get professional assistance.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    whatsApp();
                  },
                  icon:  const Icon(
                    Icons.chat,
                    size: 60,
                  ),
                  color: Colors.green,
                ),
                IconButton(
                  onPressed: () {
                    openMail();
                  },
                  icon: const Icon(
                    Icons.mail,
                    size: 60,
                  ),
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: () {
                    //FlutterPhoneDirectCaller.call
                    launchUrl(Uri.parse('tel:+254704858069'));
                  },
                  icon: const Icon(
                    Icons.phone,
                    size: 60,
                  ),
                  color: Colors.blue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  whatsApp() {
    return launchUrl(
      Uri.parse(
        //'https://wa.me/+254704858069'
        'whatsapp://send?phone=+254704858069+&text=Hello, I am using Smart Desk and I would like to have a quality work done on..',
      ),
    );
  }

  openMail() {
    return launchUrl(Uri.parse(
        'mailto:mwichabecollins@gmail.com?subject=Hello&body= I am using Smart Desk and I would like to have a quality work done on...'));
  }
}
