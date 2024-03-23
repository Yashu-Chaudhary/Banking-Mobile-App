import 'package:banking_mobile_app/utils/constants/string_colors.dart';
import 'package:flutter/material.dart';

class PDialorKeyboard extends StatelessWidget {
  const PDialorKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    dynamic key = 0;
    return Column(
      children: [
        Row(
          children: [
            const Text(
              '\$ ',
              style: TextStyle(fontSize: 40, color: Colors.grey),
            ),
            Text(
              '$key',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ],
        ),
        const Divider(color: Colors.green),
        const SizedBox(height: 50),
        Container(
          height: deviceHeight * .3,
          width: deviceWidth * .7,
          decoration: const BoxDecoration(
              // color: Colors.red
              ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PNumberButton(
                    num: 1,
                  ),
                  PNumberButton(
                    num: 2,
                  ),
                  PNumberButton(
                    num: 3,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PNumberButton(
                    num: 4,
                  ),
                  PNumberButton(
                    num: 5,
                  ),
                  PNumberButton(
                    num: 6,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PNumberButton(
                    num: 7,
                  ),
                  PNumberButton(
                    num: 8,
                  ),
                  PNumberButton(
                    num: 9,
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.backspace,
                    size: 40,
                    color: Colors.grey,
                  )),
              const PNumberButton(
                num: 0,
              ),
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: PColors.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.check,
                        color: Colors.white,
                      )))
            ],
          ),
        )
      ],
    );
  }
}

class PNumberButton extends StatelessWidget {
  const PNumberButton({
    super.key,
    required this.num,
  });

  final int num;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        '$num',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }
}
