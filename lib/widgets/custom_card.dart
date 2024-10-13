import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
    required this.productModel,
    super.key,
  });

  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 0,
              offset: const Offset(10, 10),
            ),
          ]),
          child: const Card(
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HandBag Lv',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$225',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 32,
          top: -50,
          child: Image.network(
              'https://www.raneen.com/media/images/cache/catalog/category/400x400/Tops-_-T-Shirts.png',
              height: 100),
        ),
      ],
    );
  }
}
