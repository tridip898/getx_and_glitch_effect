import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  final String icon;
  const RoundIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.symmetric(horizontal: 08),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(icon),fit: BoxFit.cover)
      ),
    );
  }
}
