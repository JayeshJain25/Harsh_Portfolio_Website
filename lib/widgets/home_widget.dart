import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Container(
          height: screenSize.height,
        ),
        ResponsiveWidget.isSmallScreen(context) ? SizedBox() : Positioned(
          top: 250,
          child: Transform.rotate(
            angle: -math.pi / 15,
            child: Text(
              'DESIGNER',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 300,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = Color(0xFF2c2c2c),
              ),
            ),
          ),
        ),
        Positioned(
          top: screenSize.height*0.4,
          left: screenSize.width*0.17,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I\'m a',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 50,
                    color: Color(0xFF484948),
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'GRAPHIC',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 70,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text.rich(
                  TextSpan(
                      text:   'DESIGNER',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 70,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),children: <InlineSpan>[
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 70,
                          color: const Color(0xFFf76752),
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ]
                  )
              )
            ],
          ),
        ),
      ],
    );
  }
}
