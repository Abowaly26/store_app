class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(JsonData) {
    return ProductModel(
      id: JsonData['id'],
      title: JsonData['title'],
      price: JsonData['price'],
      description: JsonData['description'],
      image: JsonData['image'],
      rating: RatingModel.formJson(JsonData['rating'])
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.formJson(JsonData) {
    return RatingModel(
      rate: JsonData['rate'],
      count: JsonData['count'],
    );
  }
}

