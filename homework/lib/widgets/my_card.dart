import 'package:flutter/material.dart';
import 'package:homework/constants/app_textstyle.dart';
import 'package:homework/data/card_data.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard ({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: card.cardColor, borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween, //加上这个，银行卡密码就到了下头了
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CARD NAME',
                    style: ApptextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.cardHolderName,
                    style: ApptextStyle.MY_CARD_SUBTITLE,
                  ),
                ],
              ),
              Text(
                card.cardNumber,
                style: ApptextStyle.MY_CARD_SUBTITLE,
              ),
              Row(
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('EXP DATE',
                      style: ApptextStyle.MY_CARD_TITLE,
                    ),
                    Text(
                      card.expDate,
                      style: ApptextStyle.MY_CARD_SUBTITLE,
                    ),
                  ],
                ),
                  //应该这里才出下面的日期
                SizedBox(
                    width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV NUMBER',
                        style: ApptextStyle.MY_CARD_TITLE,
                      ),
                      Text(
                        card.cvv,
                        style: ApptextStyle.MY_CARD_SUBTITLE,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          //卡片右上角出俩小圈
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/mcard.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
