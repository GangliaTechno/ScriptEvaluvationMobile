import 'package:flutter/material.dart';

Widget ElevatedButtons({
  required VoidCallback onPressed,
  required String text,
  bgcolor,
  IconData? iconData,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        SizedBox(width: 8),
        if (iconData != null) // Render the icon if it's provided
          Icon(iconData, color: Colors.black),
        SizedBox(width: iconData != null ? 8.0 : 0),
      ],
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: bgcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0,
      fixedSize: Size(250, 50),
    ),
  );
}
