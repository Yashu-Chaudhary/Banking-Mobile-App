import 'package:banking_mobile_app/utils/comman/detail_container.dart';
import 'package:banking_mobile_app/utils/comman/recive_container.dart';
import 'package:banking_mobile_app/utils/constants/string_texts.dart';
import 'package:flutter/material.dart';

class ReciveButton extends StatelessWidget {
  const ReciveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Column(
        children: [
          // Text
          const Text(
            PTexts.lastReceive,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 20),

          //Reciving Money Data in the Container
          const PRecivingDetailContainer(toRecive: 'Sagar', recivingAmount: '1000', recivingTime: '5:30 PM'),
          const PRecivingDetailContainer(toRecive: 'Ajay', recivingAmount: '1200', recivingTime: '3:24 PM'),
          const PRecivingDetailContainer(toRecive: 'Vijay', recivingAmount: '1796', recivingTime: '7:49 AM'),

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