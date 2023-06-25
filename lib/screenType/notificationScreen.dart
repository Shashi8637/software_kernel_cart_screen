import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  final int notificationCount;
  final Function()? onIncrement;
  final Function()? onDecrement;

  NotificationScreen({
    required this.notificationCount,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Column(
        children: [
          SizedBox(height: 24.sp),
          Center(
            child: Text(
              "Cart Screen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.sp,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 59.sp),
          Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            color: Colors.cyan,
            child: TextButton(
              onPressed: widget.onIncrement,
              child: Text(
                "Increment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            color: Colors.cyan,
            child: TextButton(
              onPressed: widget.onDecrement,
              child: Text(
                "Decrement",
                style: TextStyle(
                  color: Colors.white,
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






