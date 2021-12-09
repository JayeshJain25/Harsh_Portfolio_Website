import 'package:flutter/material.dart';

class ExploreDrawer extends StatefulWidget {
  final List<GlobalKey> keys;
  ExploreDrawer(this.keys);

  @override
  _ExploreDrawerState createState() => _ExploreDrawerState();
}

class _ExploreDrawerState extends State<ExploreDrawer> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF222322),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Text(
                  'Harsh Jain',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: const Color(0xff3cbc88),
                  thickness: 2,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
                  Scrollable.ensureVisible(
                    widget.keys[0].currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                      color: _isHovering[0]
                          ? const Color(0xff3cbc88)
                          : Colors.white,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
                  Scrollable.ensureVisible(
                    widget.keys[1].currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'ABOUT ME',
                  style: TextStyle(
                      color: _isHovering[1]
                          ? const Color(0xff3cbc88)
                          : Colors.white,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
                  Scrollable.ensureVisible(
                    widget.keys[2].currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'SKILLS',
                  style: TextStyle(
                      color: _isHovering[2]
                          ? const Color(0xff3cbc88)
                          : Colors.white,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
                  Scrollable.ensureVisible(
                    widget.keys[3].currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'PORTFOLIO',
                  style: TextStyle(
                      color: _isHovering[3]
                          ? const Color(0xff3cbc88)
                          : Colors.white,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[4] = true : _isHovering[4] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
                  Scrollable.ensureVisible(
                    widget.keys[4].currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'CONTACT',
                  style: TextStyle(
                      color: _isHovering[4]
                          ? const Color(0xff3cbc88)
                          : Colors.white,
                      fontSize: 22),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2021 | Harsh Jain',
                    style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
