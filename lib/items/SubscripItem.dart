import 'package:Fitclub/RestaurantDetails.dart';
import 'package:Fitclub/Value/ValueColor.dart';
import 'package:Fitclub/models/modelSubscrip.dart';
import 'package:flutter/material.dart';

class SubscripItem extends StatefulWidget {
  final Subscrip subscrip;

  const SubscripItem({
    required this.subscrip,
    Key? key,
  }) : super(key: key);

  @override
  _SubscripItemState createState() => _SubscripItemState();
}

class _SubscripItemState extends State<SubscripItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RestaurantDetails(widget.subscrip.nameGym,
                widget.subscrip.iconStar, widget.subscrip.photo)));
      },
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => const RestaurantDetails()),
      //   );
      // },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 2,
          color: const Color(0xFF2A2C41),
          child: Container(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage(widget.subscrip.photo),
                            maxRadius: 30,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    widget.subscrip.nameGym,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(widget.subscrip.iconStar),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(color: Color(0xFF34364E)), //خط
                      Row(
                        children: <Widget>[
                          Text(
                            'Subscription Date',
                            style: TextStyle(
                                color: Color(ValueColor.SilverColor),
                                fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 155),
                            child: Text('Plan',
                                style: TextStyle(
                                    color: Color(ValueColor.SilverColor),
                                    fontSize: 14)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, top: 5),
                        child: Row(
                          children: <Widget>[
                            Text(
                              widget.subscrip.start,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward,
                                color: Color(ValueColor.SilverColor), size: 15),
                            Text(
                              widget.subscrip.finished,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 14),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(widget.subscrip.price,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
