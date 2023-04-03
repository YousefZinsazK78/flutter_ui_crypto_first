import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/screen/crypto_onboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wallet crypto',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const CryptoOnboardPage(),
    );
  }
}
