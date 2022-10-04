import 'package:cellphones/location.dart';
import 'package:cellphones/phone_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ'),
      ),
      drawer: Drawer(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LocationApp()));
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.location_on,
              color: Colors.blue,
              size: 40,
            ),
            Text(
              'Location',
              style: TextStyle(fontSize: 20),
            ),
          ]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Danh Mục",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Wrap(
            children: [
              Item(
                image: Image.asset('assets/images/dienthoai.png'),
                name: 'Điện thoại',
              ),
              Item(
                image: Image.asset('assets/images/amthanh.png'),
                name: 'Âm thanh',
              ),
              Item(
                image: Image.asset('assets/images/dongho.png'),
                name: 'Đồng hồ',
              ),
              Item(
                image: Image.asset('assets/images/hangcu.png'),
                name: 'Hàng cũ',
              ),
              Item(
                image: Image.asset('assets/images/maytinh.png'),
                name: 'Máy tính',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  String name;
  Image image;
  Item({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 5, offset: Offset(0, 5))
          ]),
      width: 110,
      height: 150,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PhonePage()));
        },
        child: Column(
          children: [
            image,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name),
            )
          ],
        ),
      ),
    );
  }
}
