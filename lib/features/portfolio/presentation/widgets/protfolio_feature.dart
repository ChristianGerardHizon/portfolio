import 'package:flutter/material.dart';

import '../../../../main.dart';

class PortfolioFeature extends StatelessWidget {
  const PortfolioFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      padding: buildHeaderPadding(screen),
      color: const Color(0xFF121214),
      height: screen.height - 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///
          ///

          Text(
            "Hello, I'm",
            style: TextStyle(
              fontSize: screen.width < 550 ? 25 : 40,
              color: Colors.white,
            ),
          ),

          ///
          ///
          ///
          const SizedBox(height: 8),
          Text(
            "Christian Gerard Hizon",
            style: TextStyle(
              fontSize: screen.width < 550 ? 40 : 80,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          ///
          ///
          ///
          const SizedBox(height: 8),
          Text(
            "Website Developer & Mobile Developer",
            style: TextStyle(
              fontSize: screen.width < 550 ? 22 : 40,
              color: Colors.white,
            ),
          ),

          ///
          ///
          ///
          const SizedBox(height: 22),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.all(18)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: Text(
              "Hire me",
              style: TextStyle(
                fontSize: screen.width < 550 ? 25 : 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
