import 'package:find_room_app/models/Room.dart';
import 'package:find_room_app/utils/constants.dart';
import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  VerticalCard(this.room);
  final Room room;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      width: 135.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kCardBackgroundColor,
        boxShadow: [
          kVerticalCardBoxShadow,
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: AssetImage(room.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(room.name,
                      style: TextStyle(
                        fontFamily: 'Futura Md BT',
                        fontSize: 12,
                        color: kRegularTextColor,
                        fontWeight: FontWeight.w500,
                      )),
                  Text(
                    room.location,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Futura Bk BT',
                      fontSize: 10,
                      color: kLightTextColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$${room.price}/month',
                        style: TextStyle(
                          fontFamily: 'Futura Md BT',
                          fontSize: 10,
                          color: kDarkTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Text(
                        room.star,
                        style: TextStyle(
                          fontSize: 10,
                          color: kAccentColor,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        size: 8,
                        color: kAccentColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
