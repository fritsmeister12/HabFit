import 'package:flutter/material.dart';
import 'package:habfit/components/habit_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Bool to control habit completed
  bool habitCompleted = false;

  // Checkbox was tapped
  void checkBoxTapped(bool? value) {
    setState(() {
      habitCompleted = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(children: [
        HabitTile(
          habitName: 'Ontb  S',
          habitCompleted: habitCompleted,
          onChanged: (value) => checkBoxTapped(value),
        ),
      ]),
    );
  }
}
