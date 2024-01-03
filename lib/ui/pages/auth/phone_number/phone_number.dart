import 'package:alibimenstyle/ui/pages/auth/verification_phone/verification_phone.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumber extends StatefulWidget {
  PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final MaskTextInputFormatter phoneNumberFormatter = MaskTextInputFormatter(
    mask: '#### (##) ###-##-##',
    filter: {"#": RegExp(r'[0-9+]')},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 150),
              const Text(
                'Phone Number',
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
                'Please enter your phone number, so we can\nmore easily deliver your order',
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
                  Padding(
                    padding: EdgeInsets.only(right: 250.0, bottom: 5.0),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.5,
                        color: Color(0xFF14181E),
                        letterSpacing: 0.005,
                      ),
                    ),
                  ),
                  Container(
                    width: 350.0,
                    height: 55.0,
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: TextField(
                      inputFormatters: [phoneNumberFormatter],
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFAFAFA),
                        hintText: '+998 (___) ___-__-__',

                        filled: true,
                        prefixStyle: TextStyle(fontSize: 15.0),
                        prefixIcon: Icon(Icons.call),
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      // maxLength: 13,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 230.0,
                    ),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          height: 1.29,
                          color: Color(0xFF614FE0)),
                    ),
                  ),
                  const SizedBox(
                    height: 150.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        SizeTransitionPage(
                          VerificationPhone(),
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
