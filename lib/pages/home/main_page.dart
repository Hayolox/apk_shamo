import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/wishlist_page.dart';
import 'package:shamo/theme.dart';

void main() {
  runApp(const mainPage());
}

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int CurrentIndex = 0;
  Widget cardButton() {
    return FloatingActionButton(
      backgroundColor: secondaryColor,
      onPressed: () {},
      child: Image.asset(
        'assets/icon_cart.png',
        width: 20,
      ),
    );
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: CurrentIndex,
          onTap: (value) {
            setState(() {
              CurrentIndex = value;
            });
          },
          backgroundColor: backgroundColor4,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/icon_home.png',
                    width: 21,
                    color: CurrentIndex == 0
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10, right: 40),
                  child: Image.asset(
                    'assets/icon_chat.png',
                    width: 20,
                    color: CurrentIndex == 1
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10, left: 40),
                  child: Image.asset(
                    'assets/icon_wishlist.png',
                    width: 20,
                    color: CurrentIndex == 2
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/icon_profile.png',
                    width: 18,
                    color: CurrentIndex == 3
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  List Body = [
    const HomePage(),
    const ChatPage(),
    const WishlistPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor1,
        floatingActionButton: cardButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomNav(),
        body: Body[CurrentIndex]);
  }
}
