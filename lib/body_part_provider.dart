import 'package:flutter/material.dart';

class BodyPartProvider extends ChangeNotifier {
  final List<String> _selectedMuscles = [];

  List<String> get selectedMuscles => List.unmodifiable(_selectedMuscles);

  bool isSelected(String bodyPart) => _selectedMuscles.contains(bodyPart);

  void toggleSelection(String bodyPart) {
    if (isSelected(bodyPart)) {
      _selectedMuscles.remove(bodyPart);
    } else {
      _selectedMuscles.add(bodyPart);
    }
    notifyListeners();
  }
}
