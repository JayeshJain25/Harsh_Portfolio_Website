import 'package:explore/widgets/about_widget.dart';
import 'package:explore/widgets/bottom_bar_contents.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/home_widget.dart';
import 'package:explore/widgets/portfolio_widget.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/skill_widget.dart';
import 'package:explore/widgets/top_bar_contents.dart';
import 'package:explore/widgets/web_scrollbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;
  GlobalKey key = GlobalKey();
  GlobalKey key2 = GlobalKey();
  GlobalKey key3 = GlobalKey();
  GlobalKey key4 = GlobalKey();
  GlobalKey key5 = GlobalKey();

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<GlobalKey<State<StatefulWidget>>> listKey = [
      key,
      key2,
      key3,
      key4,
      key5
    ];
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor:
                  Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              title: Text(
                'HARSH JAIN',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity, listKey),
            ),
      drawer: ExploreDrawer(listKey),
      body: WebScrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              HomeWidget(
                screenSize: screenSize,
                key: key,
              ),
              AboutWidget(
                screenSize: screenSize,
                key: key2,
              ),
              SkillWidget(screenSize: screenSize, key: key3),
              PortfolioWidget(
                screenSize: screenSize,
                key: key4,
              ),
              BottomBarContents(
                screenSize: screenSize,
                key: key5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
