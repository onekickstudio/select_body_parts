import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:select_body_parts/body_part_provider.dart';
import 'package:select_body_parts/muscle_path_painter.dart';

class MuscleButton extends StatelessWidget {
  final String bodyShapePath;
  final String bodyPartName;
  final Color selectedColor;
  final Color unselectedColor;
  final Color outlineColor;
  final double lineThickness;

  const MuscleButton({
    super.key,
    required this.bodyShapePath,
    required this.bodyPartName,
    this.selectedColor = Colors.red,
    this.unselectedColor = Colors.white,
    this.outlineColor = Colors.black,
    this.lineThickness = 0,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BodyPartProvider>();
    return GestureDetector(
      onTap: () => provider.toggleSelection(bodyPartName),
      child: CustomPaint(
        painter: MusclePathPainter(
          pathData: bodyShapePath,
          isActive: provider.isSelected(bodyPartName),
          activeColor: selectedColor,
          passiveColor: unselectedColor,
          outlineColor: outlineColor,
          strokeWidth: lineThickness,
        ),
      ),
    );
  }
}
