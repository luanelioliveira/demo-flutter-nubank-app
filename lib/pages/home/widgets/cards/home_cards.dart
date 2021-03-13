import 'package:flutter/material.dart';
import 'package:nubank_app/pages/home/widgets/cards/account/account_card.dart';
import 'package:nubank_app/pages/home/widgets/cards/credit/credit_card.dart';
import 'package:nubank_app/pages/home/widgets/cards/rewards/rewards_card.dart';

import 'my_dots_app.dart';

class HomeCards extends StatefulWidget {
  final double top;
  final bool showMenu;
  final int currentIndex;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;

  const HomeCards(
      {Key key,
      this.top,
      this.onChanged,
      this.onPanUpdate,
      this.showMenu,
      this.currentIndex})
      : super(key: key);

  @override
  _HomeCardsState createState() => _HomeCardsState();
}

class _HomeCardsState extends State<HomeCards> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 1000.0, end: 700.0);
    delayAnimation();
  }

  Future<void> delayAnimation() async {
    await Future.delayed(Duration(milliseconds: 0), () {
      setState(() {
        _tween = Tween<double>(begin: 1000.0, end: 0.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        MyDotsApp(
            top: _screenHeight * .70,
            showMenu: widget.showMenu,
            currentIndex: widget.currentIndex),
        TweenAnimationBuilder<double>(
            tween: _tween,
            duration: Duration(milliseconds: 250),
            curve: Curves.easeOutExpo,
            builder: (context, value, child) {
              return AnimatedPositioned(
                duration: Duration(milliseconds: 250),
                curve: Curves.easeOut,
                top: widget.top,
                height: _screenHeight * .45,
                left: value,
                right: value * -1,
                child: GestureDetector(
                  onPanUpdate: widget.onPanUpdate,
                  child: PageView(
                    onPageChanged: widget.onChanged,
                    physics: widget.showMenu
                        ? NeverScrollableScrollPhysics()
                        : BouncingScrollPhysics(),
                    children: <Widget>[
                      CreditCard(),
                      AccountCard(),
                      RewardsCard(),
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
