import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.devheight,
  });

  final devheight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          color: Colors.white,
          size: devheight * 0.04,
        ),
        SizedBox(
          height: devheight * 0.04,
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/men_avatar2.jpeg'),
          ),
        )
      ],
    );
  }
}
