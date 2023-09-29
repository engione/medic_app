import 'package:flutter/material.dart';

class ImageMain extends StatelessWidget {
  final String txt;
  final String picture;
  final double width;
  final double height; 
  final Color colortxt;

  ImageMain({required this.txt, required this.width, required this.height, required this.colortxt, required this.picture});

  @override
  Widget build(BuildContext context) {
    // Вычисляем ширину прямоугольника
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width; 
    // Вычисляем высоту прямоугольника
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height;

  
    return Container(
      width: rectangleWidth,
      height: rectangleHeight - 2,
         decoration: BoxDecoration(
         color: Color.fromARGB(0, 156, 215, 228), 
         borderRadius: BorderRadius.circular(10),
       ),
       
       child: Align(alignment: Alignment.center,
         child: Image.asset(picture, fit: BoxFit.contain,)
    )
    );
  }
}