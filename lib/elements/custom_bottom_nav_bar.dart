import 'package:find_room_app/utils/constants.dart';
import 'package:find_room_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: kCardBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                title: 'Home',
                icon: 'assets/icons/home.svg',
                isActive: true,
                onPressed: () {},
              ),
              NavItem(
                title: 'Explore',
                icon: 'assets/icons/explore.svg',
                onPressed: () {},
              ),
              NavItem(
                title: 'Favorite',
                icon: 'assets/icons/favorite.svg',
                onPressed: () {},
              ),
              NavItem(
                title: 'Profile',
                icon: 'assets/icons/profile.svg',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.title,
    @required this.icon,
    this.isActive = false,
    @required this.onPressed,
  }) : super(key: key);

  final String title;
  final String icon;
  final bool isActive;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: getProportionateScreenWidth(36),
        width: getProportionateScreenWidth(40),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: getProportionateScreenWidth(16),
              color: isActive ? kAccentColor : kLightTextColor,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(10),
                color: isActive ? kAccentColor : kLightTextColor,
                letterSpacing: -0.5,
                fontWeight: FontWeight.w300,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
