import 'package:alibimenstyle/ui/pages/auth/verification_phone/verification_phone.dart';
import 'package:alibimenstyle/ui/pages/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumber2 extends StatefulWidget {
  PhoneNumber2({Key? key}) : super(key: key);

  @override
  _PhoneNumber2State createState() => _PhoneNumber2State();
}

class _PhoneNumber2State extends State<PhoneNumber2> {
  TextEditingController _passwordController1 = TextEditingController();
  bool _isPasswordVisible1 = false;

  TextEditingController _passwordController2 = TextEditingController();
  bool _isPasswordVisible2 = false;

  final MaskTextInputFormatter phoneNumberFormatter = MaskTextInputFormatter(
    mask: '#### (##) ###-##-##',
    filter: {"#": RegExp(r'[0-9+]')},
  );

  @override
  void dispose() {
    _passwordController1.dispose();
    _passwordController2.dispose();
    super.dispose();
  }

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
                  const Padding(
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
                    padding: EdgeInsets.only(right: 305.0, bottom: 5.0),
                    child: Text(
                      'Name',
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
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFAFAFA),
                        filled: true,
                        hintText: 'Your name',
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 285.0, bottom: 5.0),
                    child: Text(
                      'Password',
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
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: TextField(
                      controller: _passwordController1,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFAFAFA),
                        filled: true,
                        hintText: 'Your password',
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible1
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible1 = !_isPasswordVisible1;
                            });
                          },
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: !_isPasswordVisible1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 285.0, bottom: 5.0),
                    child: Text(
                      'Password',
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
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: TextField(
                      controller: _passwordController2,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFAFAFA),
                        filled: true,
                        hintText: 'Your password',
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible2
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible2 = !_isPasswordVisible2;
                            });
                          },
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: !_isPasswordVisible2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          letterSpacing: 0.005,
                          color: Color(0xFF999A9D),
                        ),
                        children: [
                          TextSpan(
                            text: 'If you didn’t receive a code? ',
                          ),
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              color: Color(0xFFFF614FE0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        SizeTransitionPage(
                          BottomNavBar(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF614FE0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 16, color: Color(0xFFFEFEFE)),
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
