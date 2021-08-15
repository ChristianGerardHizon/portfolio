import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../main.dart';

class PortfolioContactMe extends StatelessWidget {
  const PortfolioContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: buildHeaderPadding(screenSize),
      color: const Color(0xFF202024),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),

          ///
          /// Header
          ///
          const Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          ///
          /// Subheader
          ///
          const SizedBox(height: 15),
          const Text(
            "I’m always open to discussing product design work or partnership opportunities.",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),

          LayoutBuilder(builder: (context, constraints) {
            return Text(screenSize.width.toStringAsFixed(2));
          }),

          const SizedBox(height: 50),

          ///
          /// Email
          ///
          SizedBox(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FaIcon(FontAwesomeIcons.mailBulk, color: Colors.white),
                  SizedBox(width: 14),
                  Flexible(
                    child: Text(
                      'dev.christianhizon@protonmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          ///
          /// Linkedin
          ///
          SizedBox(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                  SizedBox(width: 14),
                  Flexible(
                    child: Text(
                      'linkedin.com/in/christiangerardhizon',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
