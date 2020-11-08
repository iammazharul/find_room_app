import 'package:find_room_app/elements/custom_search_bar.dart';
import 'package:find_room_app/models/User.dart';
import 'package:find_room_app/utils/constants.dart';
import 'package:find_room_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final User user = getRandomUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: SizeConfig.screenHeight / 4,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello ${user.name}',
                      style: TextStyle(
                        fontFamily: 'Futura Md BT',
                        fontSize: 16,
                        color: kLightTextColor,
                        fontWeight: FontWeight.w500,
                        height: 1.75,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    // SizedBox(height: 4),
                    Text(
                      kFind_your_hotel,
                      style: TextStyle(
                        fontFamily: 'Futura Md BT',
                        fontSize: 24,
                        color: kRegularTextColor,
                        fontWeight: FontWeight.w300,
                        height: 1.15,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Container(
                  width: 42.0,
                  height: 42.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(user.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomeSearchBar(),
          ),
        ],
      ),
    );
  }
}
