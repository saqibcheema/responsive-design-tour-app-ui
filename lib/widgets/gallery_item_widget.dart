import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/pages/details_page.dart';
import 'package:responsive_design/widgets/responsive_widget.dart';

import '../model/place.dart';

class GalleryItemWidget extends StatelessWidget {
  const GalleryItemWidget({super.key,required this.place,required this.onPlaceChanged});
  final Place place;
  final ValueChanged<Place> onPlaceChanged;

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    return Container(
      color: Colors.grey.shade200,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            title: AutoSizeText(place.title,style: TextStyle(fontSize: fontSize),minFontSize: 18,maxFontSize: 28,),
            subtitle: AutoSizeText(place.subtitle,style: TextStyle(fontSize: fontSize),minFontSize: 18,maxFontSize: 28,),
          ),
            child: InkWell(
              onTap: (){
                final isMobile = ResponsiveWidget.isMobile(context);
                final isTablet = ResponsiveWidget.isTablet(context);

                if(isMobile || isTablet){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(place: place)));
                }else{
                  onPlaceChanged(place);
                }
              },
              child: GridTile(
                  child: Ink.image(image: AssetImage(place.image),fit: BoxFit.cover,)
              ),
            )
        ),
      ),
    );
  }
}
