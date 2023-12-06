import 'package:flutter/material.dart';
import 'package:markeet/shared/themes.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: 10,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/image_shoes.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Rp 340.000',
                  style: priceTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
