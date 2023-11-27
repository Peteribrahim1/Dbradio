import 'package:flutter/material.dart';
import 'package:dbradio/styles/styles.dart';

class ModalScreen extends StatelessWidget {
  const ModalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(48, 48, 48, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image.asset('assets/images/ec.png'),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 120),
                const Text(
                  'Angelus',
                  style: Styles.head_module,
                ),
              ],
            ),
            const SizedBox(height: 58),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/pic.png'),
                const SizedBox(width: 17),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Day: MON-FRI',
                        style: Styles.nowPlaying,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'TIme:12am,6am,12pm,6pm',
                        style: Styles.nowPlaying,
                      ),
                      const SizedBox(height: 10),
                      Image.asset('assets/images/redd.png'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Program Details:',
              style: Styles.author,
            ),
            const SizedBox(height: 14),
            const Text(
              'Lorem ipsum dolor sit amet consectetur. Vestibulum tempus pretium semper lobortis. Consectetur nisl placerat in tellus pulvinar in gravida. Neque lectus suscipit consectetur libero pharetra dignissim id. Vulputate pretium sit maecenas amet turpis neque. Suspendisse tristique vitae arcu in at urna. Nec amet nullam ultrices dignissim duis cursus sit porta neque. Facilisi urna facilisis vitae elementum penatibus gravida sed.',
              style: Styles.nowPlaying,
            ),
          ],
        ),
      ),
    );
  }
}
