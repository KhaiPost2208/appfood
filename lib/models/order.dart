import './food.dart';
import './restaurant.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final int quantity;

  Order({
    required this.restaurant,
    required this.food,
    required this.quantity,
});

}