import './food.dart';
class Restaurant {
  final String image;
  final String name;
  final String address;
  final List<Food> menu;

  Restaurant ({
    required this.image,
    required this.name,
    required this.address,
    required this.menu,
});
}