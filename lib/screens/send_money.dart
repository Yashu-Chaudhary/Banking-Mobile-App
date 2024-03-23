import 'package:banking_mobile_app/screens/first_screen.dart';
import 'package:banking_mobile_app/utils/comman/dialor_keys.dart';
import 'package:banking_mobile_app/utils/comman/user_account_detail_container.dart';
import 'package:banking_mobile_app/utils/constants/string_colors.dart';
import 'package:banking_mobile_app/utils/constants/string_images.dart';
import 'package:banking_mobile_app/utils/constants/string_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (() => Get.to(const FirstScreen())),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    PTexts.sendTo,
                    style: TextStyle(
                        fontSize: 20,
                        color: PColors.secondary,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    PTexts.seeAll,
                    style: TextStyle(
                        fontSize: 14,
                        color: PColors.primary,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Most Used Accounts
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PUserAccountDetailContainer(
                      name: 'Yashu Chaudhary',
                      image: AssetImage(PImages.profile),
                      lastFourDigits: 7120,
                    ),
                    PUserAccountDetailContainer(
                      name: 'Monu Chaudhary',
                      image: AssetImage(PImages.profile),
                      lastFourDigits: 1234,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const PDialorKeyboard()
            ],
          ),
        ),
      ),
    );
  }
}
