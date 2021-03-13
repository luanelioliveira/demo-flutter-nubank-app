import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../my_card_app.dart';

class RewardsCardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/gift-outline.svg',
            color: Colors.grey,
            semanticsLabel: 'gift',
            width: 31,
            height: 31,
          ),
          Column(
            children: <Widget>[
              Text(
                'Nubank Rewards',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              child: Text(
                'ATIVE O SEU REWARDS',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[800],
                ),
              ),
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                    side: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.purple[800],
                    ),
                  ),
                ),
                overlayColor: MaterialStateProperty.all<Color>(
                  Colors.purple[800],
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
                elevation: MaterialStateProperty.all<double>(0.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
