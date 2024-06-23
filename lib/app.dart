import 'package:flutter/material.dart';

import 'local notification/screens/home_screen.dart';

class NotificationApp extends StatelessWidget {
  const NotificationApp({super.key});
static GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    const secondaryColor=Colors.tealAccent;
    return  MaterialApp(
      navigatorKey:navigatorKey ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        shadowColor: secondaryColor,
      ),
      home: HomeScreen(),
    );
  }
}
