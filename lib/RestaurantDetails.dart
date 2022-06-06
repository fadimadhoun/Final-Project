import 'package:Fitclub/Value/ValueColor.dart';
import 'package:flutter/material.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails(this.name, this.iconstar, this.img, {Key? key})
      : super(key: key);

  final String name;
  final String iconstar;
  final String img;

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  final PageController _pageController = PageController(
    viewportFraction: 1.0,
    initialPage: 1,
  );
  List<String> list = [
    'assets/food.png',
    'assets/food.png',
    'assets/food.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(ValueColor.ColorAll),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: PageView.builder(
                controller: _pageController,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 1),
                    child: Image.asset(
                      list[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 240,
              color: const Color(0xFF2A2C41),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(widget.img),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    // 'Protein Bar',
                    widget.name,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Image.asset(widget.iconstar),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_iphone,
                        size: 16,
                        color: Color(ValueColor.SilverColor),
                      ),
                      Text(
                        '00965000000',
                        style: TextStyle(
                            color: Color(ValueColor.SilverColor2),
                            fontSize: 14),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: Color(ValueColor.SilverColor),
                      ),
                      Text(
                        'Al Muruj, Riyadh',
                        style: TextStyle(
                            color: Color(ValueColor.SilverColor2),
                            fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'There are many variations of passages of Lorem \nIpsum available.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(ValueColor.SilverColor2), fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Restaurant Services',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              color: const Color(0xFF2A2C41),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 75,
                width: 380,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Weight Loss',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Muscle your way towards confidence.',
                      style: TextStyle(
                          color: Color(ValueColor.SilverColor2), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: const Color(0xFF2A2C41),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 75,
                width: 380,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Build Muscle',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Muscle your way towards confidence.',
                      style: TextStyle(
                          color: Color(ValueColor.SilverColor2), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: const Color(0xFF2A2C41),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 75,
                width: 380,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Increase Energy',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Muscle your way towards confidence.',
                      style: TextStyle(
                          color: Color(ValueColor.SilverColor2), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: const Color(0xFF2A2C41),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 75,
                width: 380,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dry Muscles',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Muscle your way towards confidence.',
                      style: TextStyle(
                          color: Color(ValueColor.SilverColor2), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
