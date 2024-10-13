import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/get_all_product_service.dart';
import 'package:store/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.cartPlus),
          )
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: GetAllProductService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.07,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 78,
                  ),
                  itemBuilder: (context, index) {
                    return CustomCard(
                      productModel: products[index],
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
