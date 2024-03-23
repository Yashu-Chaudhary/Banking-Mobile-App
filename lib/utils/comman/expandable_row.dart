import 'package:banking_mobile_app/utils/constants/string_colors.dart';
import 'package:banking_mobile_app/utils/constants/string_images.dart';
import 'package:banking_mobile_app/utils/constants/string_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    final deviceHeight = MediaQuery.of(context).size.height;

    return const Row(
      children: [
        PExpandedButtons(
          backgroundColor: PColors.primary,
          icon: Icon(Icons.north_east),
          text: PTexts.send,
        ),
        SizedBox(width: 20),
        PCircularButton(backgroundColor: Colors.green, icon: Icon(Icons.south_west),),
        SizedBox(width: 20),
        PCircularButton(backgroundColor: Colors.pink, icon: Icon(Icons.category),),
      ],
    );
  }
}

class PExpandedButtons extends StatelessWidget {
  const PExpandedButtons({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.text,
  });
  final Color backgroundColor;
  final Icon icon;
  final String text;


  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        height: 80,
        width: deviceWidth * 0.3,
        decoration:  BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(70),
            right: Radius.circular(70),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                  child: IconButton(icon: icon, onPressed: (){},),),
            ),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}

class PCircularButton extends StatelessWidget {
  const PCircularButton({super.key, required this.backgroundColor, required this.icon});

  final Color backgroundColor;
  final Icon icon;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 60,
        decoration:  BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30), bottom: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 70,
              width: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30), bottom: Radius.circular(30)),
              ),
              child: IconButton(icon: icon , onPressed: (){},),
              )),
        );
  }
}
