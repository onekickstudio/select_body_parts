// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:select_body_parts/body_part_paths.dart';
import 'package:select_body_parts/muscle_button.dart';

class FrontBody extends StatefulWidget {
  final Color selectedMuscleColor;
  final Color unselectedMuscleColor;
  final Color outlineColor;
  final double lineThickness;

  const FrontBody({
    super.key,
    this.selectedMuscleColor = Colors.red,
    this.unselectedMuscleColor = Colors.white,
    this.outlineColor = Colors.black,
    this.lineThickness = 0,
  });

  @override
  State<FrontBody> createState() => _FrontBodyState();
}

class _FrontBodyState extends State<FrontBody> {
  // final _svgReady = Completer<void>();
  // late SvgPicture _svg;

  @override
  void initState() {
    super.initState();
    // _precacheSvg();
  }

  // Future<void> _precacheSvg() async {
  //   if (_svgReady.isCompleted) return;
  //   try {
  //     final AssetManifest manifest =
  //         await AssetManifest.loadFromAssetBundle(rootBundle);
  //     final List<String> svgAssetPaths = manifest
  //         .listAssets()
  //         .where((path) => path.toLowerCase().endsWith('front_body.svg'))
  //         .toList();

  //     String rawXmlContent = await rootBundle.loadString(svgAssetPaths[0]);
  //     _svg = SvgPicture.string(rawXmlContent);

  //     _svgReady.complete();
  //   } catch (_) {
  //     _svgReady.completeError('Failed to load front_body.svg');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 500,
          width: 280,
          child: Stack(
            children: [
              // RepaintBoundary(
              //   child: Padding(
              //     padding: const EdgeInsets.only(right: 1.5),
              //     child: FutureBuilder<void>(
              //       future: _svgReady.future,
              //       builder: (context, snapshot) {
              //         if (snapshot.connectionState != ConnectionState.done) {
              //           return const SizedBox.shrink();
              //         }
              //         return _svg;
              //       },
              //     ),
              //   ),
              // ),
              Align(
                alignment: const Alignment(-0.22, -0.695),
                child: SizedBox(
                  height: 18,
                  width: 25,
                  child: MuscleButton(
                    bodyPartName: "Traps",
                    bodyShapePath: BodyPartPaths.leftTrap,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.22, -0.695),
                child: SizedBox(
                  height: 18,
                  width: 25,
                  child: MuscleButton(
                    bodyPartName: "Traps",
                    bodyShapePath: BodyPartPaths.rightTrap,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.405, -0.613),
                child: SizedBox(
                  height: 30,
                  width: 35,
                  child: MuscleButton(
                    bodyPartName: "Shoulder",
                    bodyShapePath: BodyPartPaths.rightFrontShoulder,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.405, -0.613),
                child: SizedBox(
                  height: 30,
                  width: 35,
                  child: MuscleButton(
                    bodyPartName: "Shoulder",
                    bodyShapePath: BodyPartPaths.leftFrontShoulder,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.575, -0.45),
                child: SizedBox(
                  height: 50,
                  width: 30,
                  child: MuscleButton(
                    bodyPartName: "Biceps",
                    bodyShapePath: BodyPartPaths.rightBiceps,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.575, -0.45),
                child: SizedBox(
                  height: 50,
                  width: 30,
                  child: MuscleButton(
                    bodyPartName: "Biceps",
                    bodyShapePath: BodyPartPaths.leftBiceps,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.248, -0.58),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: MuscleButton(
                    bodyPartName: "Chest",
                    bodyShapePath: BodyPartPaths.rightChest,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.248, -0.58),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: MuscleButton(
                    bodyPartName: "Chest",
                    bodyShapePath: BodyPartPaths.leftChest,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, -0.32),
                child: SizedBox(
                  height: 120,
                  width: 60,
                  child: MuscleButton(
                    bodyPartName: "Abdominals",
                    bodyShapePath: BodyPartPaths.abdominals,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.8, -0.274),
                child: SizedBox(
                  height: 60,
                  width: 30,
                  child: MuscleButton(
                    bodyPartName: "Front Arm",
                    bodyShapePath: BodyPartPaths.rightFrontArm,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.8, -0.274),
                child: SizedBox(
                  height: 60,
                  width: 30,
                  child: MuscleButton(
                    bodyPartName: "Front Arm",
                    bodyShapePath: BodyPartPaths.leftFrontArm,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.285, -0.37),
                child: SizedBox(
                  height: 80,
                  width: 25,
                  child: MuscleButton(
                    bodyPartName: "Obliques",
                    bodyShapePath: BodyPartPaths.leftObliques,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.285, -0.37),
                child: SizedBox(
                  height: 80,
                  width: 25,
                  child: MuscleButton(
                    bodyPartName: "Obliques",
                    bodyShapePath: BodyPartPaths.rightObliques,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.24, 0.185),
                child: SizedBox(
                  height: 110,
                  width: 40,
                  child: MuscleButton(
                    bodyPartName: "Quads",
                    bodyShapePath: BodyPartPaths.rightQuad,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.24, 0.185),
                child: SizedBox(
                  height: 110,
                  width: 40,
                  child: MuscleButton(
                    bodyPartName: "Quads",
                    bodyShapePath: BodyPartPaths.leftQuad,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.385, 0.93),
                child: SizedBox(
                  height: 110,
                  width: 30,
                  child: MuscleButton(
                    bodyPartName: "Calf",
                    bodyShapePath: BodyPartPaths.frontRightCalf,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.385, 0.93),
                child: SizedBox(
                  height: 110,
                  width: 30,
                  child: MuscleButton(
                    bodyPartName: "Calf",
                    bodyShapePath: BodyPartPaths.frontLeftCalf,
                    selectedColor: widget.selectedMuscleColor,
                    unselectedColor: widget.unselectedMuscleColor,
                    outlineColor: widget.outlineColor,
                    lineThickness: widget.lineThickness,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
