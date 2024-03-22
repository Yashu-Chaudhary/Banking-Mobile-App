import 'package:flutter/material.dart';

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
        ExpendedButton(
          index: 0,
          isExpanded: expandedIndex == 0,
          onPressed: () => toggleExpansion(0),
        ),
        ExpendedButton(
          index: 1,
          isExpanded: expandedIndex == 1,
          onPressed: () => toggleExpansion(1),
        ),
        ExpendedButton(
          index: 2,
          isExpanded: expandedIndex == 2,
          onPressed: () => toggleExpansion(2),
        ),
      ],
    );
  }
}

class ExpendedButton extends StatelessWidget {
  const ExpendedButton({
    super.key,
    required this.index,
    required this.isExpanded,
    required this.onPressed,
  });

  final int index;
  final bool isExpanded;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      elevation: 4,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_upward_outlined),
              const SizedBox(height: 8),
              Visibility(
                  visible: isExpanded, child: const Text('Send'))
            ],
          ),
        ),
      ),
    ));
  }
}
