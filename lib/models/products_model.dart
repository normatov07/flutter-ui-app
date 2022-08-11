class ProductModel {
  final int id;
  final String name;
  final String modelNo;
  final double price;
  final double rating;
  final int ratingCount;
  final String description;
  final List<String> images;

  ProductModel({
    required this.id,
    required this.name,
    required this.modelNo,
    required this.price,
    required this.rating,
    required this.ratingCount,
    required this.description,
    required this.images,
  });
}

List<ProductModel> demoProducts = [
  ProductModel(
    id: 1,
    name: 'Studio 1 Wireless',
    modelNo: 'Mi-342-45',
    price: 356,
    rating: 3,
    ratingCount: 78,
    description: 'imus meta date simple super ali vali',
    images: [
      'assets/images/headphone2.png',
      'assets/images/headphone2.png',
      'assets/images/headphone2.png'
    ],
  ),
  ProductModel(
    id: 3,
    name: 'Studio 7 Wireless',
    modelNo: 'Mi-578-45',
    price: 455,
    rating: 4,
    ratingCount: 98,
    description: 'middle imus meta date simple super ali vali',
    images: [
      'assets/images/headphone1.png',
      'assets/images/headphone1.png',
      'assets/images/headphone1.png'
    ],
  ),

  ProductModel(
    id: 2,
    name: 'Studio 2 Wireless',
    modelNo: 'Mi-342-45',
    price: 299,
    rating: 5,
    ratingCount: 58,
    description: 'best imus meta date simple super ali vali',
    images: [
      'assets/images/headphone2.png',
      'assets/images/headphone2.png',
      'assets/images/headphone2.png'
    ],
  ),
];