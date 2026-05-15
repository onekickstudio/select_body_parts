import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:select_body_parts/body_part_paths.dart';
import 'package:select_body_parts/muscle_button.dart';

class BackBody extends StatefulWidget {
  final Color selectedMuscleColor;
  final Color unselectedMuscleColor;
  final Color? bodyOutlineColor;
  final double lineThickness;

  const BackBody({
    super.key,
    this.selectedMuscleColor = Colors.red,
    this.unselectedMuscleColor = Colors.white,
    this.bodyOutlineColor,
    this.lineThickness = 0,
  });

  @override
  State<BackBody> createState() => _BackBodyState();
}

class _BackBodyState extends State<BackBody> {
  final _svgReady = Completer<void>();

  @override
  void initState() {
    super.initState();
    _precacheSvg();
  }

  Future<void> _precacheSvg() async {
    if (_svgReady.isCompleted) return;
    try {
      SvgPicture.asset('assets/back_body.svg');
      _svgReady.complete();
    } catch (_) {
      _svgReady.completeError('Failed to load back_body.svg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 500,
        width: 280,
        child: Stack(children: [
          RepaintBoundary(
            child: Padding(
              padding: const EdgeInsets.only(left: 2.1),
              child: FutureBuilder<void>(
                future: _svgReady.future,
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    return const SizedBox.shrink();
                  }
                  return SvgPicture.asset(
                    'assets/back_body.svg',
                    colorFilter: widget.bodyOutlineColor != null
                        ? ColorFilter.mode(
                            widget.bodyOutlineColor!, BlendMode.srcIn)
                        : null,
                    placeholderBuilder: (_) => const SizedBox.shrink(),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.435, -0.62),
            child: SizedBox(
              height: 30,
              width: 35,
              child: MuscleButton(
                bodyPartName: "Shoulder",
                bodyShapePath: BodyPartPaths.rearShoulderRight,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.415, -0.62),
            child: SizedBox(
              height: 30,
              width: 35,
              child: MuscleButton(
                bodyPartName: "Shoulder",
                bodyShapePath: BodyPartPaths.rearShoulderLeft,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.592, -0.468),
            child: SizedBox(
              height: 50,
              width: 30,
              child: MuscleButton(
                bodyPartName: "Triceps",
                bodyShapePath: BodyPartPaths.leftTriceps,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.602, -0.458),
            child: SizedBox(
              height: 40,
              width: 30,
              child: MuscleButton(
                bodyPartName: "Triceps",
                bodyShapePath: BodyPartPaths.rightTriceps,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.85, -0.26),
            child: SizedBox(
              height: 70,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Forearm",
                bodyShapePath: BodyPartPaths.leftForearm,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.865, -0.26),
            child: SizedBox(
              height: 70,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Forearm",
                bodyShapePath: BodyPartPaths.rightForearm,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.01, -0.674),
            child: SizedBox(
              height: 20,
              width: 70,
              child: MuscleButton(
                bodyPartName: "Upper Back",
                bodyShapePath: BodyPartPaths.backTraps,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.01, -0.57),
            child: SizedBox(
              height: 60,
              width: 45,
              child: MuscleButton(
                bodyPartName: "Middle Back",
                bodyShapePath: BodyPartPaths.middleTraps,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.01, -0.30),
            child: SizedBox(
              height: 60,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Lower Back",
                bodyShapePath: BodyPartPaths.lowerback,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.26, -0.475),
            child: SizedBox(
              height: 120,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Back Lats",
                bodyShapePath: BodyPartPaths.rightBackLat,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.25, -0.475),
            child: SizedBox(
              height: 120,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Back Lats",
                bodyShapePath: BodyPartPaths.leftBackLat,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.17, -0.052),
            child: SizedBox(
              height: 50,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Glutes",
                bodyShapePath: BodyPartPaths.leftGlute,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.18, -0.052),
            child: SizedBox(
              height: 50,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Glutes",
                bodyShapePath: BodyPartPaths.rightGlute,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.255, 0.21),
            child: SizedBox(
              height: 110,
              width: 50,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: MuscleButton(
                  bodyPartName: "Hamstring",
                  bodyShapePath: BodyPartPaths.leftHamstring,
                  selectedColor: widget.selectedMuscleColor,
                  unselectedColor: widget.unselectedMuscleColor,
                  lineThickness: widget.lineThickness,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.25, 0.21),
            child: SizedBox(
              height: 100,
              width: 50,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 9.0, left: 5),
                child: MuscleButton(
                  bodyPartName: "Hamstring",
                  bodyShapePath: BodyPartPaths.rightHamstring,
                  selectedColor: widget.selectedMuscleColor,
                  unselectedColor: widget.unselectedMuscleColor,
                  lineThickness: widget.lineThickness,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.345, 0.65),
            child: SizedBox(
              height: 40,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Calf",
                bodyShapePath: BodyPartPaths.leftCalf,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.362, 0.65),
            child: SizedBox(
              height: 40,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Calf",
                bodyShapePath: BodyPartPaths.rightCalf,
                selectedColor: widget.selectedMuscleColor,
                unselectedColor: widget.unselectedMuscleColor,
                lineThickness: widget.lineThickness,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
