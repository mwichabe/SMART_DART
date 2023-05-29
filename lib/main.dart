import 'package:academics/pages/Home.dart';
import 'package:academics/pages/contentPage/AcademicResearch.dart';
import 'package:academics/pages/contentPage/ContentPAge.dart';
import 'package:academics/pages/contentPage/PastPapers/MBA/MBA.dart';
import 'package:academics/pages/contentPage/PastPapers/MBA/MBA_PastPapers/ManagerialEconomics.dart';
import 'package:academics/pages/contentPage/PastPapers/MBA/MBA_PastPapers/financial_management.dart';
import 'package:academics/pages/contentPage/PastPapers/MPPA.dart';
import 'package:academics/pages/contentPage/PastPapers/MSc/MSc_pastPapers/quantitativeTechniques.dart';
import 'package:academics/pages/contentPage/PastPapers/MSc/MSc_pastPapers/researchMethods.dart';
import 'package:academics/pages/contentPage/PastPapers/MSc/msc.dart';
import 'package:academics/pages/contentPage/PastPapers/mppa_pastPapers/LawaAndGovernance.dart';
import 'package:academics/pages/contentPage/PastPapers/mppa_pastPapers/publicAdministration.dart';
import 'package:academics/pages/contentPage/PastPapers/mppa_pastPapers/quantitativeTechniques.dart';
import 'package:academics/pages/contentPage/PastPapers/pastPapers.dart';
import 'package:academics/pages/contentPage/help.dart';
import 'package:academics/pages/contentPage/services.dart';
import 'package:academics/pages/log%20in%20page/Auth.dart';
import 'package:academics/pages/log%20in%20page/DeleteAccount.dart';
import 'package:academics/pages/log%20in%20page/logIn.dart';
import 'package:academics/pages/log%20in%20page/resetPass.dart';
import 'package:academics/pages/log%20in%20page/signUp.dart';
import 'package:academics/pages/log%20in%20page/termsAndCondition.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'auth',
    routes:
    {
      'auth': (context)=> const  AuthPage(),
      'termsAndCo': (context)=> const TermsAndCondition(),
      'home': (context)=>const Home(),
      'logIn': (context)=> const LoginScreen(),
      'contentPage':(context)=> const ContentPage(),
      'signUp': (context)=> const SignUp(),
      'resetPassword': (context)=> const ResetPassword(),
      'DeleteAccountPermanently' : (context)=> const DeleteAccountPermanently(),
      'help': (context)=> const Help(),
      'services': (context)=> const Services(),
      'academicResearch': (context) => const AcademicResearch(),
      'pastPapers': (context)=> const past_papers(),
      'mppa': (context)=> const MPPA(),
      'lawandgovernance': (context)=> const LawandGovPastPaper(),
      'publicAdministration': (context)=> const publicAdministration(),
      'quantitativeTechnique': (context)=> const quantitativeTechniques(),
      'mba': (context)=> const MBA(),
      'finanicialManagement': (context)=> const FinancialManagement(),
      'managerialEconomics': (context)=> const ManagerialEconomics(),
      'quantTechniques840': (context)=> const QuantitativeTechniques840(),
      'msc': (context)=> const MSc(),
      'researchMethods': (context)=> const ResearchMethods(),


    },
  ));
}

