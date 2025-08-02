import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 280,
            height: 200,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                ClipRRect(
                  child: Stack(
                  children: [
                    Image.network('https://tse2.mm.bing.net/th/id/OIP.N5w_b9t0LEtOVmGi91pIBQHaE6?w=1000&h=664&rs=1&pid=ImgDetMain&o=7&rm=3')
                  ],
                  ),
                ),
                Container(
                color: Colors.white,
                  child: Text('⭐ 4.5'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
