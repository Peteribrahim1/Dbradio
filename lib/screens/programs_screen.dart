import 'package:dbradio/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:dbradio/widgets/program_item.dart';
import 'package:dbradio/models/program_model.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 63),
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
                        'Program Schedule',
                        style: Styles.program,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              Image.asset('assets/images/calender.png'),
              const SizedBox(height: 48),
              // ProgramItem(programItemVal: programData,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.60,
                width: double.infinity,
                child: ListView.builder(
                  //physics: const NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: programData.length,
                  itemBuilder: (context, index) {
                    final programVariable = programData[index];
                    return ProgramItem(
                      programItemVal: programVariable,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
