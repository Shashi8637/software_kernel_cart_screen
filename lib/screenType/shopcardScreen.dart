import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body:Column(
        children: [
          SizedBox(
            height: 24.sp,
          ),
          Center(
            child: Text("Cart Screen",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.sp,
                color: Colors.black
            ),),
          ),
          SizedBox(height: 59.sp,),
          Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            color: Colors.cyan,
            child: Text(
              "Increment ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            color: Colors.cyan,
            child: Text(
              "Decrement",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

        ],
      ),
    );
  }
}