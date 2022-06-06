import 'package:Fitclub/Widget/Button.dart';
import 'package:flutter/material.dart';

import 'Value/ValueColor.dart';
import 'Widget/EditText.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVisable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ValueColor.ColorAll),
      appBar: AppBar(
        backgroundColor: Color(ValueColor.ColorAll),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          // margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const EditText(text: "Abed bayomi", type: TextInputType.text),
              const SizedBox(
                height: 30,
              ),
              const EditText(
                  text: "abedbayomi@gmail.com",
                  type: TextInputType.emailAddress),
              const SizedBox(
                height: 30,
              ),
              const EditText(text: "Mobile Number", type: TextInputType.phone),
              const SizedBox(
                height: 30,
              ),
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isVisable,
                decoration: InputDecoration(
                    suffix: IconButton(
                      color: Color(ValueColor.SilverColor),
                      iconSize: 20,
                      onPressed: () {
                        setState(() {
                          isVisable = !isVisable;
                        });
                      },
                      icon: Icon(
                        isVisable ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    hintText: "**********",
                    hintStyle: TextStyle(
                        fontSize: 15, color: Color(ValueColor.SilverColor)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color(ValueColor.SilverColor))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color(ValueColor.focusedBorder)))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 16),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15,
                    color: Color(ValueColor.SilverColor),
                  ),
                  hintText: "Country",
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color(
                      ValueColor.SilverColor,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(
                        ValueColor.SilverColor,
                      ),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(
                        ValueColor.focusedBorder,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const EditText(text: "City", type: TextInputType.text),
              const SizedBox(
                height: 30,
              ),
              // Text("By creating account, you agree to Fitclub Privacy Policy and Terms of Use",
              //   style: TextStyle(color: Color(ValueColor.SilverColor),fontSize: 16),),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "By creating account, you agree to Fitclub",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(ValueColor.SilverColor),
                      ),
                    ),
                    TextSpan(
                      text: " Privacy Policy",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(ValueColor.baseColor),
                      ),
                    ),
                    TextSpan(
                      text: " and",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(ValueColor.SilverColor),
                      ),
                    ),
                    TextSpan(
                      text: " Terms of Use",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(ValueColor.baseColor),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Button("Sign up")
            ],
          ),
        ),
      ),
    );
  }
}
