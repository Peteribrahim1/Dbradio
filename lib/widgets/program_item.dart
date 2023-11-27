import 'package:flutter/material.dart';
import 'package:dbradio/styles/styles.dart';
import 'package:dbradio/models/program_model.dart';
import 'package:dbradio/screens/modal_screen.dart';

class ProgramItem extends StatelessWidget {
  final ProgramModel programItemVal;

  const ProgramItem({Key? key, required this.programItemVal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const ModalScreen(),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 7, bottom: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      programItemVal.name,
                      style: Styles.heading,
                    ),
                    Text(
                      programItemVal.time,
                      style: Styles.time,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                Image.asset('assets/images/reminder.png'),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Image.asset('assets/images/arrow.png'),
                ),
                // Icon(Icons.arrow_forward_ios),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              //color: Color.fromRGBO(48, 48, 48, 1),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );

  }
}
