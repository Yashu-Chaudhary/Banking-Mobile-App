import 'package:flutter/material.dart';

class PExpandedButtons extends StatelessWidget {
  const PExpandedButtons({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  final Color backgroundColor;
  final Icon icon;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        height: 80,
        width: deviceWidth * 0.3,
        decoration: BoxDecoration(
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: IconButton(
                  icon: icon,
                  color: backgroundColor,
                  onPressed: onPressed,
                ),
              ),
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
