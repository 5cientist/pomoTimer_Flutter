import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomotimer/timerServices.dart';
import 'package:pomotimer/widgets/progressWidget.dart';
import 'package:pomotimer/widgets/timeController.dart';
import 'package:pomotimer/widgets/timeoptions.dart';
import 'package:pomotimer/widgets/timercard.dart';
import 'package:pomotimer/utils.dart';
import 'package:provider/provider.dart';

class PomotimeScreen extends StatelessWidget {
  const PomotimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          "PomoTimer",
          style: GoogleFonts.montserrat(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.refresh,
              ),
              iconSize: 35,
              onPressed: () =>
                  Provider.of<TimerService>(context, listen: false).reset()),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TimerCard(),
              SizedBox(
                height: 40,
              ),
              TimeOptions(),
              SizedBox(
                height: 30,
              ),
              TimeController(),
              SizedBox(
                height: 30,
              ),
              ProgressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
