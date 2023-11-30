import 'package:flutter/material.dart';
import 'package:markeet/shared/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Guest1234',
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '@guest1234',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/notification');
              },
              child: Badge(
                label: Text(
                  '4',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: regular,
                  ),
                ),
                child: const Icon(
                  Icons.notifications_none_rounded,
                  size: 26,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
      ],
    );
  }
}
