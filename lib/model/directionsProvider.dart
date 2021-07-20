import 'package:flutter/cupertino.dart';
import 'package:google_maps_webservice/directions.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as maps;

class DirectionsProvider extends ChangeNotifier {
  GoogleMapsDirections directionsApi = GoogleMapsDirections(
    apiKey: 'AIzaSyC8amEhh007Rsvq6myHcmAXk79Sq2YNg2E',
  );
  Set <maps.Polyline> _route = Set();
  Set <maps.Polyline> get currentRoute => _route;
  findDirections(maps.LatLng from, maps.LatLng to) async{
    var origin = Location(from.latitude, from.longitude);
     var destination = Location(to.latitude, to.longitude);

    var result = await directionsApi.directionsWithLocation(origin, destination);
  }
}
