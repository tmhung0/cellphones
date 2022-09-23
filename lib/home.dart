import 'package:cellphones/phone_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Danh Mục",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 130,
                  height: 130,
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhonePage()));
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/dienthoai.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Điện thoại'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 130,
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('assets/images/amthanh.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Âm thanh'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 130,
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('assets/images/dongho.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Đồng hồ'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 130,
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('assets/images/hangcu.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Hàng cũ'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 130,
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('assets/images/maytinh.png'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Máy tính'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
