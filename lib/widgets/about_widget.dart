import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1f1f1f),
      height: screenSize.height,
      width: screenSize.width,
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: screenSize.height * 0.2,
                width: screenSize.width,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'About',
                    style: TextStyle(
                        color: const Color(0xFF222322),
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
                  'About Me',
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ResponsiveWidget.isSmallScreen(context)
                  ? const SizedBox()
                  : Stack(
                      children: [
                        Container(
                          height: screenSize.height * 0.7,
                          width: screenSize.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                              border: Border.all(
                                  color: const Color(0xff3cbc88),
                                  width: screenSize.width * 0.005)),
                        ),
                      ],
                    ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      text: "My name is ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? (15 / 1200) * screenSize.width
                              : ResponsiveWidget.isMediumScreen(context)
                                  ? (15 / 1000) * screenSize.width
                                  : (15 / 800) * screenSize.width,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Harsh Jain',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (15 / 1200) * screenSize.width
                                  : ResponsiveWidget.isMediumScreen(context)
                                      ? (15 / 1000) * screenSize.width
                                      : (15 / 800) * screenSize.width,
                              color: const Color(0xff3cbc88),
                              fontWeight: FontWeight.bold),
                        )
                      ])),
                  Container(
                    width: screenSize.width * 0.3,
                    child: Text(
                      "I'm Professional Graphic designer.and i am very passionate and dedicated to my work.with 10 years as a professional graphic designer.I have acquired the skills and knowledge necessary to make your project a success.i enjoy every step of design process.from discussion and collaboration to concept and execution, but i find the most in seeing the finished product do everything for you that it was created to do.",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? (10 / 1200) * screenSize.width
                              : ResponsiveWidget.isMediumScreen(context)
                                  ? (10 / 1000) * screenSize.width
                                  : (10 / 800) * screenSize.width,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
