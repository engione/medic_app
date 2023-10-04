import 'package:flutter/material.dart';
import 'package:medic_app/widget/circle_button.dart';

class SixthPage extends StatelessWidget {

  final String info = 'Создайте пароль';
  final String descrip = 'Для защиты ваших персональных данных';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.1,),
                Text(
                  info,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(height: screenHeight * 0.03,),
                Text(
                  descrip,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey
                  ),
                ),
                SizedBox(height: screenHeight * 0.07,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleButton(txt: '1'),
                        CircleButton(txt: '2'),
                        CircleButton(txt: '3')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleButton(txt: '4'),
                        CircleButton(txt: '5'),
                        CircleButton(txt: '6')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleButton(txt: '7'),
                        CircleButton(txt: '8'),
                        CircleButton(txt: '9')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleButton(txt: '0')
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ),
    );
  }
}


