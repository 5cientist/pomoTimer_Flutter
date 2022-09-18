import 'package:flutter/material.dart';
import 'package:pomotimer/timerServices.dart';
import 'package:pomotimer/utils.dart';
import 'package:provider/provider.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.rounds}/4",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              "${provider.goal}/12",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "ROUND",
              style: textStyle(25, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              "GOAL",
              style: textStyle(25, Colors.grey[350], FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
