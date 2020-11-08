import 'package:find_room_app/models/Room.dart';
import 'package:find_room_app/utils/constants.dart';
import 'package:find_room_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HorizontalCard extends StatelessWidget {
  // HorizontalCard(this.room);
  // final Room room;
  final Room room = getRandomRoom();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight / 5,
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kCardBackgroundColor,
        boxShadow: [
          kVerticalCardBoxShadow,
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: AssetImage(room.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 16,
                right: 8,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    room.name,
                    style: TextStyle(
                      fontFamily: 'Futura Md BT',
                      fontSize: 16,
                      color: kRegularTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    room.location,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Futura Bk BT',
                      fontSize: 12,
                      color: kLightTextColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '\$${room.price}/mobth',
                    style: TextStyle(
                      fontFamily: 'Futura Md BT',
                      fontSize: 12,
                      color: kDarkTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FacilityIcon(icon: 'assets/icons/parking.svg', available: room.facility.parking),
                      FacilityIcon(icon: 'assets/icons/bath.svg', available: room.facility.bath),
                      FacilityIcon(icon: 'assets/icons/food.svg', available: room.facility.food),
                      FacilityIcon(icon: 'assets/icons/wifi.svg', available: room.facility.wifi,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: kAccentColor,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0a000000),
                    offset: Offset(0, 0),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Center(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Book now',
                    style: TextStyle(
                      fontFamily: 'Futura Md BT',
                      fontSize: 16,
                      color: kCardBackgroundColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FacilityIcon extends StatelessWidget {
  const FacilityIcon({
    Key key,
    @required this.icon,
    @required this.available,
  }) : super(key: key);
  final String icon;
  final bool available;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: kCardBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0x1a000000),
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          icon,
          color: available ? kAccentColor : kLightTextColor,
        ),
      ),
    );
  }
}
