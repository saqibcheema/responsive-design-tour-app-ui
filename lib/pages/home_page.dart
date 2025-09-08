import 'package:flutter/material.dart';
import 'package:responsive_design/pages/details_page.dart';
import '../data/places.dart';
import '../model/place.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/place_gallery_widget.dart';
import '../widgets/responsive_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Place selectedPlace = allPlaces[0];
  void changePlace(Place place) => setState(() {
    selectedPlace = place;
  });
  
  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWidget.isMobile(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Tour App-Responsive'),
        backgroundColor: Colors.green,
      ),
      drawer: isMobile ? const Drawer(child: DrawerWidget()) : null,
      body: ResponsiveWidget(
        mobile: buildMobile(),
        tablet: buildTablet(),
        desktop: buildDesktop(),
      ),
    );
  }

  Widget buildMobile() => PlaceGalleryWidget(onPlaceChanged: changePlace,);

  Widget buildTablet() =>
      Row(
          children: [
            Expanded(
                flex: 2,
                child: DrawerWidget()
            ),
            Expanded(
                flex: 5,
                child: PlaceGalleryWidget(onPlaceChanged: changePlace)
            )
          ]
      );

  Widget buildDesktop() => Row(
    children: [
      Expanded(
          flex: 1,
          child: DrawerWidget()
      ),
      Expanded(
          flex: 3,
          child: buildBody()
      )
    ],
  );

  Widget buildBody() => Container(
    color: Colors.white,
    child: Column(
      children: [
        Expanded(
            child: PlaceGalleryWidget(horizontal: true,onPlaceChanged: changePlace)
        ),
        Expanded(
            flex: 2,
            child: DetailsPage(place: selectedPlace)
        )
      ],
    ),
  );
}

