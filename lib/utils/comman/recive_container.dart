import 'package:flutter/material.dart';

class PRecivingDetailContainer extends StatelessWidget {
  const PRecivingDetailContainer({
    super.key,
    required this.toRecive,
    required this.recivingAmount,
    required this.recivingTime,
  });

  final String toRecive;
  final String recivingAmount;
  final String recivingTime;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 90,
      padding: const EdgeInsets.all(20),
      width: width * 8,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                toRecive,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                recivingTime,
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
          Text(
            '+\$$recivingAmount',
            style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          )
        ],
      ),
    );
  }
}
