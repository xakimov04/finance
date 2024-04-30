import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ExpenseWidget extends StatelessWidget {
  final String title;
  final int amount;
  final Color color;

  const ExpenseWidget({
    required this.title,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 40,
      margin: const EdgeInsets.only(bottom: 10,left: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.white
            ),
          ),
          Text(
            '\$$amount',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 10,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}