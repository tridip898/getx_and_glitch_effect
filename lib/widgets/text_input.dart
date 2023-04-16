import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obseure;
  final suffIcon;
  final String? Function(String?)? validator;

  TextInput({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.suffIcon,
    required this.obseure,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
      child: TextFormField(
        validator: validator,
        controller: controller,
        style: TextStyle(color: Colors.grey.shade800, fontSize: 20),
        obscureText: obseure,
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 16),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500, width: 2),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey.shade500, width: 2),
            ),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey.shade700),
            prefixIcon: Icon(
              icon,
              color: Colors.grey.shade500,
              size: 30,
            ),
            suffixIcon: Icon(
              suffIcon,
              size: 30,
              color: Colors.grey.shade500,
            )),
      ),
    );
  }
}
