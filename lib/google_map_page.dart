import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPage();
}

class _GoogleMapPage extends State<GoogleMapPage> {
  static const googlePlex = LatLng(13.7940393, 100.3216458);

  @override
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: googlePlex,
            zoom: 14
          ),
          markers: {
            Marker(
              markerId: MarkerId('googlePlex'),
              position: googlePlex,
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            )
          },
        )
      ),
    );
  }
}


