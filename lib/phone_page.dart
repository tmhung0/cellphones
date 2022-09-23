import 'package:flutter/material.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Điện thoại')),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.count(
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 5)
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        child: Image.asset('assets/images/iphone_11.png')),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'iPhone 11 64GB I Chính hãng VN/A ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 18,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 8),
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '6.1 inches',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '128 GB',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: '10.890.000 đ',
                          style: TextStyle(color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(
                              text: '14.890.000 đ',
                              style: TextStyle(
                                  color: Colors.black38,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ]),
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('Yêu thích'),
                        Icon(Icons.heart_broken_rounded)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        child: Image.asset('assets/images/iphone_13.jpg')),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'iPhone 13 64GB I Chính hãng VN/A ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 18,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 8),
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '6.1 inches',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '128 GB',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: '20.890.000 đ',
                          style: TextStyle(color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(
                              text: '25.890.000 đ',
                              style: TextStyle(
                                  color: Colors.black38,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ]),
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('Yêu thích'),
                        Icon(Icons.heart_broken_rounded)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        child: Image.asset('assets/images/ip13-pro_2.jpg')),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'iPhone 13 Pro Max 128GB | Chính hãng VN/A ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 18,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 8),
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '6.7 inches',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '128 GB',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: '26.890.000 đ',
                          style: TextStyle(color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(
                              text: '34.890.000 đ',
                              style: TextStyle(
                                  color: Colors.black38,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        child:
                            Image.asset('assets/images/iphone_12_pro_max.png')),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'iPhone 12 128GB I Chính hãng VN/A ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 18,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 8),
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '6.1 inches',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '128 GB',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: '22.890.000 đ',
                          style: TextStyle(color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(
                              text: '24.890.000 đ',
                              style: TextStyle(
                                  color: Colors.black38,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        child: Image.asset(
                            'assets/images/sm-s908_galaxys22ultra_front_burgundy_211119.jpg')),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Samsung Galaxy Z Fold4',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 18,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 8),
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '7 inches',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '128 GB',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: '15.890.000 đ',
                          style: TextStyle(color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(
                              text: '20.890.000 đ',
                              style: TextStyle(
                                  color: Colors.black38,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        child: Image.asset('assets/images/iphone_11.png')),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'iPhone 11 64GB I Chính hãng VN/A ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 18,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 8),
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '6.1 inches',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '128 GB',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: '10.890.000 đ',
                          style: TextStyle(color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(
                              text: '14.890.000 đ',
                              style: TextStyle(
                                  color: Colors.black38,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        child: Image.asset('assets/images/iphone_11.png')),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'iPhone 11 64GB I Chính hãng VN/A ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 18,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 8),
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '6.1 inches',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Text(
                              '128 GB',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: '10.890.000 đ',
                          style: TextStyle(color: Colors.red),
                          children: <TextSpan>[
                            TextSpan(
                              text: '14.890.000 đ',
                              style: TextStyle(
                                  color: Colors.black38,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
