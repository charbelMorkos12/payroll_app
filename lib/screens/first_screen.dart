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
      appBar: AppBar(title: Text('Payroll App')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(width: 30, height: 50,),
            TextField(controller: nameController, decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name'),
              ),
              const SizedBox(width: 30, height: 30,),
            TextField(controller: positionController, decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Position')
              ),
            const SizedBox(width: 30, height: 30,),
            TextField(controller: hoursController, decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Hours Worked')
              ),
              const SizedBox(width: 30, height: 30,),
            TextField(controller: rateController, decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Hourly Rate')
              ),
              const SizedBox(width: 30, height: 30,),
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