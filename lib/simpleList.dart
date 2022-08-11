import 'package:flutter/material.dart';

main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List widget"),
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              title: Text("Item 3"),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              title: Text("Item 4"),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              title: Text("Item 5"),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ],
        ),
      ),
    );
  }
}
