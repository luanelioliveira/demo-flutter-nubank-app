import 'package:flutter/material.dart';
import 'package:nubank_app/pages/home/widgets/menu_bottom/menu_bottom_items.dart';

class MenuBottom extends StatefulWidget {
  final bool showMenu;

  const MenuBottom({Key key, this.showMenu}) : super(key: key);

  @override
  MenuBottomState createState() => MenuBottomState();
}

class MenuBottomState extends State<MenuBottom> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150.0, end: 150.0);
    delayAnimation();
  }

  Future<void> delayAnimation() async {
    await Future.delayed(Duration(milliseconds: 0), () {
      setState(() {
        _tween = Tween<double>(begin: 150.0, end: 0.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return TweenAnimationBuilder(
        tween: _tween,
        duration: Duration(milliseconds: 250),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            bottom: 0 + MediaQuery.of(context).padding.bottom,
            left: value,
            right: value * -1,
            height: _screenHeight * .17,
            child: IgnorePointer(
              ignoring: widget.showMenu,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                opacity: !widget.showMenu ? 1 : 0,
                child: Container(
                  child: MenuBottomItems(),
                ),
              ),
            ),
          );
        });
  }
}
