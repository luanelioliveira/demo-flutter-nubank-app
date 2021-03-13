import 'package:flutter/material.dart';

class CreditCardContent extends StatelessWidget {
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
                      children: <Widget>[
                        Icon(
                          Icons.credit_card,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Cartão de Crédito',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        )
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
                            'FATURA ATUAL',
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          Text.rich(
                              TextSpan(
                                text: 'R\$ ',
                                children: [
                                  TextSpan(
                                    text: '600',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: ',50'),
                                ],
                              ),
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 28,
                              )),
                          Text.rich(
                              TextSpan(
                                text: 'Limite disponível',
                                children: [
                                  TextSpan(
                                    text: ' R\$ 2.250,95',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              )),
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
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 10,
                right: 15,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.orange,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
