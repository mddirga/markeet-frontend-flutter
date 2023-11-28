import 'package:flutter/material.dart';
import 'package:markeet/shared/themes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Main Page',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
