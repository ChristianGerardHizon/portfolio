import 'package:flutter/material.dart';
import 'package:personal_portfolio/features/portfolio/presentation/widgets/portfolio_contact_me.dart';
import 'package:personal_portfolio/features/portfolio/presentation/widgets/protfolio_about_me.dart';
import 'package:personal_portfolio/features/portfolio/presentation/widgets/protfolio_projects.dart';

import '../widgets/portfolio_header.dart';
import '../widgets/protfolio_feature.dart';
import '../widgets/protfolio_skills.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: const [
            ///
            /// Header
            ///
            PortfolioHeader(),

            ///
            /// Feature
            ///
            PortfolioFeature(),

            ///
            /// About Me
            ///
            PortfolioAboutMe(),

            ///
            /// Skills
            ///
            PortfolioSkills(),

            ///
            /// Projects
            ///
            PortfolioProjects(),

            ///
            /// Contact Me
            ///
            PortfolioContactMe(),
          ],
        ),
      ),
    );
  }
}
