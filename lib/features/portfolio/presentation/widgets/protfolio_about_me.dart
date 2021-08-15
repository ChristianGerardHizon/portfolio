import 'package:flutter/material.dart';

import '../../../../main.dart';

class PortfolioAboutMe extends StatelessWidget {
  const PortfolioAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: buildHeaderPadding(screenSize),
      color: const Color(0xFF202024),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 50),

          Center(
            child: CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage(
                "assets/about_me/me.jpg",
              ),
            ),
          ),

          ///
          /// Subheader
          ///
          SizedBox(height: 60),
          Center(
            child: SizedBox(
              width: 900,
              child: Text(
                "Since beggining my journey as a web & mobile developer few years ago, I've worked several projects, taught students, and collaborated with talented people to create applications for both business and consumer use. I'm quietly confident, naturaly curious and perpetually working on improving my skills to solve problems one at a time.",
                style: TextStyle(
                  fontSize: 22,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  wordSpacing: 4,
                ),
              ),
            ),
          ),

          SizedBox(height: 50),
        ],
      ),
    );
  }
}
