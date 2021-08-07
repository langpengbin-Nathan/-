import 'package:flutter/material.dart';
import 'package:homework/constants/app_textstyle.dart';
import 'package:homework/constants/color_constants.dart';
import 'package:homework/data/card_data.dart';
import 'package:homework/data/transaction_data.dart';
import 'package:homework/widgets/my_card.dart';
import 'package:homework/widgets/transaction_card.dart';

//stless
class HomeScreen extends StatelessWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Bank',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://placeimg.com/640/480/people"),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active_outlined,
                color: Colors.black, size: 27),
            onPressed: () {}
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 240,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return MyCard(card: myCards[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10);
                    },
                    itemCount: myCards.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Recent Transactions',
                style: ApptextStyle.BODY_TITLE,
              ),
              SizedBox(height: 15,),
              ListView.separated(
                  itemBuilder: (context, index) {
                    return TransactionCard(
                      transaction: myTransactions[index]
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10,);
                  },
                  itemCount: myTransactions.length,
                  shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
