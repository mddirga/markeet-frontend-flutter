import 'package:flutter/material.dart';
import 'package:markeet/shared/themes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Login Page',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
