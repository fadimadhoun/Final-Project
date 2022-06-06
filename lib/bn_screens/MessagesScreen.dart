import 'package:Fitclub/items/UserItem.dart';
import 'package:Fitclub/models/modelChat.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return UserItem(userChat: chatsList[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 12,
          );
        },
        itemCount: chatsList.length,
      ),
    );
  }
}
