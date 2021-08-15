import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'features/portfolio/presentation/pages/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        const PortfolioPage(),
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(500, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
    );
  }
}

EdgeInsets buildHeaderPadding(Size screen) {
  final width = screen.width;

  double horizontal = 200;

  if (width < 1000) {
    horizontal = 60;
  }

  return EdgeInsets.symmetric(horizontal: horizontal, vertical: 80);
}
