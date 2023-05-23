import 'package:flutter/material.dart';

Row RowPink(String text) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10, top: 10),
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ],
  );
}