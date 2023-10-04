import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Screen'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: List.generate(10, (index) {
          return TextButton(
            onPressed: () {
              // Действие при нажатии кнопки
            },
            child: CircleAvatar(
              // foregroundColor: BoxDecoration(
              //   shape: BoxShape.circle,
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 2.0,
              //   ),
              // ),
              child: Text(
                '$index',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              backgroundColor: Colors.white,
            ),
          );
        }),
      ),
    );
  }
}
