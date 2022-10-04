import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math' show cos, sqrt, asin;

class LocationApp extends StatefulWidget {
  LocationApp({super.key});

  @override
  State<LocationApp> createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  var locationMessage = "";
  var total;

  //ham lay vi tri hien tai va tinh khoang cach
  void getCurrentLocationAndTotalDistance() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    var lat1 = position.latitude;
    var long1 = position.longitude;
    var addr = position.accuracy;
    print(addr);
    setState(() {
      locationMessage = "Latitude: $lat1 ,Longitude: $long1";
      if (lat == null && lng == null) {
        total = 0;
      } else {
        total = calculateDistance(lat1, long1, lat, lng);
      }
    });
    print(total);
  }

  //ham tinh khoang cach
  double calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  List<dynamic> listAddress = [
    {
      "name": "P. Tô Hiệu, Nghĩa Tân,Cầu Giấy, Hà Nội",
      "lat": 21.0417,
      "lng": 105.7932
      //21.0304  105.7859 21.1188, 105.9598
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
  var valueChoose;
  var valueList;
  var lat;
  var lng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              hint: Text('Select address'),
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue as String?;
                  if (valueChoose == listAddress[0]['name']) {
                    lat = listAddress[0]['lat'];
                    lng = listAddress[0]['lng'];
                  }
                  if (valueChoose == listAddress[1]['name']) {
                    lat = listAddress[1]['lat'];
                    lng = listAddress[1]['lng'];
                  }
                  if (valueChoose == listAddress[2]['name']) {
                    lat = listAddress[2]['lat'];
                    lng = listAddress[2]['lng'];
                  }
                  if (valueChoose == listAddress[3]['name']) {
                    lat = listAddress[3]['lat'];
                    lng = listAddress[3]['lng'];
                  }
                  print(lat.runtimeType);
                  print(lng);
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text(
                'Lat: ${lat == null ? '...' : lat} , Long: ${lng == null ? '...' : lng}'),
            SizedBox(
              height: 20,
            ),
            Text("Get Location",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text(locationMessage),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  getCurrentLocationAndTotalDistance();
                },
                child: Text(
                  'Get Current Location',
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
                'Distance : ${total == null ? ' 0 ' : total.toStringAsFixed(2)} Km',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
