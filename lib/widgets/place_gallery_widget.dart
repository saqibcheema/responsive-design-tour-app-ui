import 'package:flutter/material.dart';
import 'package:responsive_design/data/places.dart';

import '../model/place.dart';
import 'gallery_item_widget.dart';

class PlaceGalleryWidget extends StatelessWidget {
  final bool horizontal;
  final ValueChanged<Place> onPlaceChanged;
  const PlaceGalleryWidget({super.key, this.horizontal = false, required this.onPlaceChanged});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: horizontal ? 1: 2,
      scrollDirection: horizontal ? Axis.horizontal :Axis.vertical,
      children: allPlaces
          .map<Widget>((place) => GalleryItemWidget(place: place, onPlaceChanged: onPlaceChanged,))
          .toList(),
    );
  }
}
