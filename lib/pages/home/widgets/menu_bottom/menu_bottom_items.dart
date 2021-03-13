import 'package:flutter/material.dart';

import 'items/blockcard_item.dart';
import 'items/creditscellphone_item.dart';
import 'items/deposit_item.dart';
import 'items/limit_item.dart';
import 'items/loan_item.dart';
import 'items/pay_item.dart';
import 'items/refer_item.dart';
import 'items/take_item.dart';
import 'items/transfer_item.dart';

class MenuBottomItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ReferItem(),
        CreditsCellphoneItem(),
        TakeItem(),
        LoadItem(),
        DepositItem(),
        TransferItem(),
        LimitItem(),
        PayItem(),
        BlockCardItem(),
      ],
    );
  }
}
