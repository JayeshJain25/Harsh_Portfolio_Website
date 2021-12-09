import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF232322),
      height: screenSize.height,
      width: screenSize.width,
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? screenSize.height * 0.15
                    : ResponsiveWidget.isMediumScreen(context)
                        ? screenSize.height * 0.2
                        : screenSize.height * 0.25,
                width: screenSize.width,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Skills',
                    style: TextStyle(
                        color: const Color(0xFF1f1f1f),
                        fontSize: ResponsiveWidget.isLargeScreen(context)
                            ? (100 / 1200) * screenSize.width
                            : ResponsiveWidget.isMediumScreen(context)
                                ? (100 / 1000) * screenSize.width
                                : (100 / 800) * screenSize.width),
                  ),
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Skills',
                  style: TextStyle(
                      color: const Color(0xff3cbc88),
                      fontSize: ResponsiveWidget.isLargeScreen(context)
                          ? (45 / 1200) * screenSize.width
                          : ResponsiveWidget.isMediumScreen(context)
                              ? (45 / 1000) * screenSize.width
                              : (45 / 800) * screenSize.width),
                ),
              ))
            ],
          ),
          Container(
            height: screenSize.height * 0.55,
            width: screenSize.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Adobe Illustrator",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? (15 / 1200) * screenSize.width
                              : (ResponsiveWidget.isMediumScreen(context) &&
                                      screenSize.height >= 1300)
                                  ? (20 / 1000) * screenSize.width
                                  : ResponsiveWidget.isMediumScreen(context)
                                      ? (12 / 1000) * screenSize.width
                                      : (25 / 800) * screenSize.width,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "70%",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? (12 / 1200) * screenSize.width
                              : (ResponsiveWidget.isMediumScreen(context) &&
                                      screenSize.height >= 1300)
                                  ? (20 / 1000) * screenSize.width
                                  : ResponsiveWidget.isMediumScreen(context)
                                      ? (12 / 1000) * screenSize.width
                                      : (25 / 800) * screenSize.width,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                ),
                LinearProgressIndicator(
                  backgroundColor: const Color(0xFF363737),
                  valueColor: new AlwaysStoppedAnimation<Color>(
                      const Color(0xff3cbc88)),
                  value: 0.7,
                  minHeight: 10,
                ),
              ],
            ),
          ),
          Text(
            "I Am Available For Freelance !",
            style: TextStyle(
                color: Colors.white,
                fontSize: ResponsiveWidget.isLargeScreen(context)
                    ? (45 / 1200) * screenSize.width
                    : ResponsiveWidget.isMediumScreen(context)
                        ? (45 / 1000) * screenSize.width
                        : (45 / 800) * screenSize.width),
          )
        ],
      ),
    );
  }
}
