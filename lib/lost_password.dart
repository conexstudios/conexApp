import 'package:flutter/material.dart';
import 'package:flutter_login_ui/login_page.dart';

class LostPage extends StatefulWidget {
  static String tag = "lost-page";
  @override
  LostPageState createState() => LostPageState();
}

class LostPageState extends State<LostPage> {
  int current_step = 0;
  List<Step> my_steps = [
    Step(
        title: Text("¿?"),
        content: TextField(
          obscureText: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "...",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ),
        isActive: true),
    Step(
        title: Text("¿?"),
        content: TextField(
          obscureText: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "...",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ),
        isActive: true),
    Step(
        title: Text("¿?"),
        content: TextField(
          obscureText: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "...",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ),
        isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pregutas de Seguridad"),
      ),
      body: Container(
          child: Stepper(
        currentStep: this.current_step,
        steps: my_steps,
        type: StepperType.vertical,
        onStepTapped: (step) {
          setState(() {
            current_step = step;
          });
          print("onStepTapped : " + step.toString());
        },
        onStepCancel: () {
          setState(() {
            if (current_step > 0) {
              current_step = current_step - 1;
            } else {
              current_step = 0;
            }
          });
          print("onStepCancel : " + current_step.toString());
        },
        onStepContinue: () {
          setState(() {
            if (current_step < my_steps.length - 1) {
              current_step = current_step + 1;
            } else {
              current_step = 0;
            }
          });
          print("onStepContinue : " + current_step.toString());
        },
      )),
    );
  }
}