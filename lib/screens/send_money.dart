import 'package:banking_mobile_app/screens/first_screen.dart';
import 'package:banking_mobile_app/utils/constants/string_colors.dart';
import 'package:banking_mobile_app/utils/constants/string_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          PTexts.sendMoney,
          style: TextStyle(fontWeight: FontWeight.bold),
          
        ),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed:(()=>Get.to(const FirstScreen())),),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 15),
                Text(PTexts.sendTo, style: TextStyle(fontSize: 20,color: PColors.secondary, fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
