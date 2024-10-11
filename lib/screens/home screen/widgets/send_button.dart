import 'package:banking_mobile_app/utils/comman/detail_container.dart';
import 'package:banking_mobile_app/utils/constants/string_texts.dart';
import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
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
    );
  }
}
