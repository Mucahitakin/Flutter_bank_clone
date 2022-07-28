import 'package:akbank_clone/pages/home/home_page/PageContent.dart';
import 'package:akbank_clone/pages/trade/tradePage.dart';
import 'package:flutter/material.dart';

import '../discover/discover_Page/discover_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [pageContent(), TradePage(), DiscoverPage()];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        elevation: 10,
        iconSize: 25,
        selectedFontSize: 15,
        fixedColor: Colors.red,
        backgroundColor: Colors.grey[300],
        items: const [
          BottomNavigationBarItem(
            label: 'Anasayfa',
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Transferler',
            icon: Icon(Icons.compare_arrows_outlined, color: Colors.black54),
            activeIcon: Icon(
              Icons.compare_arrows_outlined,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Keşfet',
            icon: Icon(Icons.explore, color: Colors.black54),
            activeIcon: Icon(
              Icons.explore,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

// IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.home),
          //   color: Colors.red,
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.compare_arrows_outlined),
          // ),
          // // ElevatedButton(
          // //   onPressed: () {
          // //     Navigator.push(context,
          // //         MaterialPageRoute(builder: (context) => TradePage()));
          // //   },
          // //   child: Icon(Icons.abc),
          // //   style: ElevatedButton.styleFrom(
          // //       primary: Colors.white, onPrimary: Colors.red, elevation: 0),
          // // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.near_me_rounded),
          // ),