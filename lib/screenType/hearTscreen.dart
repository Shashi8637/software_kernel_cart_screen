import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeartScreen extends StatelessWidget {
  final int heartCount;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  HeartScreen({
    required this.heartCount,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heart'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24.sp,
          ),
          Center(
            child: Text(
              "Heart Count: $heartCount",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.sp,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 59.sp,),
          Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            color: Colors.cyan,
            child: ElevatedButton(
              onPressed: onIncrement,
              child: Text(
                "Increment",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 30.sp,),
          Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            color: Colors.cyan,
            child: ElevatedButton(
              onPressed: onDecrement,
              child: Text(
                "Decrement",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
