import 'package:find_room_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeading extends StatelessWidget {
  SectionHeading({
    @required this.title,
    this.onPress,
  });

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.poly().copyWith(
              fontSize: 20,
              color: kRegularTextColor,
            ),
          ),
          Spacer(),
          if (onPress != null)
            GestureDetector(
              onTap: onPress,
              child: Text(
                kView_All,
                style: TextStyle(
                  fontFamily: 'Futura Bk BT',
                  fontSize: 14,
                  color: kAccentColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )
        ],
      ),
    );
  }
}
