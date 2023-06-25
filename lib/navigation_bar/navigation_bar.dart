import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:software_kernel_cart_screen/screenType/hearTscreen.dart';
import 'package:software_kernel_cart_screen/screenType/notificationScreen.dart';
import 'package:software_kernel_cart_screen/screenType/shopcardScreen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int heartCount; // Add this line

  CustomBottomNavigationBar({required this.heartCount}); // Add this line

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      navBarHeight: kBottomNavigationBarHeight,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      popActionScreens: PopActionScreensType.once,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }

  List<Widget> _buildScreens() {
    return [
      ShoppingCartScreen(),
      HeartScreen(
        onIncrement: () {},
        onDecrement: () {},
        heartCount: widget.heartCount, // Pass the heartCount
      ),
      NotificationScreen(
        onIncrement: () {},
        onDecrement: () {},
        notificationCount: 0,
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        title: "Shopping Cart",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.black,
        iconSize: 24.sp,
      ),
      PersistentBottomNavBarItem(
        icon: Stack(
          children: [
            Icon(Icons.favorite_outline),
            Positioned(
              right: 0,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: BoxConstraints(
                  minWidth: 16,
                  minHeight: 16,
                ),
                child: Text(
                  widget.heartCount.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        title: "Heart",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.black,
        iconSize: 24.sp,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.notifications),
        title: "Notifications",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.black,
        iconSize: 24.sp,
      ),
    ];
  }
}

