import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/qr-code.png',
          height: 100,
          color: Colors.white,
        ),
        Text.rich(
          TextSpan(text: 'Banco ', children: [
            TextSpan(
                text: '260 - Nu Pagamentos S.A',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ]),
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(height: 5),
        Text.rich(
          TextSpan(text: 'Agência ', children: [
            TextSpan(
                text: '0001', style: TextStyle(fontWeight: FontWeight.bold)),
          ]),
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(height: 5),
        Text.rich(
          TextSpan(text: 'Conta  ', children: [
            TextSpan(
                text: '000000-0',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ]),
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
