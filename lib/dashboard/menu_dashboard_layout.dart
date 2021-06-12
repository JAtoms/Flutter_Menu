import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_dashboard/constants.dart';

class MenuDashBoard extends StatefulWidget {
  @override
  _MenuDashBoardState createState() => _MenuDashBoardState();
}

class _MenuDashBoardState extends State<MenuDashBoard> {
  bool isCollapsed = true;
  late double screenHeight, screenWidth;
  final Duration animationDuration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 110),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    ),
                  ),
                ),
                Text(
                  'Roger Hoffman',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'San Francisco, CA',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 60,
                ),

                // MenuItem - Dashboard
                MenuItem(
                  textColor: Colors.white,
                  text: 'Dashboard',
                  icon: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // MenuItem - Message
                MenuItem(
                  textColor: Colors.white54,
                  text: 'Messages',
                  fontWeight: FontWeight.w100,
                  icon: Icon(
                    Icons.message_outlined,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // MenuItem - Utility bills
                MenuItem(
                  textColor: Colors.white54,
                  text: 'Utility Bills',
                  fontWeight: FontWeight.w100,
                  icon: Icon(
                    Icons.receipt_long_outlined,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // MenuItem - Funds Transfer
                MenuItem(
                  textColor: Colors.white54,
                  text: 'Funds Transfer',
                  fontWeight: FontWeight.w100,
                  icon: Icon(
                    Icons.swap_horiz,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // MenuItem - Funds Transfer
                MenuItem(
                  textColor: Colors.white54,
                  text: 'Branches',
                  fontWeight: FontWeight.w100,
                  icon: Icon(
                    Icons.apartment_outlined,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                children: [
                  // MenuItem - Dashboard
                  MenuItem(
                    textColor: Colors.white70,
                    text: 'Log Out',
                    icon: Icon(
                      Icons.logout,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    int _index = 0;
    return AnimatedPositioned(
      duration: animationDuration,
      top: isCollapsed ? 0 : (0.1 * screenHeight),
      bottom: isCollapsed ? 0 : (0.2 * screenWidth),
      left: isCollapsed ? 0 : (0.6 * screenWidth),
      right: isCollapsed ? 0 : (-0.4 * screenWidth),
      child: SafeArea(
        child: Material(
          color: backgroundColor,
          elevation: 6,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          print(isCollapsed);
                          isCollapsed = !isCollapsed;
                        });
                      },
                      child: Icon(
                        isCollapsed ? Icons.menu : Icons.close,
                        color: Colors.white,
                      ),
                    ),
                    Text('My Cards',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Icon(Icons.control_point, color: Colors.white)
                  ],
                ),
                Container(
                  height: 250,
                  child: Container(
                    height: 225,
                    child: PageView(
                      controller: PageController(viewportFraction: 0.9),
                      pageSnapping: true,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (int index) {
                        print(index);
                        setState(() {
                          _index = index;
                          print(_index);
                        });
                      },
                      children: [
                        CardWidget(
                          index1: _index,
                          index2: _index,
                          color: Colors.blue,
                          text: '1',
                        ),
                        CardWidget(
                          index1: _index,
                          index2: _index,
                          color: Colors.yellow,
                          text: '2',
                        ),
                        CardWidget(
                          index1: _index,
                          index2: _index,
                          color: Colors.greenAccent,
                          text: '3',
                        ),
                        CardWidget(
                          index1: _index,
                          index2: _index,
                          color: Colors.redAccent,
                          text: '4',
                        ),
                        CardWidget(
                          index1: _index,
                          index2: _index,
                          color: Colors.purple,
                          text: '5',
                        ),
                        CardWidget(
                          index1: _index,
                          index2: _index,
                          color: Colors.deepPurple,
                          text: '6',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  MenuItem(
      {required this.icon,
      this.textColor = Colors.white,
      required this.text,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 18});

  final Icon icon;
  final String text;
  Color textColor;
  FontWeight fontWeight;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: icon,
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(text,
                style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight)),
          ),
        ),
      ],
    );
  }
}

class CardWidget extends StatefulWidget {
  CardWidget({
    required this.color,
    required this.text,
    required this.index1,
    required this.index2,
  });

  final Color color;
  final String text;
  final int index1, index2;

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    print('1: ${widget.index1}\n 2: ${widget.index2}');
    return Transform.scale(
      scale: widget.index1 == widget.index2 ? 1 : 0.9,
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 100,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(18),
            // boxShadow: [
            //   BoxShadow(
            //       color: color,
            //       blurRadius: 15,
            //       spreadRadius: 0.0,
            //       offset: Offset(-2.0, 2.0))
            // ],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}