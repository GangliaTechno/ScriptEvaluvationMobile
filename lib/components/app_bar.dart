import 'package:flutter/material.dart';

AppBar AppBars({required String text,required VoidCallback onPressed}) {
  return AppBar(
    backgroundColor: Colors.grey[350],
    centerTitle: true,
    title: Text(
      text,
      style: TextStyle(color: Colors.black,fontSize: 18),
      
    ),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    leading: IconButton(
      icon: Icon(Icons.close, color: Colors.black),
      onPressed: onPressed,
    ),
  );
}
