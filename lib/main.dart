import 'package:alibimenstyle/ui/pages/auth/congratulation/congratulation.dart';
import 'package:alibimenstyle/ui/pages/auth/phone_number/phone_number.dart';
import 'package:alibimenstyle/ui/pages/auth/phone_number2/phone_number2.dart';
import 'package:alibimenstyle/ui/pages/auth/verification_phone/verification_phone.dart';
import 'package:alibimenstyle/ui/pages/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return PhoneNumber();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'verification_phone',
          builder: (BuildContext context, GoRouterState state) {
            return const VerificationPhone();
          },
        ),
        GoRoute(
          path: 'congratulation',
          builder: (BuildContext context, GoRouterState state) {
            return const Congratulation();
          },
        ),
        GoRoute(
          path: 'phone_number2',
          builder: (BuildContext context, GoRouterState state) {
            return PhoneNumber2();
          },
        ),
        GoRoute(
          path: 'buttonnavigationbar',
          builder: (BuildContext context, GoRouterState state) {
            return BottomNavBar();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
