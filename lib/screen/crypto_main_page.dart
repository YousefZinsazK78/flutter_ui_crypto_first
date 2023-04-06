import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/config/config.dart';
import 'package:flutter_crypto_wallet/screen/crypto_trade_page.dart';

import 'crypto_main_widget.dart';

class CryptoMainPage extends StatefulWidget {
  const CryptoMainPage({super.key});

  @override
  State<CryptoMainPage> createState() => _CryptoMainPageState();
}

class _CryptoMainPageState extends State<CryptoMainPage> {
  final pagesList = [
    const CryptoMainWidget(),
    const CryptoMainWidget(),
    const CryptoTradePage(),
    const CryptoMainWidget(),
    const CryptoMainWidget(),
  ];

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesList[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black54,
        selectedItemColor: primaryColor,
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        currentIndex: currentPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
            label: "wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shuffle),
            label: "trade",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration),
            label: "explore",
          ),
        ],
      ),
    );
  }
}
