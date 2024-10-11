// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:banking_mobile_app/utils/constants/string_colors.dart';

class PDialorKeyboard extends StatefulWidget {
  const PDialorKeyboard({super.key});

  @override
  State<PDialorKeyboard> createState() => _PDialorKeyboardState();
}

class _PDialorKeyboardState extends State<PDialorKeyboard> {
  String cal = '';
// ----------Function to Append a element-----------
  void appendToCal(String num) {
    setState(() {
      cal += num;
    });

    print(cal);
  }

  // ------------Functon to Remove a element-----------
  void elementPop() {
    setState(() {
      cal = cal.substring(0, cal.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          children: [
            const Text(
              '\$ ',
              style: TextStyle(fontSize: 40, color: Colors.grey),
            ),
            Text(
              cal,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PNumberButton(
                    onTap: () {
                      appendToCal('1');
                    },
                    num: 1,
                  ),
                  PNumberButton(
                    onTap: () {
                      appendToCal('2');
                    },
                    num: 2,
                  ),
                  PNumberButton(
                    onTap: () {
                      appendToCal('3');
                    },
                    num: 3,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PNumberButton(
                    onTap: () {
                      appendToCal('4');
                    },
                    num: 4,
                  ),
                  PNumberButton(
                    onTap: () {
                      appendToCal('5');
                    },
                    num: 5,
                  ),
                  PNumberButton(
                    onTap: () {
                      appendToCal('6');
                    },
                    num: 6,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PNumberButton(
                    onTap: () {
                      appendToCal('7');
                    },
                    num: 7,
                  ),
                  PNumberButton(
                    onTap: () {
                      appendToCal('8');
                    },
                    num: 8,
                  ),
                  PNumberButton(
                    onTap: () {
                      appendToCal('9');
                    },
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
                  onPressed: () {
                    elementPop();
                  },
                  icon: const Icon(
                    Icons.backspace,
                    size: 40,
                    color: Colors.grey,
                  )),
              PNumberButton(
                onTap: () {
                  if (cal.isNotEmpty) {
                  appendToCal('0');
                    
                  }
                },
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
    required this.onTap,
  });

  final int num;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 35,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            '$num',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
