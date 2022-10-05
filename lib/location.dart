// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math' show cos, sqrt, asin;

class LocationApp extends StatefulWidget {
  const LocationApp({super.key});
  @override
  State<LocationApp> createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  String locationMessage = "";
  var distance;
  var latitudeCurrent;
  var longitudeCurrent;
  var valueChoose;
  var valueList;
  var latitude;
  var longitude;
  List<dynamic> listAddress = [
    {
      "name": "P. Tô Hiệu, Nghĩa Tân,Cầu Giấy, Hà Nội",
      "lat": 21.0417,
      "lng": 105.7932
    },
    {
      "name": "Showa Memorial Park",
      "lat": 35.711216175833904,
      "lng": 139.39737072429364
    },
    {
      "name": "Yokohama Museum of Art",
      "lat": 35.45722006595354,
      "lng": 139.6306361709122
    },
    {
      "name": "Yokohama Park",
      "lat": 35.44416697895508,
      "lng": 139.64031764101077
    }
  ];
  //ham lay vi tri hien tai
  void getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      latitudeCurrent = position.latitude;
      longitudeCurrent = position.longitude;
      locationMessage =
          "Latitude: $latitudeCurrent \nLongitude: $longitudeCurrent";
    });
  }

  //ham tinh khoang cach
  void TotalDistance() {
    double calculateDistance(lat1, lon1, lat2, lon2) {
      var p = 0.017453292519943295;
      var c = cos;
      var a = 0.5 -
          c((lat2 - lat1) * p) / 2 +
          c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
      return 12742 * asin(sqrt(a));
    }

    if (latitude == null && longitude == null) {
      distance = 0;
    } else {
      distance = calculateDistance(
          latitudeCurrent, longitudeCurrent, latitude, longitude);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              hint: const Text('Select address'),
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue as String?;
                  switch (valueChoose) {
                    case 'P. Tô Hiệu, Nghĩa Tân,Cầu Giấy, Hà Nội':
                      latitude = listAddress[0]['lat'];
                      longitude = listAddress[0]['lng'];
                      break;
                    case 'Showa Memorial Park':
                      latitude = listAddress[1]['lat'];
                      longitude = listAddress[1]['lng'];
                      break;
                    case 'Yokohama Museum of Art':
                      latitude = listAddress[2]['lat'];
                      longitude = listAddress[2]['lng'];
                      break;
                    case 'Yokohama Park':
                      latitude = listAddress[3]['lat'];
                      longitude = listAddress[3]['lng'];
                      break;
                    default:
                  }
                });
              },
              items: listAddress.map((newValue) {
                return DropdownMenuItem(
                  value: newValue['name'],
                  child: Text(newValue['name']),
                );
              }).toList(),
            ),
            Text(valueChoose == null ? '...' : valueChoose.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Text(
                'Latitude: ${latitude ?? '...'} \nLongitude: ${longitude ?? '...'}'),
            const SizedBox(
              height: 20,
            ),
            const Text("Vị trí địa lý hiện tại",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Text(locationMessage),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  getCurrentLocation();
                },
                child: const Text(
                  'Lấy vị trí hiên tại',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  TotalDistance();
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(
                                'Khoảng cách giữa hai điểm : ${distance == null ? '0' : distance.toStringAsFixed(2)} km '),
                          ));
                },
                child: const Text('Khoảng cách'))
          ],
        ),
      ),
    );
  }
}
