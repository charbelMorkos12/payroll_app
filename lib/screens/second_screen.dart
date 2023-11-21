import 'package:flutter/material.dart';

import '../models/user_data.dart';

class SecondScreen extends StatelessWidget {
  final UserData userData;

  const SecondScreen({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final expectedPay = userData.hoursWorked * userData.hourlyRate;
    return Scaffold(
      appBar: AppBar(title: Text('User Information')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Name: ${userData.name}'),
            Text('Position: ${userData.position}'),
            Text('Hours Worked: ${userData.hoursWorked}'),
            Text('Hourly Rate: ${userData.hourlyRate}'),
            Text('Expected Pay: $expectedPay'),
          ],
        ),
      ),
    );
  }
}