import 'package:flutter/material.dart';
import 'package:markeet/shared/themes.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Chat Page',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
