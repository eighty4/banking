import 'package:flutter/material.dart';

import 'gradients.dart';
import 'routes.dart';

final groupings = ['Business', 'Purchases', 'Medical'];

class GroupingsScreen extends StatelessWidget {
  static const crossAxisSpacingProportion = .05;
  static const mainAxisSpacingProportion = .05;

  const GroupingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final crossAxisSpacing = crossAxisSpacingProportion * size.width;
    final mainAxisSpacing = mainAxisSpacingProportion * size.height;
    return Padding(
      padding: EdgeInsets.all(crossAxisSpacing),
      child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing,
          children: [
            ...groupings
                .map((grouping) => GroupingBox(label: grouping))
                .toList(),
            const GroupingAdminBox(groupingExtent: 150)
          ]),
    );
  }
}

class GroupingBox extends StatelessWidget {
  final String label;

  const GroupingBox({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'grouping-$label',
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 20,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            gradient: clouds,
          ),
          child: Column(children: [
            Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7)),
                    gradient: wantItDarker),
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Center(
                    child: Text(label,
                        style: const TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 17)))),
          ]),
        ),
      ),
    );
  }
}

class GroupingAdminBox extends StatelessWidget {
  final double groupingExtent;

  const GroupingAdminBox({super.key, required this.groupingExtent});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'groupings-admin',
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 20,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(BankingRoutes.groupings);
            },
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  gradient: wantItDarker,
                ),
                child: Center(
                    child: Icon(Icons.settings,
                        size: groupingExtent / 2, color: Colors.white))),
          ),
        ),
      ),
    );
  }
}
