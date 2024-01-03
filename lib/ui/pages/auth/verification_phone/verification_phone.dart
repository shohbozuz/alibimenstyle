import 'package:alibimenstyle/ui/pages/auth/congratulation/congratulation.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SizeTransitionPage extends PageRouteBuilder {
  final Widget page;

  SizeTransitionPage(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return Align(
        alignment: Alignment.center,
        child: SizeTransition(
          axis: Axis.horizontal,
          sizeFactor: animation,
          child: child,
          axisAlignment: 0,
        ),
      );
    },
  );
}

class VerificationPhone extends StatefulWidget {
  const VerificationPhone({Key? key}) : super(key: key);

  @override
  State<VerificationPhone> createState() => _VerificationPhoneState();
}

class _VerificationPhoneState extends State<VerificationPhone> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 150),
              const SizedBox(
                width: 366,
                height: 29,
                child: Text(
                  'Verification Phone',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xFF121212),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 366,
                height: 48,
                child: RichText(
                  textAlign: TextAlign.center,
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
                        text:
                        'Please enter the code we just sent to phone \n number  ',
                      ),
                      TextSpan(
                        text: '(+20) 123477092 299',
                        style: TextStyle(
                          color: Color(0xFFFF14181E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Material(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Pinput(
                        length: 4,
                        controller: _controller,
                        defaultPinTheme: PinTheme(
                          width: 52,
                          height: 48,
                          textStyle: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xFFeceff6)),
                            color: Color(0xFFeceff6),
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          width: 52,
                          height: 48,
                          textStyle: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xFFeceff6)),
                            color: Color(0xFFeceff6),
                          ),
                        ),
                        submittedPinTheme: PinTheme(
                          width: 52,
                          height: 48,
                          textStyle: TextStyle(
                            fontSize: 22,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xFFeceff6)),
                            color: Color(0xFFeceff6),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: 366,
                height: 48,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: 'If you didn’t receive a code? ',
                        style: TextStyle(
                          color: Color(0xFFFF999A9D),
                        ),
                      ),
                      TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          color: Color(0xFFFF614FE0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 150.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Use the SizeTransitionPage route for animation
                  Navigator.of(context).push(
                    SizeTransitionPage(
                      Congratulation(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF614FE0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 16, color: Color(0xFFFEFEFE)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
