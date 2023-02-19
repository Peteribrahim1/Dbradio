import 'package:dbradio/styles/styles.dart';
import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 73),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 163,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Now Playing',
                        style: Styles.nowPlaying,
                      ),
                    ),
                  ),
                  Container(
                    width: 163,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(235, 237, 239, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Now Playing',
                        style: Styles.program,
                      ),
                    ),
                  ),
                  // child: Image.asset('assets/images/nowplaying.png')),
                ],
              ),
              const SizedBox(height: 78),
              Image.asset('assets/images/don.png'),
              const SizedBox(height: 44),
              const Text(
                'Faith Seeking Understanding',
                style: Styles.play,
              ),
              const SizedBox(height: 11),
              const Text('By Father Tantabu', style: Styles.author),
              const SizedBox(height: 73),
              Image.asset('assets/images/steak.png'),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 74),
                child: Row(
                  children: [
                    Image.asset('assets/images/rec.png'),
                    const SizedBox(width: 33),
                    Image.asset('assets/images/pause.png'),
                    const SizedBox(width: 33),
                    Image.asset('assets/images/share.png'),
                  ],
                ),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
