import 'package:flutter/material.dart';

const _headerItemPadding = EdgeInsets.symmetric(horizontal: 22);
const _headerItemStyle = TextStyle(fontSize: 15, color: Colors.white);

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(
        top: 20,
        right: 80,
        bottom: 20,
        left: screenSize.width < 1000 ? 20 : 200,
      ),
      height: 80,
      color: const Color(0xFF202024),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Christian Hizon',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          const Spacer(),

          ///
          ///
          ///
          Padding(
            padding: _headerItemPadding,
            child: TextButton(
                onPressed: () {},
                child: const Text('About Me', style: _headerItemStyle)),
          ),

          ///
          ///
          ///
          Padding(
            padding: _headerItemPadding,
            child: TextButton(
                onPressed: () {},
                child: const Text('Skills', style: _headerItemStyle)),
          ),

          ///
          ///
          ///
          Padding(
            padding: _headerItemPadding,
            child: TextButton(
                onPressed: () {},
                child: const Text('Projects', style: _headerItemStyle)),
          ),

          const Spacer(flex: 10),

          ///
          ///
          ///
          Padding(
            padding: _headerItemPadding,
            child: TextButton(
                onPressed: () {},
                child: const Text('Contact Me', style: _headerItemStyle)),
          ),
        ],
      ),
    );
  }
}
