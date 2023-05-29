import 'package:flutter/material.dart';
class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 200,
              color: Colors.blue,
              child: Text('This are the terms and conditions for this application'),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            ElevatedButton(
              onPressed: isChecked ? () => proceedToSignIn() : null,
              child: Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }

  void proceedToSignIn() {
    // Perform the necessary actions to proceed with signing in
    // when the checkbox is checked
    Navigator.pushReplacementNamed(context, 'signUp');
  }
}

