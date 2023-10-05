import 'package:flutter/material.dart';

class FieldInput extends StatelessWidget {
  final String lbltxt;
  final double width;
  final double height;

  FieldInput({required this.lbltxt, required this.width, required this.height});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width; 
    // Вычисляем высоту прямоугольника
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height;
    return Container(
      width: rectangleWidth,
      height: rectangleHeight,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          hintText: lbltxt,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(126, 126, 154, 1),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          )
        )
      ),
    );
  }
}