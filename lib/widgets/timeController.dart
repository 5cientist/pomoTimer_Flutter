import 'package:flutter/material.dart';
import 'package:pomotimer/timerServices.dart';
import 'package:provider/provider.dart';

class TimeController extends StatelessWidget {
  const TimeController({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          icon: provider.timerPlayning
              ? Icon(Icons.pause)
              : Icon(Icons.play_arrow_sharp),
          iconSize: 55,
          color: Colors.white,
          onPressed: () {
            provider.timerPlayning
                ? Provider.of<TimerService>(context, listen: false).pause()
                : Provider.of<TimerService>(context, listen: false).start();
          },
        ),
      ),
    );
  }
}
