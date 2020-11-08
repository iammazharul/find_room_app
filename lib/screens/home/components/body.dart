import 'package:find_room_app/screens/home/components/horizontal_card_list.dart';
import 'package:find_room_app/screens/home/components/vertical_card_list.dart';
import 'package:find_room_app/utils/constants.dart';
import 'package:find_room_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'home_header.dart';
import 'section_heading.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            SectionHeading(
              title: kPopular_rooms,
            ),
            VerticalCardList(),
            SectionHeading(
              title: kHot_packages,
              onPress: () {},
            ),
            HorizontalCardList(),
          ],
        ),
      ),
    );
  }
}
