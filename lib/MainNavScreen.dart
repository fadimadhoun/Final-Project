import 'package:Fitclub/Value/ValueColor.dart';
import 'package:Fitclub/bn_screens/SettingScreen.dart';
import 'package:Fitclub/bn_screens/MessagesScreen.dart';
import 'package:Fitclub/models/screensBNM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bn_screens/HomeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<BnScreen> _bnScreen = <BnScreen>[
    // const BnScreen(title: 'Home', widget: HomeScreen(),icon: "assets/Thumb.png",),
    BnScreen(
      title: 'Home',
      widget: const HomeScreen(),
      iconCenter: Image.asset('assets/logohome.png', width: 50),
      icon: Image.asset('assets/Right Icon1.png'),
    ),
    const BnScreen(title: 'Settings', widget: SettingScreen()),
    const BnScreen(title: 'Messages', widget: MessagesScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ValueColor.ColorAll),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Container(
          height: 60 + MediaQuery.of(context).padding.top,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                child: Row(
                  mainAxisAlignment: _bnScreen[_currentIndex].iconCenter == null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    if (_bnScreen[_currentIndex].iconCenter != null)
                      const SizedBox(),
                    if (_bnScreen[_currentIndex].iconCenter == null)
                      Text(
                        _bnScreen[_currentIndex].title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                    if (_bnScreen[_currentIndex].iconCenter != null)
                      _bnScreen[_currentIndex].iconCenter!,
                    if (_bnScreen[_currentIndex].icon != null)
                      _bnScreen[_currentIndex].icon!,
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: ValueColor.gradient,
          ),
        ),
      ),
      body: _bnScreen[_currentIndex].widget,
      bottomNavigationBar: BottomAppBar(
        color: Color(ValueColor.ColorAll),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  icon: SvgPicture.asset(_currentIndex == 0
                      ? "assets/Page 2.svg" //if
                      : "assets/Page 1.svg")),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  icon: SvgPicture.asset(_currentIndex == 2
                      ? "assets/Messages 2.svg" //if
                      : "assets/Messages 1.svg")),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  icon: SvgPicture.asset(_currentIndex == 1
                      ? "assets/Settings1.svg" //if
                      : "assets/Settings2.svg")),
            ],
          ),
        ),
      ),
    );
  }
}
