import 'package:dbradio/styles/styles.dart';
import 'package:flutter/material.dart';

class PresenterDetail extends StatelessWidget {
  const PresenterDetail({Key? key}) : super(key: key);

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
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/pimagee.png'),
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Oluwaseyi Busari',
                        style: Styles.author,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Program: Owanbe Express',
                        style: Styles.time,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Sunday :3pm',
                        style: Styles.time,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/ct.png'),
                          const SizedBox(width: 20),
                          const Icon(Icons.share, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33),
            const Text(
              'About',
              style: Styles.head_module,
            ),
            const SizedBox(height: 7),
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
