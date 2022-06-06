import 'package:Fitclub/Value/ValueColor.dart';
import 'package:Fitclub/Widget/widgetsp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ValueColor.ColorAll),
      body: Stack(
        children: [
          Image.asset(
            "assets/Rectangle 11.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage('assets/Oval 2.png'),
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            ' Abdulhamid Dawas',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            ' Saudi Arabia, Riyadh',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xCCFFFFFF),
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  child: SvgPicture.asset(
                    "assets/preferences-circle.svg",
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 140),
                widgetsp(
                    text1: "About You",
                    text2: '',
                    image: 'assets/IconUser.png'),
                widgetsp(
                    text1: "Email",
                    text2: 'abed@gmail.com',
                    image: 'assets/IconEmail.png'),
                widgetsp(
                    text1: "Phone",
                    text2: '+966 9200 07576',
                    image: 'assets/IconPhone.png'),
                widgetsp(
                    text1: "Password", text2: '', image: 'assets/IconPass.png'),
                widgetsp(
                    text1: "Country",
                    text2: 'Saudi Arabia',
                    image: 'assets/IconCountry.png'),
                SizedBox(height: 15),
                widgetsp(
                    text1: "Language",
                    text2: 'English',
                    image: 'assets/IconLanguage.png'),
                widgetsp(
                    text1: "Notifications",
                    text2: 'On',
                    image: 'assets/IconNotf.png'),
                SizedBox(height: 20),
                widgetsp(
                    text1: "Privacy Policy",
                    text2: '',
                    image: 'assets/IconPrivacy.png'),
                widgetsp(
                    text1: "Terms of Use",
                    text2: '',
                    image: 'assets/IconTerms.png'),
                SizedBox(height: 25),
                widgetsp(
                    text1: "Sign Out",
                    text2: '',
                    image: 'assets/IconSignOut.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
