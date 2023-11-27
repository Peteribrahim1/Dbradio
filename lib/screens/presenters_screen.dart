import 'package:flutter/material.dart';
import 'package:dbradio/widgets/presenter_item.dart';
import 'package:dbradio/styles/styles.dart';
import 'package:dbradio/models/presenter_model.dart';

class PresenterScreen extends StatelessWidget {
  const PresenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          children: [
            const SizedBox(height: 57),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                SizedBox(width: 100),
                Text(
                  'Presenters',
                  style: Styles.head_module,
                ),
              ],
            ),
            const SizedBox(height: 34),
            TextField(
              decoration: InputDecoration(
                filled: true,
                counterText: "",
                fillColor: const Color.fromRGBO(34, 34, 34, 1),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromRGBO(145, 142, 142, 1),
                ),
                contentPadding: const EdgeInsets.all(18),
                hintText: 'Search for Presenters/Program',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(145, 142, 142, 1),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: presenterData.length,
                itemBuilder: (context, index) {
                  final presenterDataVariable = presenterData[index];
                  return PresenterItem(
                    presenterItemValue: presenterDataVariable,
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
