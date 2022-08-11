import 'package:flutter/material.dart';

void main() {
  runApp(const ApplicationFlexible());
}

class ApplicationFlexible extends StatefulWidget {
  const ApplicationFlexible({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ApplicationState();
}

class ApplicationState extends State<ApplicationFlexible> {
  String str = "";

  @override
  void initState() {
    // TODO: implement initState
    str = "Click me!";
    super.initState();
  }

  void clickButton() {
    setState(() {
      str = "Without further interruption, let's celebrate and suck some dick!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful widget",
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            textColor: Colors.red,
            onPressed: () => clickButton(),
            child: Text(str),
          ),
        ),
      ),
    );
  }
}
