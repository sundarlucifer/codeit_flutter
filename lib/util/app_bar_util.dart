import 'package:codeit/screens/profile_screen.dart';
import 'package:flutter/material.dart';

const double _appBarBackgroundHeight = 140.0;
const double _appBarHeight = 65.0;
const double _iconSize = 40.0;
const Color _textColor = Colors.white;

const TextStyle _titleTheme = TextStyle(
  color: _textColor,
  fontWeight: FontWeight.bold,
  fontSize: 24.0,
);

class AppBarUtil extends StatefulWidget {
  @override
  _AppBarUtilState createState() => _AppBarUtilState();
}

class _AppBarUtilState extends State<AppBarUtil>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600))
          ..addListener(() => setState);
    _animationController.repeat();
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: _appBarBackgroundHeight,
      width: size.width,
      child: Stack(
        children: <Widget>[
          CustomPaint(
            size: Size(size.width, _appBarBackgroundHeight),
            painter: AppBarPaint(color: Theme.of(context).primaryColor),
          ),
          _getAppBar(context),
        ],
      ),
    );
  }

  _getAppBar(BuildContext context) {
    return Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            height: _appBarHeight,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () => _openDrawer(context),
                  child: Icon(
                    Icons.menu,
                    size: _iconSize,
                    color: _textColor,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text('HOME', style: _titleTheme),
                  ),
                ),
                GestureDetector(
                  onTap: () => _navigateToProfileScreen(context),
                  child: Icon(
                    Icons.person,
                    size: _iconSize,
                    color: _textColor,
                  ),
                ),
              ],
            ),
          );
  }

  _openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  _navigateToProfileScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }
}

class AppBarPaint extends CustomPainter {
  final Color color;

  AppBarPaint({@required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..quadraticBezierTo(size.width/2, 0, size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
