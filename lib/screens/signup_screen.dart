import 'package:dbradio/screens/bottom_nav.dart';
import 'package:dbradio/styles/styles.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signup';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 44),
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              const SizedBox(height: 40),
              const Text(
                'Sign Up',
                style: Styles.titleTextStyle,
              ),
              const SizedBox(height: 24),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  prefixIcon: const Icon(
                    Icons.person_outline,
                    color: Color.fromRGBO(145, 142, 142, 1),
                  ),
                  contentPadding: const EdgeInsets.all(18),
                  hintText: 'Julia Gomez',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(43, 52, 64, 1), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle: Styles.hintTextStyle,
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Color.fromRGBO(145, 142, 142, 1),
                  ),
                  contentPadding: const EdgeInsets.all(18),
                  hintText: 'julia.gomez@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(43, 52, 64, 1), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle: Styles.hintTextStyle,
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color.fromRGBO(145, 142, 142, 1),
                  ),
                  contentPadding: const EdgeInsets.all(18),
                  hintText: 'julia.gomez@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(43, 52, 64, 1), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle: Styles.hintTextStyle,
                ),
                style: const TextStyle(color: Color.fromRGBO(145, 142, 142, 1)),
              ),
              const SizedBox(height: 24),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TabsScreen(),
                      ));
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(216, 49, 40, 1),
                  ),
                  child: const Center(
                    child: Text('Sign Up', style: Styles.signupStyle),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/Or.png'),
              const SizedBox(height: 16),
              Image.asset('assets/images/Button.png'),
            ],
          ),
        ),
      ),
    );
  }
}
