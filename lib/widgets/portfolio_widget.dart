import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({
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
                    'Portfolio',
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
                  'Portfolio',
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
        ],
      ),
    );
  }
}
