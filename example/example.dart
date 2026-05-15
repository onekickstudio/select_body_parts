import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:select_body_parts/body_part_provider.dart';
import 'package:select_body_parts/back_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BodyPartProvider(),
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BodyPartProvider>();
    final selectedParts = provider.selectedMuscles.join(", ");
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BackBody(),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Selected Parts:\n$selectedParts",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
