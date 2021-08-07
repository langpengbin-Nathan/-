import 'package:flutter/material.dart';
import 'package:homework/constants/app_textstyle.dart';
import 'package:homework/constants/color_constants.dart';
import 'package:homework/data/card_data.dart';
import 'package:homework/widgets/my_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Cards',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return MyCard(
                      card: myCards[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20,);
                },
                itemCount: myCards.length,
                shrinkWrap: true,
            ),
          ),
          //那个加号
          CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.add,
              size: 50,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'ADD CARD' ,
            style: ApptextStyle.LISTTILE_TITLE,
          )
        ],
      ),
    );
  }
}
