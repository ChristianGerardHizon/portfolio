import 'package:flutter/material.dart';

import '../../../../main.dart';

class PortfolioSkills extends StatelessWidget {
  const PortfolioSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final skills = [
      SkillData(
        icon: const Center(child: FlutterLogo(size: 100)),
        name: 'Flutter',
      ),
      SkillData(
        icon: Center(
          child: Image.asset("assets/skills/shopify_logo.png", height: 100),
        ),
        name: 'Shopify',
      ),
      SkillData(
        icon: Center(
          child: Image.asset("assets/skills/firebase_logo.png", height: 100),
        ),
        name: 'Firebase',
      ),
      SkillData(
        icon: Center(
          child: Image.asset("assets/skills/opencart_logo.png", height: 100),
        ),
        name: 'Opencart',
      ),
      SkillData(
        icon: Center(
          child: Image.asset("assets/skills/angular_logo.png", height: 100),
        ),
        name: 'Angular',
      ),
    ];

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
            'Skills',
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
            "These are the languges and systems I'm very familiar with.",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),

          ///
          /// Content
          ///
          const SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: _calculateGrideCount(screenSize),
            childAspectRatio: 6 / 2,
            mainAxisSpacing: 50,
            crossAxisSpacing: 8,
            children: List.generate(skills.length, (index) {
              final skill = skills[index];
              return Row(
                children: [
                  Expanded(flex: 3, child: skill.icon),
                  Expanded(
                      flex: 5,
                      child: Text(
                        skill.name,
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ))
                ],
              );
            }),
          ),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

int _calculateGrideCount(Size screenSize) {
  final width = screenSize.width;

  if (width < 700) {
    return 1;
  } else if (width < 1200) {
    return 2;
  } else {
    return 3;
  }
}

class SkillData {
  final Widget icon;
  final String name;

  SkillData({required this.icon, required this.name});
}
