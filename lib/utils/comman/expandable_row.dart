import 'package:banking_mobile_app/screens/send_money.dart';
import 'package:banking_mobile_app/utils/comman/buttons/circular_buttons.dart';
import 'package:banking_mobile_app/utils/comman/buttons/expended_buttons.dart';
import 'package:banking_mobile_app/utils/constants/string_colors.dart';
import 'package:banking_mobile_app/utils/constants/string_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PExpendableButtonRow extends StatefulWidget {
  const PExpendableButtonRow({super.key});

  @override
  State<PExpendableButtonRow> createState() => _PExpendableButtonRowState();
}

class _PExpendableButtonRowState extends State<PExpendableButtonRow> {
  int expandedIndex = -1;

  void toggleExpansion(int index) {
    setState(() {
      if (index != expandedIndex) {
        expandedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PExpandedButtons(
          backgroundColor: PColors.primary,
          icon: const Icon(Icons.north_east),
          text: PTexts.send,
          index: 0,
          isExpandable: true,
          onPressed: () {},
        ),
        const SizedBox(width: 20),
         PCircularButton(
          backgroundColor: Colors.green,
          icon: const Icon(Icons.south_west), onTap: () {},
        ),
        const SizedBox(width: 20),
         PCircularButton(
          backgroundColor: Colors.pink,
          icon: const Icon(Icons.category), onTap: ()=>Get.to(const SendMoneyPage()),
        ),
      ],
    );
  }
}

