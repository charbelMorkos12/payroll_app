import 'package:flutter/material.dart';

import '../models/user_data.dart';

class SecondScreen extends StatelessWidget {
  final UserData userData;

  const SecondScreen({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final expectedPay = userData.hoursWorked * userData.hourlyRate;
    return Scaffold(
      appBar: AppBar(title: Text('Salary Overview')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(child:
           Column(
          children: [
             const SizedBox(width: 30, height: 30,),
            Text(
              'Name: ${userData.name}',// the Text
              style: TextStyle(// styling the text
              fontSize: 20.0,//the size of the text
              fontWeight: FontWeight.bold,// font weight
              color: Colors.purple)
            ),//text color
             const SizedBox(width: 30, height: 30,),
             Text(
              'Position: ${userData.position}',// the Text
              style: TextStyle(// styling the text
              fontSize: 20.0,//the size of the text
              fontWeight: FontWeight.bold,// font weight
              color: Colors.purple)
            ),//text color
             const SizedBox(width: 30, height: 30,),
             Text(
              'Hours Worked: ${userData.hoursWorked} hours',// the Text
              style: TextStyle(// styling the text
              fontSize: 20.0,//the size of the text
              fontWeight: FontWeight.bold,// font weight
              color: Colors.purple)
            ),//text color
             const SizedBox(width: 30, height: 30,),
             Text(
              'Hourly Rate: ${userData.hourlyRate} Dollars',// the Text
              style: TextStyle(// styling the text
              fontSize: 20.0,//the size of the text
              fontWeight: FontWeight.bold,// font weight
              color: Colors.purple)
            ),//text color

             const SizedBox(width: 30, height: 30,),
             Text(
              'Expected Pay: $expectedPay',// the Text
              style: TextStyle(// styling the text
              fontSize: 20.0,//the size of the text
              fontWeight: FontWeight.bold,// font weight
              color: Colors.black)
            ),//text color
          ],
        ),
      ),),
    );
  }
}