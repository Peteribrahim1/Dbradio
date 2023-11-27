import 'package:dbradio/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:dbradio/styles/styles.dart';

class EventItem extends StatelessWidget {
  final EventModel eventItemVal;
  const EventItem({Key? key, required this.eventItemVal}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eventItemVal.name,
              style: Styles.nowPlaying,
            ),
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
