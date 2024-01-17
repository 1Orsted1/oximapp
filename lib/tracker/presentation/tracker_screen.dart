import 'package:auto_route/auto_route.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:oximapp_v2/tracker/presentation/widgets/folder_widget.dart';

@RoutePage()
class TrackerScreen extends StatefulWidget {
  const TrackerScreen({super.key});

  @override
  State<TrackerScreen> createState() => _TrackerScreenState();
}

class _TrackerScreenState extends State<TrackerScreen> {
  ExpandableController controller = ExpandableController();
  double expandedHeight = 100.0;
  Color selectedColor = Colors.yellow;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  //3 sections like a folder that folds in a animation:
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            const Gap(32),
            InkWell(
              onTap: () {
                controller.toggle();
                setState(() {
                  if (expandedHeight == 100) {
                    selectedColor = Colors.green;
                    expandedHeight = 150;
                  } else {
                    expandedHeight = 100;
                    selectedColor = Colors.yellow;
                  }
                });
              },
              child: AnimatedContainer(
                padding: const EdgeInsets.all(16),
                duration: const Duration(milliseconds: 500),
                width: double.infinity,
                height: expandedHeight,
                color: selectedColor,
                child: ExpandablePanel(
                  controller: controller,
                  theme: const ExpandableThemeData(hasIcon: false),
                  header: const Text("title"),
                  collapsed: const SizedBox.shrink(),
                  expanded: const Column(
                    children: [
                      Text(
                          "hello im expanded now\n\nops here is where it goes"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
