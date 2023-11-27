import 'package:dbradio/models/presenter_model.dart';
import 'package:flutter/material.dart';
import 'package:dbradio/styles/styles.dart';

import '../screens/presenter_detail_screen.dart';

class PresenterItem extends StatelessWidget {
  final PresenterModel presenterItemValue;
  const PresenterItem({Key? key, required this.presenterItemValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PresenterDetail(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          height: 64,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(34, 34, 34, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(presenterItemValue.image),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      presenterItemValue.name,
                      style: Styles.author,
                    ),
                    Text(
                      presenterItemValue.program,
                      style: Styles.psmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 98),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Icon(
                  Icons.more_vert,
                  color: Color.fromRGBO(145, 142, 142, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
