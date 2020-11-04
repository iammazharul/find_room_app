import 'package:find_room_app/elements/custom_bottom_nav_bar.dart';
import 'package:find_room_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: null,
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

