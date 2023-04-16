import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  void Function()? onPressed;
  final String buttonText;
  CommonButton({Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.teal,
      padding: EdgeInsets.all(20),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      minWidth: MediaQuery.of(context).size.width*0.8,
    );
  }
}
