// ignore_for_file: must_call_super

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Application()));

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application>
    with SingleTickerProviderStateMixin {
  int _scores = 0;
  late TabController control;

  @override
  void initState() => control = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("App bar widget"),
        // centerTitle: true,
        elevation: 30.0,
        titleSpacing: 50.0,
        toolbarOpacity: 0.7,
        leading: const Icon(Icons.drive_eta_outlined),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  plus();
                });
              },
              icon: const Icon(Icons.plus_one)),
          IconButton(
              onPressed: () {
                setState(() {
                  minus();
                });
              },
              icon: const Icon(Icons.exposure_minus_1))
        ],
        bottom: TabBar(
          controller: control,
          tabs: const [
            Tab(
              icon: Icon(Icons.water),
            ),
            Tab(
              icon: Icon(Icons.food_bank),
            ),
            Tab(
              icon: Icon(Icons.money),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: control,
        children: [
          Center(
            child: Text("Beer: $_scores!!!"),
          ),
          Center(
            child: Text("Crisps: $_scores!!!"),
          ),
          Center(
            child: Text("Bucks: $_scores!!!"),
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.deepOrange,
        child: TabBar(
          controller: control,
          tabs: const [
            Tab(
              icon: Icon(Icons.water),
            ),
            Tab(
              icon: Icon(Icons.food_bank),
            ),
            Tab(
              icon: Icon(Icons.money),
            ),
          ],
        ),
      ),
    );
  }

  void plus() => _scores++;

  void minus() => _scores--;
}
