import 'package:flutter/material.dart';
import 'package:markeet/pages/home/chat_page.dart';
import 'package:markeet/pages/home/home_page.dart';
import 'package:markeet/pages/home/profile_page.dart';
import 'package:markeet/pages/home/wishlist_page.dart';
import 'package:markeet/shared/themes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        elevation: 0,
        child: Image.asset(
          'assets/images/icon_cart.png',
          width: 30,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: backgroundColor3,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/images/icon_home.png',
                  width: 20,
                  color: currentIndex == 0
                      ? primaryColor
                      : const Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/images/icon_chat.png',
                  width: 20,
                  color: currentIndex == 1
                      ? primaryColor
                      : const Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/images/icon_wishlist.png',
                  width: 20,
                  color: currentIndex == 2
                      ? primaryColor
                      : const Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/images/icon_profile.png',
                  width: 20,
                  color: currentIndex == 3
                      ? primaryColor
                      : const Color(0xff808191),
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ChatPage();
        case 2:
          return const WishlistPage();
        case 3:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
