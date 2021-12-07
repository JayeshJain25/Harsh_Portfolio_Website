import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                          height: (ResponsiveWidget.isMediumScreen(context) &&
                                  screenSize.height >= 1300)
                              ? screenSize.height * 0.4
                              : screenSize.height * 0.7,
                          width: screenSize.width * 0.3,
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height:
                                  (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? screenSize.height * 0.3
                                      : screenSize.height * 0.5,
                              width: screenSize.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: const Color(0xff3cbc88),
                                      width: screenSize.width * 0.005)),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 100,
                          bottom: 140,
                          child: Image.asset(
                            "assets/images/harsh_photo.jpg",
                            height: (ResponsiveWidget.isMediumScreen(context) &&
                                    screenSize.height >= 1300)
                                ? screenSize.height * 0.3
                                : screenSize.height * 0.5,
                            width: screenSize.width * 0.25,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
              Container(
                padding: ResponsiveWidget.isSmallScreen(context)
                    ? EdgeInsets.all(8)
                    : EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(
                        text: "My name is ",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: ResponsiveWidget.isLargeScreen(context)
                                ? (15 / 1200) * screenSize.width
                                : (ResponsiveWidget.isMediumScreen(context) &&
                                        screenSize.height >= 1300)
                                    ? (25 / 1000) * screenSize.width
                                    : ResponsiveWidget.isMediumScreen(context)
                                        ? (15 / 1000) * screenSize.width
                                        : (45 / 800) * screenSize.width,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Harsh Jain',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize:
                                    ResponsiveWidget.isLargeScreen(context)
                                        ? (15 / 1200) * screenSize.width
                                        : (ResponsiveWidget.isMediumScreen(
                                                    context) &&
                                                screenSize.height >= 1300)
                                            ? (25 / 1000) * screenSize.width
                                            : ResponsiveWidget.isMediumScreen(
                                                    context)
                                                ? (15 / 1000) * screenSize.width
                                                : (45 / 800) * screenSize.width,
                                color: const Color(0xff3cbc88),
                                fontWeight: FontWeight.bold),
                          )
                        ])),
                    Container(
                      width: ResponsiveWidget.isSmallScreen(context)
                          ? screenSize.width * 0.9
                          : screenSize.width * 0.4,
                      margin: EdgeInsets.only(top: screenSize.height * 0.03),
                      child: Text(
                        "I'm Professional Graphic designer.and i am very passionate and dedicated to my work.with 10 years as a professional graphic designer.I have acquired the skills and knowledge necessary to make your project a success.i enjoy every step of design process.from discussion and collaboration to concept and execution, but i find the most in seeing the finished product do everything for you that it was created to do.",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: ResponsiveWidget.isLargeScreen(context)
                                ? (12 / 1200) * screenSize.width
                                : (ResponsiveWidget.isMediumScreen(context) &&
                                        screenSize.height >= 1300)
                                    ? (20 / 1000) * screenSize.width
                                    : ResponsiveWidget.isMediumScreen(context)
                                        ? (15 / 1000) * screenSize.width
                                        : (25 / 800) * screenSize.width,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                        width: ResponsiveWidget.isSmallScreen(context)
                            ? screenSize.width * 0.9
                            : screenSize.width * 0.4,
                        margin: EdgeInsets.only(top: screenSize.height * 0.03),
                        child: Row(
                          mainAxisAlignment:
                              ResponsiveWidget.isSmallScreen(context)
                                  ? MainAxisAlignment.spaceEvenly
                                  : MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: ResponsiveWidget.isLargeScreen(
                                              context)
                                          ? (12 / 1200) * screenSize.width
                                          : (ResponsiveWidget.isMediumScreen(
                                                      context) &&
                                                  screenSize.height >= 1300)
                                              ? (20 / 1000) * screenSize.width
                                              : ResponsiveWidget.isMediumScreen(
                                                      context)
                                                  ? (12 / 1000) *
                                                      screenSize.width
                                                  : (25 / 800) *
                                                      screenSize.width,
                                      color: const Color(0xff3cbc88),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Harsh Jain",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: ResponsiveWidget.isLargeScreen(
                                              context)
                                          ? (12 / 1200) * screenSize.width
                                          : (ResponsiveWidget.isMediumScreen(
                                                      context) &&
                                                  screenSize.height >= 1300)
                                              ? (20 / 1000) * screenSize.width
                                              : ResponsiveWidget.isMediumScreen(
                                                      context)
                                                  ? (12 / 1000) *
                                                      screenSize.width
                                                  : (25 / 800) *
                                                      screenSize.width,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.05,
                                ),
                                Text(
                                  "Country",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: ResponsiveWidget.isLargeScreen(
                                              context)
                                          ? (12 / 1200) * screenSize.width
                                          : (ResponsiveWidget.isMediumScreen(
                                                      context) &&
                                                  screenSize.height >= 1300)
                                              ? (20 / 1000) * screenSize.width
                                              : ResponsiveWidget.isMediumScreen(
                                                      context)
                                                  ? (12 / 1000) *
                                                      screenSize.width
                                                  : (25 / 800) *
                                                      screenSize.width,
                                      color: const Color(0xff3cbc88),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "India",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: ResponsiveWidget.isLargeScreen(
                                              context)
                                          ? (12 / 1200) * screenSize.width
                                          : (ResponsiveWidget.isMediumScreen(
                                                      context) &&
                                                  screenSize.height >= 1300)
                                              ? (20 / 1000) * screenSize.width
                                              : ResponsiveWidget.isMediumScreen(
                                                      context)
                                                  ? (12 / 1000) *
                                                      screenSize.width
                                                  : (25 / 800) *
                                                      screenSize.width,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Phone",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: ResponsiveWidget.isLargeScreen(
                                              context)
                                          ? (12 / 1200) * screenSize.width
                                          : (ResponsiveWidget.isMediumScreen(
                                                      context) &&
                                                  screenSize.height >= 1300)
                                              ? (20 / 1000) * screenSize.width
                                              : ResponsiveWidget.isMediumScreen(
                                                      context)
                                                  ? (12 / 1000) *
                                                      screenSize.width
                                                  : (25 / 800) *
                                                      screenSize.width,
                                      color: const Color(0xff3cbc88),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "+91 7977364554",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: ResponsiveWidget.isLargeScreen(
                                              context)
                                          ? (12 / 1200) * screenSize.width
                                          : (ResponsiveWidget.isMediumScreen(
                                                      context) &&
                                                  screenSize.height >= 1300)
                                              ? (20 / 1000) * screenSize.width
                                              : ResponsiveWidget.isMediumScreen(
                                                      context)
                                                  ? (12 / 1000) *
                                                      screenSize.width
                                                  : (25 / 800) *
                                                      screenSize.width,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.05,
                                ),
                                Text(
                                  "Email",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: ResponsiveWidget.isLargeScreen(
                                              context)
                                          ? (12 / 1200) * screenSize.width
                                          : (ResponsiveWidget.isMediumScreen(
                                                      context) &&
                                                  screenSize.height >= 1300)
                                              ? (20 / 1000) * screenSize.width
                                              : ResponsiveWidget.isMediumScreen(
                                                      context)
                                                  ? (12 / 1000) *
                                                      screenSize.width
                                                  : (25 / 800) *
                                                      screenSize.width,
                                      color: const Color(0xff3cbc88),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "harshkrjain.204@gmail.com",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: ResponsiveWidget.isLargeScreen(
                                              context)
                                          ? (12 / 1200) * screenSize.width
                                          : (ResponsiveWidget.isMediumScreen(
                                                      context) &&
                                                  screenSize.height >= 1300)
                                              ? (20 / 1000) * screenSize.width
                                              : ResponsiveWidget.isMediumScreen(
                                                      context)
                                                  ? (12 / 1000) *
                                                      screenSize.width
                                                  : (25 / 800) *
                                                      screenSize.width,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        )),
                    Container(
                      width: ResponsiveWidget.isSmallScreen(context)
                          ? screenSize.width * 0.9
                          : screenSize.width * 0.4,
                      margin: EdgeInsets.only(top: screenSize.height * 0.03),
                      child: Column(
                        children: [
                          Text(
                            "Education",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize:
                                    ResponsiveWidget.isLargeScreen(context)
                                        ? (12 / 1200) * screenSize.width
                                        : (ResponsiveWidget.isMediumScreen(
                                                    context) &&
                                                screenSize.height >= 1300)
                                            ? (20 / 1000) * screenSize.width
                                            : ResponsiveWidget.isMediumScreen(
                                                    context)
                                                ? (12 / 1000) * screenSize.width
                                                : (25 / 800) * screenSize.width,
                                color: const Color(0xff3cbc88),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Pursuing Higher Secondary Education",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize:
                                    ResponsiveWidget.isLargeScreen(context)
                                        ? (12 / 1200) * screenSize.width
                                        : (ResponsiveWidget.isMediumScreen(
                                                    context) &&
                                                screenSize.height >= 1300)
                                            ? (20 / 1000) * screenSize.width
                                            : ResponsiveWidget.isMediumScreen(
                                                    context)
                                                ? (12 / 1000) * screenSize.width
                                                : (25 / 800) * screenSize.width,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "College Name",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize:
                                    ResponsiveWidget.isLargeScreen(context)
                                        ? (12 / 1200) * screenSize.width
                                        : (ResponsiveWidget.isMediumScreen(
                                                    context) &&
                                                screenSize.height >= 1300)
                                            ? (20 / 1000) * screenSize.width
                                            : ResponsiveWidget.isMediumScreen(
                                                    context)
                                                ? (12 / 1000) * screenSize.width
                                                : (25 / 800) * screenSize.width,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: ResponsiveWidget.isSmallScreen(context)
                          ? screenSize.width * 0.9
                          : screenSize.width * 0.4,
                      margin: EdgeInsets.only(top: screenSize.height * 0.03),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () async {
                              await launch(
                                  "https://www.instagram.com/harsh.jain204/");
                            },
                            child: Container(
                              padding: EdgeInsets.all(7.0),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.white,
                                    width: screenSize.width * 0.0005),
                              ),
                              child: Image.asset(
                                "assets/images/instagram.png",
                                color: const Color(0xff3cbc88),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
