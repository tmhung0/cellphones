import 'package:flutter/material.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Điện thoại'),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(6),
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          children: <Widget>[
            Product(
                image: Image.asset('assets/images/ip13-pro_2.jpg'),
                name: 'iPhone 13 Pro Max 128GB | Chính hãng VN/A',
                screen: '6.7 inches',
                memory: '128GB',
                price: '26.990.000 đ',
                priceReal: '34.990.000 đ'),
            Product(
                image: Image.asset('assets/images/iphone_11.png'),
                name: 'iPhone 11 64GB I Chính hãng VN/A ',
                screen: '6.1 inches',
                memory: '64GB',
                price: '10.990.000 đ',
                priceReal: '14.990.000 đ'),
            Product(
                image: Image.asset('assets/images/iphone_12_pro_max.png'),
                name: 'iPhone 12 Pro Max 128GB I Chính hãng VN/A  ',
                screen: '6.7 inches',
                memory: '128GB',
                price: '25.590.000 đ',
                priceReal: '28.990.000 đ'),
            Product(
                image: Image.asset('assets/images/iphone_13.jpg'),
                name: 'iPhone 13 128GB I Chính hãng VN/A ',
                screen: '6.1 inches',
                memory: '128GB',
                price: '15.990.000 đ',
                priceReal: '20.990.000 đ'),
            Product(
                image: Image.asset(
                    'assets/images/sm-s908_galaxys22ultra_front_burgundy_211119.jpg'),
                name: 'SamgSung Chính hãng VN/A ',
                screen: '7.9 inches',
                memory: '256GB',
                price: '20.990.000 đ',
                priceReal: '24.990.000 đ'),
            Product(
                image: Image.asset('assets/images/iphone_11.png'),
                name: 'iPhone 11 64GB I Chính hãng VN/A ',
                screen: '6.1 inches',
                memory: '64GB',
                price: '10.990.000 đ',
                priceReal: '14.990.000 đ'),
            Product(
                image: Image.asset('assets/images/iphone_11.png'),
                name: 'iPhone 11 64GB I Chính hãng VN/A ',
                screen: '6.1 inches',
                memory: '64GB',
                price: '10.990.000 đ',
                priceReal: '14.990.000 đ'),
          ],
        ));
  }
}

class Product extends StatelessWidget {
  Image image;
  String name;
  String screen;
  String memory;
  String price;
  String priceReal;

  Product(
      {required this.image,
      required this.name,
      required this.screen,
      required this.memory,
      required this.price,
      required this.priceReal});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 5)]),
      child: Column(
        children: [
          SizedBox(height: 100, child: image),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    screen,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 4, left: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    memory,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
                text: price,
                style: const TextStyle(color: Colors.red),
                children: <TextSpan>[
                  TextSpan(
                    text: priceReal,
                    style: const TextStyle(
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
    );
  }
}
