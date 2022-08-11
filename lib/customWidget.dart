import 'package:flutter/material.dart';

main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Custom widget",
      home: Scaffold(
        body: CustomWidget(),
      ),
    );
  }
}

// Create custom widget based on Stateless widget
class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Container(
        color: Colors.red,
        margin: const EdgeInsets.all(15.0),
        child: Container(
          color: Colors.green,
          margin: const EdgeInsets.all(15.0),
          child: Container(
            color: Colors.indigo,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.pink,
              margin: const EdgeInsets.all(15.0),
            ),
          ),
        ),
      ),
    );
  }
}
