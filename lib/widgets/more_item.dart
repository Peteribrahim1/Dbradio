//import 'package:dbradio/models/more_model.dart';
import 'package:flutter/material.dart';
import 'package:dbradio/styles/styles.dart';

class MoreItem extends StatelessWidget {
  final dynamic icon;
  final String title;

  const MoreItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        height: 47,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromRGBO(34, 34, 34, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(icon),
            const SizedBox(width: 21),
            Text(
              title,
              style: Styles.item,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
