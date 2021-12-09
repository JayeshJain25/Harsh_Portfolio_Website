import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class BottomBarContents extends StatelessWidget {
  const BottomBarContents({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 0.45,
      width: screenSize.width,
      color: const Color(0xff3cbc88),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: screenSize.height * 0.05,
                bottom: (ResponsiveWidget.isLargeScreen(context) ||
                        ResponsiveWidget.isMediumScreen(context))
                    ? screenSize.height * 0.08
                    : screenSize.height * 0.03),
            child: Text(
              "Contact me",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveWidget.isLargeScreen(context)
                      ? (45 / 1200) * screenSize.width
                      : ResponsiveWidget.isMediumScreen(context)
                          ? (45 / 1000) * screenSize.width
                          : (45 / 800) * screenSize.width),
            ),
          ),
          (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: ResponsiveWidget.isLargeScreen(context)
                          ? screenSize.width * 0.2
                          : screenSize.width * 0.25,
                      height: screenSize.height * 0.15,
                      child: ListTile(
                        leading: Icon(
                          Icons.phone_android_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        title: Text(
                          "Call Us On",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (14 / 1200) * screenSize.width
                                  : (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? (20 / 1000) * screenSize.width
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? (12 / 1000) * screenSize.width
                                          : (25 / 800) * screenSize.width,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "+91 7977364554",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (14 / 1200) * screenSize.width
                                  : (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? (20 / 1000) * screenSize.width
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? (12 / 1000) * screenSize.width
                                          : (25 / 800) * screenSize.width,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      width: ResponsiveWidget.isLargeScreen(context)
                          ? screenSize.width * 0.25
                          : screenSize.width * 0.4,
                      height: screenSize.height * 0.15,
                      child: ListTile(
                        leading: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        title: Text(
                          "Email Us At",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (14 / 1200) * screenSize.width
                                  : (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? (20 / 1000) * screenSize.width
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? (12 / 1000) * screenSize.width
                                          : (25 / 800) * screenSize.width,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "harshkrjain.204@gmail.com",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (14 / 1200) * screenSize.width
                                  : (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? (20 / 1000) * screenSize.width
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? (12 / 1000) * screenSize.width
                                          : (25 / 800) * screenSize.width,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                )
              : Column(
                  children: [
                    Container(
                      width: screenSize.width * 0.8,
                      height: screenSize.height * 0.15,
                      child: ListTile(
                        leading: Icon(
                          Icons.phone_android_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        title: Text(
                          "Call Us On",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (14 / 1200) * screenSize.width
                                  : (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? (20 / 1000) * screenSize.width
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? (12 / 1000) * screenSize.width
                                          : (25 / 800) * screenSize.width,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "+91 7977364554",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (14 / 1200) * screenSize.width
                                  : (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? (20 / 1000) * screenSize.width
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? (12 / 1000) * screenSize.width
                                          : (25 / 800) * screenSize.width,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      width: screenSize.width * 0.8,
                      height: screenSize.height * 0.15,
                      child: ListTile(
                        leading: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        title: Text(
                          "Email Us At",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (14 / 1200) * screenSize.width
                                  : (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? (20 / 1000) * screenSize.width
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? (12 / 1000) * screenSize.width
                                          : (25 / 800) * screenSize.width,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "harshkrjain.204@gmail.com",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? (14 / 1200) * screenSize.width
                                  : (ResponsiveWidget.isMediumScreen(context) &&
                                          screenSize.height >= 1300)
                                      ? (20 / 1000) * screenSize.width
                                      : ResponsiveWidget.isMediumScreen(context)
                                          ? (12 / 1000) * screenSize.width
                                          : (25 / 800) * screenSize.width,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}
