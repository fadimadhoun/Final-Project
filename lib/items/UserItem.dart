import 'package:Fitclub/Value/ValueColor.dart';
import 'package:Fitclub/models/modelChat.dart';
import 'package:flutter/material.dart';

class UserItem extends StatefulWidget {
  final Chat userChat;

  const UserItem({
    required this.userChat,
    Key? key,
  }) : super(key: key);

  @override
  _UserItemState createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.userChat.photo),
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
                                widget.userChat.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                widget.userChat.lastMessage,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(ValueColor.SilverColor),
                                    fontWeight: FontWeight.normal
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  widget.userChat.time,
                  style: const TextStyle(
                      color: Color(0xFF646781),
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}