import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleHomePage extends StatefulWidget {
  @override
  googleMapsHomePage createState() => googleMapsHomePage();
}

class googleMapsHomePage extends State<GoogleHomePage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // icon: Icon(FontAwesomeIcon.arrowLeft),
          icon: Icon(Icons.arrow_left),
          onPressed: () {},
        ),
        title: Text("New York"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            // icon: Icon(FontAwesomeIcon.arrowLeft),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          _googlemap(context),
        ],
      ),
    );
  }
}

Widget _googlemap(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: GoogleMap(
      initialCameraPosition:
          CameraPosition(target: LatLng(40.712776, -74.0), zoom: 12),
      mapType: MapType.normal,
      onMapCreated: (GoogleMapController controller) {
        var _controller;
        _controller.complete(controller);
      },
      markers: {
        mark1,
        mark2,
      },
    ),
  );
}

Marker mark1 = Marker(
  markerId: MarkerId('mark1'),
  position: LatLng(40.742451, -74.005959),
  infoWindow: InfoWindow(title: 'Bahar was here'),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
);

Marker mark2 = Marker(
  markerId: MarkerId('mark1'),
  position: LatLng(40.729640, -73.983510),
  infoWindow: InfoWindow(title: 'Sirey is here'),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
);
