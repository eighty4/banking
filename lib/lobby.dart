import 'package:flutter/material.dart';

import 'gradients.dart';
import 'groupings.dart';

class LobbyScreen extends StatelessWidget {
  static const splitWidthProportion = .3;
  static const groupingExtentProportion = .2;
  static const verticalPaddingProportion = .02;

  const LobbyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final split = size.width * splitWidthProportion;
    final groupingExtent = size.height * groupingExtentProportion;
    final boxPadding = size.height * verticalPaddingProportion;
    return Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        right: split,
        bottom: 0,
        child: Padding(
          padding: EdgeInsets.only(
              top: boxPadding, left: boxPadding, right: boxPadding),
          child: Column(children: [
            const PlaceholderBox(label: 'New Activity'),
            Padding(
              padding: EdgeInsets.only(top: boxPadding),
              child: const PlaceholderBox(label: 'Accounts'),
            ),
            Padding(
              padding: EdgeInsets.only(top: boxPadding),
              child: const PlaceholderBox(label: 'Receipts'),
            ),
          ]),
        ),
      ),
      Positioned(
        top: 0,
        left: size.width - split,
        right: 0,
        bottom: 0,
        child: Container(
          padding: EdgeInsets.only(bottom: boxPadding, right: boxPadding),
          child: ListView.builder(
              itemCount: groupings.length + 1,
              itemExtent: groupingExtent,
              itemBuilder: (context, i) {
                final groupingBox = i < groupings.length
                    ? GroupingBox(label: groupings[i])
                    : GroupingAdminBox(groupingExtent: groupingExtent);
                return Padding(
                    padding: EdgeInsets.only(top: boxPadding),
                    child: groupingBox);
              }),
        ),
      ),
    ]);
  }
}

class PlaceholderBox extends StatelessWidget {
  final String label;

  const PlaceholderBox({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      elevation: 20,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), gradient: wantItDarker),
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Center(
              child: Text(label,
                  style: const TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                      fontSize: 17)))),
    );
  }
}
