import 'package:banking_mobile_app/utils/comman/detail_container.dart';
import 'package:banking_mobile_app/utils/constants/string_texts.dart';
import 'package:banking_mobile_app/utils/comman/header.dart';
import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            // 2lines, photo, 3dot icon
            const PHeader(),
            const SizedBox(height: 60),

            // Text and Money
            const Row(
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
            const SizedBox(height: 20),

            // three buttons
             Row(
              children: [
                Container(),
                Container(),
                Container(),
              ],
            ),

            const SizedBox(height: 20),

            // Text
            const Text(
              PTexts.lastSend,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),

            //Sending Money Data in the Container
            const PDetailContainer(
              toSend: 'Groceries',
              sendingAmount: '678',
              sendingTime: '5:20 PM',
            ),
            const SizedBox(height: 10),
            const PDetailContainer(
              toSend: 'Shopping',
              sendingAmount: '892',
              sendingTime: '6:25 PM',
            ),
            const SizedBox(height: 10),
            const PDetailContainer(
              toSend: 'Parking',
              sendingAmount: '200',
              sendingTime: '8:25 PM',
            ),
            const SizedBox(height: 5),
            Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                      size: 45,
                    ))),
          ],
        ),
      ),
    );
  }
}
