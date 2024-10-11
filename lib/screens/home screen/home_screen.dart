import 'package:banking_mobile_app/screens/home%20screen/widgets/expandable_row.dart';
import 'package:banking_mobile_app/utils/constants/string_texts.dart';
import 'package:banking_mobile_app/utils/comman/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 2lines, photo, 3dot icon
              PHeader(),
              SizedBox(height: 40),

              // Text and Money
              Row(
                children: [
                  SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(PTexts.avaliableBalance,
                          style: TextStyle(color: Colors.blue, fontSize: 18)),
                      SizedBox(height: 10),
                      Text('\$28.600', style: TextStyle(fontSize: 80)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              // three buttons
              PExpendableButtonRow(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
