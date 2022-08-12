import 'package:flutter/material.dart';

main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Application();
}

class Application extends State<App> {
  String text = "";
  bool? b = false;
  int? rValue = 0;
  double value = 1.0;
  bool switcher = false;

  void click(int? value) {
    setState(() {
      rValue = value;
      print("Value = $rValue");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Application"),
        ),
        body: Column(
          children: [
            TextField(
              onSubmitted: (String txt) {
                setState(() {
                  text = txt;
                });
              },
              decoration: const InputDecoration(
                  hintText: "Type something", labelText: "Full name"),
            ),
            Text(text),
            RaisedButton(
              onPressed: () {},
              child: const Text("Raised button"),
            ),
            FlatButton(
              onPressed: () {},
              child: const Text("Flat button"),
            ),
            Checkbox(
                value: b,
                onChanged: (bool? bo) {
                  setState(() {
                    b = bo;
                  });
                }),
            Radio(
                value: 1,
                groupValue: rValue,
                onChanged: (int? val) {
                  click(val);
                }),
            Radio(
                value: 2,
                groupValue: rValue,
                onChanged: (int? val) {
                  click(val);
                }),
            Radio(
                value: 3,
                groupValue: rValue,
                onChanged: (int? val) {
                  click(val);
                }),
            Radio(
                value: 4,
                groupValue: rValue,
                onChanged: (int? val) {
                  click(val);
                }),
            Radio(
                value: 5,
                groupValue: rValue,
                onChanged: (int? val) {
                  click(val);
                }),
            Slider(
                value: value,
                min: 1.0,
                max: 10.0,
                onChanged: (double val) {
                  setState(() {
                    value = val;
                  });
                }),
            Text("Value = $value"),
            Switch(
                value: switcher,
                onChanged: (bool b) {
                  setState(() {
                    switcher = b;
                    print(b);
                  });
                })
          ],
        ),
      ),
    );
  }
}
