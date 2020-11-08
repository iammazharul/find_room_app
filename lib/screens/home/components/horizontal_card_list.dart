import 'package:find_room_app/elements/horizontal_card.dart';
import 'package:flutter/material.dart';

class HorizontalCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: 20,
        top: 10,
        right: 20,
      ),
      shrinkWrap: true,
      primary: false,
      children: [
        HorizontalCard(),
        HorizontalCard(),
        HorizontalCard(),
        HorizontalCard(),
        HorizontalCard(),
      ],
    );
    // return HorizontalCard();
  }
}
