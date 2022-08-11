import 'package:flutter/material.dart';

main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row and Column"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("One"),
            const Text("Two"),
            const Text("Three"),
            const Text("Four"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("One"),
                Text("Two"),
                Text("Three"),
                Text("Four"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
