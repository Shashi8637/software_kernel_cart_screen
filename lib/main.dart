import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:software_kernel_cart_screen/navigation_bar/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:   const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                 children: [
                   Container(
                     height: MediaQuery.of(context).size.height,
                       child: CustomBottomNavigationBar(heartCount: 5,))
                 ],
                ),
              ),
            ),
          ),
        );
      },

    );
  }
}
