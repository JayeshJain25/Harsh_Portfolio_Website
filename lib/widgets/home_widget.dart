import 'dart:math' as math;

import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.height,
        ),
        ResponsiveWidget.isSmallScreen(context)
            ? SizedBox()
            : Positioned(
                top: (ResponsiveWidget.isMediumScreen(context) &&
                        screenSize.height >= 1300)
                    ? 450
                    : 250,
                child: Transform.rotate(
                  angle: -math.pi / 15,
                  child: Text(
                    'DESIGNER',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: ResponsiveWidget.isLargeScreen(context)
                          ? (220 / 1200) * screenSize.width
                          : (220 / 1000) * screenSize.width,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Color(0xFF2c2c2c),
                    ),
                  ),
                ),
              ),
        Positioned(
          top: screenSize.height * 0.4,
          left: screenSize.width * 0.17,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I\'m a',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: ResponsiveWidget.isLargeScreen(context)
                        ? (50 / 1200) * screenSize.width
                        : ResponsiveWidget.isMediumScreen(context)
                            ? (50 / 1000) * screenSize.width
                            : (50 / 800) * screenSize.width,
                    color: Color(0xFF484948),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'GRAPHIC',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: ResponsiveWidget.isLargeScreen(context)
                        ? (70 / 1200) * screenSize.width
                        : ResponsiveWidget.isMediumScreen(context)
                            ? (70 / 1000) * screenSize.width
                            : (70 / 800) * screenSize.width,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text.rich(TextSpan(
                  text: 'DESIGNER',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: ResponsiveWidget.isLargeScreen(context)
                          ? (70 / 1200) * screenSize.width
                          : ResponsiveWidget.isMediumScreen(context)
                              ? (70 / 1000) * screenSize.width
                              : (70 / 800) * screenSize.width,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: <InlineSpan>[
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? (50 / 1200) * screenSize.width
                              : ResponsiveWidget.isMediumScreen(context)
                                  ? (50 / 1000) * screenSize.width
                                  : (50 / 800) * screenSize.width,
                          color: const Color(0xff3cbc88),
                          fontWeight: FontWeight.bold),
                    )
                  ]))
            ],
          ),
        ),
      ],
    );
  }
}
