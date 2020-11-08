import 'package:find_room_app/elements/vertical_card.dart';
import 'package:find_room_app/models/Room.dart';
import 'package:find_room_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class VerticalCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      height: getProportionateScreenWidth(182),
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: rooms.length,
        itemBuilder: (BuildContext context, int index) {
          return VerticalCard(rooms[index]);
        },
      ),
    );
  }
}
