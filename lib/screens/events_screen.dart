import 'package:dbradio/widgets/event_item.dart';
import 'package:flutter/material.dart';
import 'package:dbradio/styles/styles.dart';
import 'package:dbradio/models/event_model.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 53),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                SizedBox(width: 120),
                Text(
                  'Events',
                  style: Styles.head_module,
                ),
              ],
            ),
            const SizedBox(height: 17),
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: eventData.length,
                itemBuilder: (context, index) {
                  final eventDataVariable = eventData[index];
                  return EventItem(
                    eventItemVal: eventDataVariable,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
