import 'package:dbradio/screens/aboutus_screen.dart';
import 'package:dbradio/widgets/more_item.dart';
import 'package:flutter/material.dart';
import 'package:dbradio/styles/styles.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

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
                const SizedBox(width: 120),
                const Text(
                  'More',
                  style: Styles.head_module,
                ),
              ],
            ),
            const SizedBox(height: 31),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              width: double.infinity,
              child: ListView(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutusScreen(),
                            ));
                      },
                      child: const MoreItem(
                          icon: 'assets/images/aboutIcon.png',
                          title: 'About us')),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutusScreen(),
                            ));
                      },
                      child: const MoreItem(
                          icon: 'assets/images/web.png',
                          title: 'Visit Our Website')),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutusScreen(),
                            ));
                      },
                      child: const MoreItem(
                          icon: 'assets/images/shareIcon.png',
                          title: 'Share via social media')),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutusScreen(),
                            ));
                      },
                      child: const MoreItem(
                          icon: 'assets/images/contactIcon.png',
                          title: 'Contact Us')),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Follow our social media page',
                style: Styles.nowPlaying,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 13),
                Image.asset('assets/images/ig.png'),
                const SizedBox(width: 27),
                Image.asset('assets/images/fb.png'),
                const SizedBox(width: 27),
                Image.asset('assets/images/tw.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
