import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountCardContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AccountCardContentState();
}

class AccountCardContentState extends State<AccountCardContent>
    with AutomaticKeepAliveClientMixin {
  bool _showBalance = false;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.attach_money,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Conta',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showBalance = !_showBalance;
                            });
                          },
                          child: SvgPicture.asset(
                            _showBalance
                                ? 'assets/icons/eye-outline.svg'
                                : 'assets/icons/eye-off-outline.svg',
                            color: Colors.grey,
                            semanticsLabel: 'eye',
                            width: 31,
                            height: 31,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Saldo disponível',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          _showBalance
                              ? Text.rich(
                                  TextSpan(
                                    text: 'R\$ 2500,50',
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                  ),
                                )
                              : Container(
                                  height: 33,
                                  width: 160,
                                  color: Colors.grey[300],
                                ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
