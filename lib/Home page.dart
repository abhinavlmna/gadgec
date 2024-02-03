import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Categories> catelist = [
    Categories(name: 'laptop', image: 'assets/images/1img.png'),
    Categories(name: 'Mobile', image: 'assets/images/2img.png'),
    Categories(name: 'Headphone', image: 'assets/images/3img.png'),
    Categories(name: 'Consoles', image: 'assets/images/4img.png'),
    Categories(name: 'Tablets', image: 'assets/images/5img.png'),
  ];
  List<Products> prodlist = [
    Products(
        img: 'assets/images/6img.png',
        name: 'Poco',
        model: 'POCO C55 (Forest Green)',
        price: '13999',
        discount: '-45%',
        feature: '6 GB RAM',
        offerprice: '₹ 7499'),
    Products(
        img: 'assets/images/6img.png',
        name: 'Poco',
        model: 'POCO C55 (Forest Green)',
        price: '13999',
        discount: '-45%',
        feature: '6 GB RAM',
        offerprice: '₹ 7499'),
    Products(
        img: 'assets/images/1img.png',
        name: 'Poco',
        model: 'POCO C55 (Forest Green)',
        price: '13999',
        discount: '-45%',
        feature: '6 GB RAM',
        offerprice: '₹ 7499'),
    Products(
        img: 'assets/images/1img.png',
        name: 'Poco',
        model: 'POCO C55 (Forest Green)',
        price: '13999',
        discount: '-45%',
        feature: '6 GB RAM',
        offerprice: '₹ 7499'),
    // Products(img: 'assets/images/1img.png', name: 'Poco', model: 'POCO C55 (Forest Green)', price: '13999', discount: '-45%', feature: '6 GB RAM', offerprice: '₹ 7499'),
    // Products(img: 'assets/images/1img.png', name: 'Poco', model: 'POCO C55 (Forest Green)', price: '13999', discount: '-45%', feature: '6 GB RAM', offerprice: '₹ 7499'),
    // Products(img: 'assets/images/1img.png', name: 'Poco', model: 'POCO C55 (Forest Green)', price: '13999', discount: '-45%', feature: '6 GB RAM', offerprice: '₹ 7499'),
    // Products(img: 'assets/images/1img.png', name: 'Poco', model: 'POCO C55 (Forest Green)', price: '13999', discount: '-45%', feature: '6 GB RAM', offerprice: '₹ 7499'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 400,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 300, left: 10),
                child: Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catelist.length,
                    itemBuilder: (BuildContext context, int index) {
                      Categories p = catelist[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          child: Column(
                            children: [
                              Image.asset(
                                '${p.image}',
                                height: 58,
                                width: 50,
                              ),
                              Text(
                                '${p.name}',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, top: 300, right: 300),
                  child: Text(
                    'Top Products',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Stack(
                    children: [],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Categories {
  late String name;
  late String image;
  Categories({required this.name, required this.image});
}

class Products {
  late String img;
  late String name;
  late String model;
  late String feature;
  late String discount;
  late String offerprice;
  late String price;
  Products(
      {required this.img,
      required this.name,
      required this.model,
      required this.price,
      required this.discount,
      required this.feature,
      required this.offerprice});
}
