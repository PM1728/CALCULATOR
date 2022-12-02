import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

void main() {
  FirstStateful app = const FirstStateful();
  runApp(app);
}

class FirstStateful extends StatefulWidget {
  const FirstStateful({super.key});

  @override
  State<FirstStateful> createState() => _FirstStatefulState();
}

class _FirstStatefulState extends State<FirstStateful> {
  String str = "Stateful";
  double buttonWidth = 100.0;
  Color buttonColor = Colors.amber.shade500;
  String leftValue = "";
  String rightValue = "";
  String operator = "";

  String calculator() {
    int result = int.parse(leftValue) + int.parse(rightValue);
    return result.toString();
  }

  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(text: 'AC', color: Button.DARK, cb: cb),
            Button(text: '%', color: Button.DARK, cb: cb),
            Button.operation(text: '/', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: 'x', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button.big(text: '0', cb: cb),
            Button(text: '.', cb: cb),
            Button.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
