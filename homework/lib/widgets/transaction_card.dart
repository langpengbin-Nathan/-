import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homework/constants/app_textstyle.dart';
import 'package:homework/data/transaction_data.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const  TransactionCard ({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      //出头像
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: transaction.color,
                ),
                child: Image.asset(transaction.avatar),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.name,
                    style: ApptextStyle.LISTTILE_TITLE,
                  ),
                  Text(
                    transaction.name,
                    style: ApptextStyle.LISTTILE_SUB_TITLE,
                  ),
                ],
              )
            ],
          ),
          //出钱
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.currentBalance,
                    style: ApptextStyle.LISTTILE_TITLE,
                  ),
                  //钱小头的数字
                  Row(
                    children: [
                      transaction.changePercentageIndicator == "up"
                          ? Icon(
                              FontAwesomeIcons.levelUpAlt,
                              size: 10,
                              color: Colors.green,
                              )
                          : Icon(
                              FontAwesomeIcons.levelUpAlt,
                              size: 10,
                              color: Colors.red,
                             ),
                             //出百分比
                             SizedBox(
                               width: 5,
                             ),
                             Text(
                               transaction.changePercentage,
                               style: ApptextStyle.LISTTILE_SUB_TITLE,
                             )
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
