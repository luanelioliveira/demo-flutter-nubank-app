import 'package:flutter/material.dart';
import 'package:nubank_app/pages/home/widgets/cards/home_cards.dart';
import 'package:nubank_app/pages/home/widgets/menu_app/menu_app.dart';
import 'package:nubank_app/pages/home/widgets/menu_app/menu_app_bar.dart';
import 'package:nubank_app/pages/home/widgets/menu_bottom/menu_bottom.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const double LIMIT_TOP = .25;
  static const double LIMIT_BOTTOM = .80;

  bool _showMenu;
  int _currentIndex;
  double _yPosition;

  double getTopPositionLimit() {
    return MediaQuery.of(context).size.height * LIMIT_TOP;
  }

  double getBottomPositionLimit() {
    return MediaQuery.of(context).size.height * LIMIT_BOTTOM;
  }

  double getMiddlePosition() {
    return (getBottomPositionLimit() - getTopPositionLimit()) / 2;
  }

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;

    if (_yPosition == null) {
      _yPosition = getTopPositionLimit();
    }

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        children: <Widget>[
          MenuAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                  _yPosition = _showMenu
                      ? getBottomPositionLimit()
                      : getTopPositionLimit();
                });
              }),
          MenuApp(
            top: _screenHeight * .20,
            showMenu: _showMenu,
          ),
          MenuBottom(
            showMenu: _showMenu,
          ),
          HomeCards(
            top: _yPosition,
            showMenu: _showMenu,
            currentIndex: _currentIndex,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (details) {
              setState(() {
                _yPosition += details.delta.dy;

                if (_yPosition < getTopPositionLimit()) {
                  moveToTopPosition();
                }
                if (_yPosition > getBottomPositionLimit()) {
                  moveToBottomPosition();
                }

                if (_yPosition != getBottomPositionLimit() &&
                    details.delta.dy > 0) {
                  if (_yPosition >
                      getTopPositionLimit() + getMiddlePosition() - 120) {
                    moveToBottomPosition();
                  }
                }

                if (_yPosition != getTopPositionLimit() &&
                    details.delta.dy < 0) {
                  if (_yPosition <
                      getBottomPositionLimit() - getMiddlePosition() + 80) {
                    moveToTopPosition();
                  }
                }
              });
            },
          ),
        ],
      ),
    );
  }

  void moveToBottomPosition() {
    _yPosition = getBottomPositionLimit();
    _showMenu = true;
  }

  void moveToTopPosition() {
    _yPosition = getTopPositionLimit();
    _showMenu = false;
  }
}
