import 'package:geolocator/geolocator.dart';

class Location {
  Location();
  double lattitude;
  double longitude;

  Future getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      lattitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
