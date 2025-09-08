import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../model/place.dart';

class DetailsPage extends StatelessWidget {
  final Place place;
  const DetailsPage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return buildLargeWidget(Colors.green, fontSize);
        } else {
          return buildSmallWidget(fontSize);
        }
      },
    );
  }

  Widget buildSmallWidget(double fontSize) => Scaffold(
    body: ListView(
      children: [
        Image.asset(
          place.image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 320,
        ),
        buildSubtitle(fontSize),
        buildButtons(),
        buildDescription(fontSize),
      ],
    ),
  );

  Widget buildLargeWidget(Color color, double fontSize) =>
      SingleChildScrollView(
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 6,
          margin: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      place.image,
                      height: 320,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    buildSubtitle(fontSize),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: buildButtons(),
                    ),
                    buildDescription(fontSize)
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildSubtitle(double fontSize) => Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(place.title, style: TextStyle(fontSize: 18)),
            Text(
              place.subtitle,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.red),
            Padding(padding: const EdgeInsets.all(8.0), child: Text('41')),
          ],
        ),
      ],
    ),
  );

  Widget buildButtons() => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButton(Colors.green, 'CALL', Icons.call),
        buildButton(Colors.green, 'ROUTE', Icons.near_me),
        buildButton(Colors.green, 'SHARE', Icons.share),
      ],
    ),
  );

  // 🔹 Individual button
  Widget buildButton(Color color, String label, IconData icon) => Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      const SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: color,
        ),
      ),
    ],
  );

  Widget buildDescription(double fontSize) => Padding(
    padding: EdgeInsets.all(24.0),
    child: AutoSizeText(
      place.description,
      style: TextStyle(fontSize: fontSize),
      minFontSize: 16,
      maxFontSize: 20,
    ),
  );
}
