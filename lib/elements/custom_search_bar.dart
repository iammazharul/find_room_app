import 'package:find_room_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomeSearchBar extends StatefulWidget {
  @override
  _CustomeSearchBarState createState() => _CustomeSearchBarState();
}

class _CustomeSearchBarState extends State<CustomeSearchBar> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: kSearchBarColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding:
          EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: kSearch_for_rooms,
            icon: Icon(
              Icons.search,
              color: kLightTextColor,
            ),
            hintStyle: TextStyle(
              fontSize: 17,
              color: kLightTextColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
