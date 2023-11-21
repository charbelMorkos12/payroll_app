import 'package:flutter/material.dart';
import 'package:payroll_app/screens/second_screen.dart';

import '../models/user_data.dart';

class FirstScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController hoursController = TextEditingController();
  final TextEditingController rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Information')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Name'),
            ),
            TextField(
                controller: positionController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Position')),
            TextField(
                controller: hoursController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Hours Worked')),
            TextField(
                controller: rateController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Hourly Rate')),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                final userData = UserData(
                  nameController.text,
                  positionController.text,
                  double.parse(hoursController.text),
                  double.parse(rateController.text),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(userData: userData),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
