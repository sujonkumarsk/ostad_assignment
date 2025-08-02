import 'package:flutter/material.dart';

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Add Employee'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
               height: 30
           ),
           TextField(
            decoration: InputDecoration(
              labelText:'Name',
              contentPadding:EdgeInsets.symmetric(horizontal: 13),
            ),
          ),
          SizedBox(
              height: 16
          ),
          TextField(
            decoration: InputDecoration(
              labelText:'Age',
              contentPadding: EdgeInsets.symmetric(horizontal: 13),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
              height: 16
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Salary',
              contentPadding: EdgeInsets.symmetric(horizontal: 13),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
              height: 32
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){}, child: Text('Add Employee'), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}