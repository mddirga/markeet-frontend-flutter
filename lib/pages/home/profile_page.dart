import 'package:flutter/material.dart';
import 'package:markeet/shared/themes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile Page',
          style: priceTextStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
