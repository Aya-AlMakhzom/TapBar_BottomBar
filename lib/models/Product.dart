import 'package:flutter/material.dart';
class Product{
  final String image,title;
  final String description;
  final int Price,size,id;
  final Color color;
  Product({required this.id, required this.image, required this.title, required this.description, required this.Price, required this.size, required this.color,
  });
}
List<Product> products = [
  Product(id: 1,
      image: "assets/images/a4.png",
      title:"  Office Code",
      description: "Lorem ipsum is simply dummy text of the printing and typesetting industry.lorem ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley"
          "[]-pbngjn",
      Price: 234,
      size: 12,
      color: Color(0xffab5155),)
,  Product(id: 2,
      image: "assets/images/a2.png",
      title:"  Office Code",
      description: "Lorem ipsum is simply dummy text of the printing and typesetting industry.lorem ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley",
      Price: 234,
      size:8,
      color: Color(0xFF51ac60)),
  Product(id: 3,
      image: "assets/images/a3.png",
      title:"  Office Code",
      description: "Lorem ipsum is simply dummy text of the printing and typesetting industry.lorem ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley",
      Price: 985,
      size: 7,
      color: Color(0xFF0274c9)),
  Product(id: 4,
      image: "assets/images/a6.png",
      title:"   Office Code",
      description: "Lorem ipsum is simply dummy text of the printing and typesetting industry.lorem ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley",
      Price: 234,
      size: 7,
      color: Color(0xFFf0c0ad)),
  Product(id: 5,
      image: "assets/images/a5.png",
      title:"  Office Code",
      description: "Lorem ipsum is simply dummy text of the printing and typesetting industry.lorem ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley"
          "'/QAxnccvnvnvnnbbngudhnvfbngjn",
      Price: 234,
      size: 14,
      color: Color(0xFFbb8b55)),
  Product(id: 6,
      image: "assets/images/a1.png",
      title:"  Office Code",
      description: "Lorem ipsum is simply dummy text of the printing and typesetting industry.lorem ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley",
      Price: 454,
      size: 6,
      color: Color(0xFFaf5652)),
  Product(id: 7,
      image: "assets/images/a7.png",
      title:"  Office Code",
      description: "Lorem ipsum is simply dummy text of the printing and typesetting industry.lorem ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley"
          "'/hesf;sd,zccvsdmef[ppgrlzhnvfbngjn",
      Price: 254,
      size: 10,
      color: Color(0xFFfed2ad)),
  Product(id: 8,
      image: "assets/images/99.png",
      title:"  Office Code",
      description: "Lorem ipsum is simply dummy text of the printing and typesetting industry.lorem ipsum has been the industry's standard dummy text ever since.When an unknown printer took a galley",
      Price: 256,
      size: 9,
      color: Color(0xFFf6dab3)),
];