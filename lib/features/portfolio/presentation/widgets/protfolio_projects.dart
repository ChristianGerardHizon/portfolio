import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../main.dart';

class PortfolioProjects extends StatelessWidget {
  const PortfolioProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: buildHeaderPadding(screenSize),
      color: const Color(0xFF121214),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///
          /// Header
          ///
          const Text(
            'Projects',
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
            'These are the projects that I have work on and the techonologies I used to build them.',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 120),

          ///
          /// Mushu
          ///
          _ProjectWidget(
            widthBreak: 1000,
            logo: const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  "assets/projects/mushu_logo.webp",
                ),
              ),
            ),
            title: 'Mushu',
            description:
                'A restaurant app, where customers can order their favorite meals and drinks. I was responsible for developing the app and integrating Opencart to manage orders.',
            techonologies: ' Flutter and Opencart ',
            image: Image.asset("assets/projects/mushu.png"),
            resources: [
              ResourceUrl(
                  icon: const FaIcon(FontAwesomeIcons.googlePlay,
                      color: Colors.white),
                  name: 'Google Play',
                  url:
                      "https://play.google.com/store/apps/details?id=com.stratiumsoftwaregroup.opencartmobile"),
              ResourceUrl(
                  icon: const FaIcon(FontAwesomeIcons.appleAlt,
                      color: Colors.white),
                  name: 'Apple Play Store',
                  url: "https://apps.apple.com/ph/app/mushu/id1527409900"),
              ResourceUrl(
                  icon:
                      const FaIcon(FontAwesomeIcons.globe, color: Colors.white),
                  name: 'Website',
                  url: "https://mushu.ph")
            ],
          ),

          const Divider(height: 180, color: Colors.grey, thickness: .4),

          ///
          /// Juanride
          ///
          _ProjectWidget(
            widthBreak: 1400,
            logo: const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage:
                    AssetImage("assets/projects/juanride_logo.png"),
              ),
            ),
            title: 'JuanRide',
            description:
                'For Bacolod based food delivery buinsess Juanride. An online website together with an integrated order management system to help in queing orders. I was responsible for the front end of both Shopify website, the Order Front System and heling with implementing Features for the backend.',
            techonologies: 'Angular 5, AWS Lambda, Serverless and Shopify',
            image: Image.asset("assets/projects/juanrideph.jpg",
                fit: BoxFit.fitWidth),
          ),

          const Divider(height: 180, color: Colors.grey, thickness: .4),

          ///
          /// School SOS
          ///
          _ProjectWidget(
            widthBreak: 1200,
            logo: const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage("assets/projects/school_sos_logo.webp"),
              ),
            ),
            title: 'School SOS',
            description:
                'Instantly connect students and teachers to school administrators and law enforcement officials through an easy-to-use mobile app, enabling them to report events in real time directly from their smartphone or tablet. I was responsible for developing the mobile app from using Flutter and Firebase',
            techonologies: 'Flutter, Angular 5, Node JS and Firebase',
            image: SizedBox(
              width: 750,
              child: Image.asset("assets/projects/school_sos.png"),
            ),
            resources: [
              ResourceUrl(
                  icon: const FaIcon(FontAwesomeIcons.googlePlay,
                      color: Colors.white),
                  name: 'Google Play',
                  url:
                      "https://play.google.com/store/apps/details?id=com.stratiumsoftware.school_sos_system_vandamme&hl=en&gl=US"),
              ResourceUrl(
                  icon: const FaIcon(FontAwesomeIcons.appleAlt,
                      color: Colors.white),
                  name: 'Apple Play Store',
                  url:
                      "https://apps.apple.com/eg/app/the-sos-system/id1494840349"),
              ResourceUrl(
                  icon:
                      const FaIcon(FontAwesomeIcons.globe, color: Colors.white),
                  name: 'Website',
                  url: "https://www.school-sos.com/")
            ],
          ),
        ],
      ),
    );
  }
}

class _ProjectWidget extends StatelessWidget {
  final String title;
  final Widget logo;
  final String description;
  final String techonologies;
  final Widget image;
  final List<ResourceUrl>? resources;
  final double widthBreak;

  const _ProjectWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.techonologies,
    required this.image,
    required this.logo,
    this.resources,
    this.widthBreak = 0,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    final content = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        logo,
        const SizedBox(height: 50),

        /// Project Title
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 12),
        // Project Description

        SizedBox(
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalDivider(color: Colors.white54),
                const SizedBox(width: 14),
                Flexible(
                  child: Text(
                    description,
                    style: const TextStyle(
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

        const SizedBox(height: 40),
        const Text(
          "Technologies used: ",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          techonologies,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        ..._buildResources(resources)
      ],
    );

    if (screenSize.width < widthBreak) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          content,
          const SizedBox(height: 20),
          SizedBox(height: 700, child: image),
        ],
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 4, child: content),
          const Spacer(),
          SizedBox(height: 700, width: 600, child: image)
        ],
      );
    }
  }

  List<Widget> _buildResources(List<ResourceUrl>? resources) {
    if (resources == null) {
      return [];
    }
    return [
      const SizedBox(height: 40),
      const Text(
        "Available on: ",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 22),
      ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: resources.length,
          itemBuilder: (context, index) {
            final resource = resources[index];
            final icon = resource.icon;
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: TextButton(
                  onPressed: () => launch(
                        resource.url,
                        forceSafariVC: true,
                        forceWebView: true,
                      ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        if (icon != null) icon,
                        if (icon != null) const SizedBox(width: 25),
                        Text(
                          resource.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )),
            );
          }),
    ];
  }
}

class ResourceUrl {
  String name;
  String url;
  Widget? icon;

  ResourceUrl({this.icon, required this.name, required this.url});
}
