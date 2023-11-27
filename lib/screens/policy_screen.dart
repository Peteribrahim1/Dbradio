import 'package:flutter/material.dart';
import 'package:dbradio/styles/styles.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({Key? key}) : super(key: key);

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
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 90),
                const Text(
                  'Our Policy',
                  style: Styles.head_module,
                ),
              ],
            ),
            const SizedBox(height: 31),
            const Text(
              'This privacy policy About the jwwn kjfwj jwennwefw ewfwkw ewekdwd wedwhn hjkksdff sjfswoowe ieieighbnmmfk kffelwe ffwefwrf erwrw wwrr rwrw eqw w',
              style: Styles.nowPlaying,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
