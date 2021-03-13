import 'package:flutter/material.dart';

class AccountCardBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.credit_card,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                  child: Text(
                'Compra mais recente em Supermecardo no valor de R\$ 187,54 quinta ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              )),
              Icon(
                Icons.chevron_right,
                color: Colors.grey[400],
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
