import 'package:flutter/material.dart';

class PDetailContainer extends StatelessWidget {
  const PDetailContainer({
    super.key,
    required this.toSend,
    required this.sendingAmount,
    required this.sendingTime,
  });

  final String toSend;
  final String sendingAmount;
  final String sendingTime;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
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
                toSend,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                sendingTime,
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
          Text(
            '-\$$sendingAmount',
            style: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          )
        ],
      ),
    );
  }
}
