import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/config/config.dart';
import 'package:flutter_crypto_wallet/screen/crypto_main_page.dart';

class CryptoOnboardPage extends StatelessWidget {
  const CryptoOnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: mediaQuery.height,
        width: mediaQuery.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  Positioned(
                    top: 120,
                    left: 80,
                    child: Image.asset(
                      "images/flower_img.png",
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 25,
                    child: Text(
                      "*",
                      style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    right: 150,
                    child: Text(
                      "/",
                      style: TextStyle(
                        fontSize: 120,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    right: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.pink[100],
                    ),
                  ),
                  const Positioned(
                    top: 150,
                    left: 10,
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    right: 30,
                    child: Icon(
                      Icons.star,
                      color: Colors.greenAccent[100],
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: RichText(
                        text: TextSpan(
                          text: "Earn Money\n",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text: "Trade Crypto\n",
                            ),
                            TextSpan(
                              text: "Spend Cash\n",
                            ),
                            TextSpan(
                              text: "Anywhere",
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: 50,
              width: mediaQuery.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CryptoMainPage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  "Exchange",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
