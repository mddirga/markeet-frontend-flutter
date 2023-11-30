import 'package:flutter/material.dart';
import 'package:markeet/shared/themes.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Notification Page',
          style: primaryTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
