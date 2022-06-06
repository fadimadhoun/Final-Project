import 'package:Fitclub/MainNavScreen.dart';
import 'package:Fitclub/Value/ValueColor.dart';
import 'package:Fitclub/Widget/Button.dart';
import 'package:Fitclub/Widget/EditText.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(ValueColor.ColorAll),
      appBar: AppBar(
        backgroundColor: Color(ValueColor.ColorAll),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  EditText(text: "Email",type:TextInputType.emailAddress),
                  SizedBox(
                    height: 40,
                  ),
                  EditText(text: "Password",type:TextInputType.visiblePassword),
                  SizedBox(
                    height: 30,
                  ),
                  Button("Login"),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
