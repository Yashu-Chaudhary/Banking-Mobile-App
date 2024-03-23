import 'package:flutter/material.dart';

class PUserAccountDetailContainer extends StatelessWidget {
  const PUserAccountDetailContainer({
    super.key,
    required this.name,
    required this.image,
    required this.lastFourDigits,
  });

  final String name;
  final AssetImage image;
  final int lastFourDigits;

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
        height: 80,
        width: deviceWidth * .5,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(40), right: Radius.circular(40)),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 50,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: image,
              ),
            ),
            const SizedBox(width: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Row(
                  children: [
                    const Icon(Icons.wallet, size: 15),
                    Text('******$lastFourDigits')
                  ],
                )
              ],
            )
          ],
        ));
  }
}
