import 'package:Fitclub/Value/ValueColor.dart';
import 'package:Fitclub/items/SubscripItem.dart';
import 'package:Fitclub/models/modelSubscrip.dart';

import 'package:flutter/material.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(ValueColor.ColorAll),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Subscriptions"),
        backgroundColor: Color(ValueColor.baseColor),
      ),
      body: ListView.separated(

        itemBuilder: (context, index) {

          return SubscripItem(subscrip: subscripList[index]);
        },

        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 12,
          );
        },
        itemCount: subscripList.length,

      ),
    );
  }
}
