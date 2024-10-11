import 'package:banking_mobile_app/screens/home%20screen/widgets/recive_button.dart';
import 'package:banking_mobile_app/screens/home%20screen/widgets/send_button.dart';
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
  int expandedIndex = 0;

  static final List<Widget> button = [const SendButton(), const ReciveButton()];

  void expandedContainer() {
    setState(() {
      expandedIndex = expandedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        expandedIndex == 0
            ? PExpandedButtons(
                backgroundColor: PColors.primary,
                icon: const Icon(Icons.north_east),
                text: PTexts.send,
                onPressed: () {},
              )
            : PCircularButton(
                backgroundColor: PColors.primary,
                icon: const Icon(Icons.north_east),
                onTap: () {
                  expandedIndex = 0;
                  expandedContainer();
                },
              ),
        const SizedBox(width: 20),
        expandedIndex == 1
            ? PExpandedButtons(
                backgroundColor: Colors.green,
                icon: const Icon(Icons.south_west),
                text: PTexts.receive,
                onPressed: () {})
            : PCircularButton(
                backgroundColor: Colors.green,
                icon: const Icon(Icons.south_west),
                onTap: () {
                  expandedIndex = 1;
                  expandedContainer();
                },
              ),
        const SizedBox(width: 20),
        PCircularButton(
          backgroundColor: Colors.pink,
          icon: const Icon(Icons.category),
          onTap: () => Get.to(const SendMoneyPage()),
        ),
      ],
    );
  }
}
