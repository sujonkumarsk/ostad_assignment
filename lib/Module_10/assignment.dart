
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, World!',
              style:TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color:Colors.red,
              ),
              ),
            SizedBox(
              height: 10,
            ),
            Text('Welcome to Flutter!'),

           Image(image: NetworkImage('https://coidea.agency/img/technologies/flutter.png'),
             height: 120,
           ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content:Text('Button Pressed!')
                    ),
                  );
                }, child: Text('Press Me'))

          ],
        ),
      ),
    );
  }
}
