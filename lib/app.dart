import 'package:banking_mobile_app/screens/first_screen.dart';
import 'package:banking_mobile_app/screens/send_money.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SendMoneyPage(),
      ),
    );
  }
}

