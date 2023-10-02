import 'package:flutter/material.dart';
import 'package:travel_app/fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.DevWidth,
    required this.DevHeight,
    required this.text
  });

  final DevWidth;
  final DevHeight;
  final text;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: DevWidth,
      height: DevHeight * 0.06,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: DevHeight * 0.022,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
