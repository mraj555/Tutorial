import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({Key? key}) : super(key: key);

  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  var _step = [
    Step(
      title: Text('Step 1'),
      content: Container(
        color: Colors.black,
        height: 100,
        width: 100,
      ),
    ),
    Step(
      title: Text('Step 2'),
      content: Container(
        color: Colors.red,
        height: 100,
        width: 100,
      ),
    ),
    Step(
      title: Text('Step 3'),
      content: Container(
        color: Colors.yellow,
        height: 100,
        width: 100,
      ),
    ),
    Step(
      title: Text('Step 4'),
      content: Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
    ),
    Step(
      title: Text('Step 5'),
      content: Container(
        color: Colors.amberAccent,
        height: 100,
        width: 100,
      ),
    ),
  ];

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          ),
          titleTextStyle: GoogleFonts.vollkorn(fontSize: 20),
          centerTitle: true,
          title: Text('Stepper'),
        ),
        body: Column(
          children: [
            Container(
              child: Stepper(
                physics: AlwaysScrollableScrollPhysics(),
                steps: _step,
                currentStep: _currentStep,
                type: StepperType.horizontal,
                onStepContinue: _currentStep < _step.length - 1
                    ? () {
                        setState(
                          () {
                            _currentStep++;
                          },
                        );
                      }
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
