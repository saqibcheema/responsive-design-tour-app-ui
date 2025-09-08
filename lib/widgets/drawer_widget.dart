import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../data/states.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    return ListView.builder(
      itemCount: allStates.length + 1,
      itemBuilder: (context, index) {
        return index == 0
            ? buildHeader(fontSize)
            : buildMenueItem(index, fontSize);
      },
    );
  }

  Widget buildHeader(double fontSize) => DrawerHeader(
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: ExactAssetImage('images/swat.jpg'),
      ),
    ),
    child: Container(
      alignment: Alignment.bottomLeft,
      child: AutoSizeText(
        'Pakistan',
        minFontSize: 22,
        maxFontSize: 30,
        style: TextStyle(fontSize: fontSize, color: Colors.white),
      ),
    ),
  );

  Widget buildMenueItem(int index, double fontSize) => ListTile(
    leading: Icon(Icons.location_city),
    title: AutoSizeText(
      allStates[index - 1],
      style: TextStyle(fontSize: fontSize),
      minFontSize: 18,
      maxFontSize: 28,
    ),
  );
}
