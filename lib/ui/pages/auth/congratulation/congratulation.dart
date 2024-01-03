import 'package:alibimenstyle/ui/pages/auth/phone_number2/phone_number2.dart';
import 'package:alibimenstyle/ui/pages/auth/verification_phone/verification_phone.dart';
import 'package:flutter/material.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 300),
              const Text(
                'Congratulation!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF121212),
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'your account is complete, please enjoy the best \n menu from us.',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Color(0xFF999A9D),
                  height: 1.5,
                  letterSpacing: 0.005,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 160,
                    height: 91,
                    child: Image.asset('assets/auth/img.png'),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        SizeTransitionPage(
                          PhoneNumber2(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF614FE0),
                      // Use backgroundColor instead of primary
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                      child: Text(
                        "Continue",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFFFEFEFE)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
