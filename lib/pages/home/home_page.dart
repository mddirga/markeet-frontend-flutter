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

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'Semua Produk',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(
                    color: subtitleColor,
                  ),
                ),
                child: Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(
                    color: subtitleColor,
                  ),
                ),
                child: Text(
                  'Training',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(
                    color: subtitleColor,
                  ),
                ),
                child: Text(
                  'Basketball',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(
                    color: subtitleColor,
                  ),
                ),
                child: Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(
                    color: subtitleColor,
                  ),
                ),
                child: Text(
                  'Tennis',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
      ],
    );
  }
}
