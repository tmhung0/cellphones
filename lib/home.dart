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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Danh Mục",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Wrap(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 3,
                          offset: Offset(0, 6))
                    ]),
                width: 110,
                height: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhonePage()));
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/dienthoai.png'),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Điện thoại'),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 3,
                          offset: Offset(0, 6))
                    ]),
                width: 110,
                height: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhonePage()));
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/amthanh.png'),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Âm thanh'),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 3,
                          offset: Offset(0, 6))
                    ]),
                width: 110,
                height: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhonePage()));
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/dongho.png'),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Đồng hồ'),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 3,
                          offset: Offset(0, 6))
                    ]),
                width: 110,
                height: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhonePage()));
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/maytinh.png'),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Máy tính'),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 3,
                          offset: Offset(0, 6))
                    ]),
                width: 110,
                height: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhonePage()));
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/hangcu.png'),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Hàng cũ'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
