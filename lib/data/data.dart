import '../models/food.dart';
import '../models/order.dart';
import '../models/restaurant.dart';
import '../models/user.dart';


final _coffeblack = Food(image: 'assets/cafeden1.png', name: "Cà Phê Đen", price: 12.000);
final _coffemilk = Food(image: 'assets/cafesua.png', name: "Cà Phê Sữa", price: 20.000);
final _drinkcam = Food(image: 'assets/nuoccam.png', name: "Nước Cam", price: 25.000);
final _drinkchanh = Food(image: 'assets/nuocchanh.png', name: "Nước Chanh", price: 25.000);
final _tradao = Food(image: 'assets/tradao.png', name: "Trà Dào", price: 30.000);
final _trasua = Food(image: 'assets/trasua.png', name: "Trà Sữa", price: 30.000);


final _restaurant1 = Restaurant(
    image: 'assets/ban.png',
    name: "Bàn 1",
    address: "Quận 7",
    rating: 4,
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua]
);
final _restaurant2 = Restaurant(
    image: 'assets/ban.png',
    name: "Bàn 2",
    address: "Quận 7",
    rating: 4,
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua]
);
final _restaurant3 = Restaurant(
    image: 'assets/ban.png',
    name: "Bàn 3",
    address: "Quận 7",
    rating: 4,
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua]
);
final _restaurant4 = Restaurant(
    image: 'assets/ban.png',
    name: "Bàn 4",
    address: "Quận 7",
    rating: 4,
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua]
);
final _restaurant5 = Restaurant(
    image: 'assets/ban.png',
    name: "Bàn 5",
    address: "Quận 7",
    rating: 4,
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua]
);
final _restaurant6 = Restaurant(
    image: 'assets/ban.png',
    name: "Bàn 6",
    address: "Quận 7",
    rating: 4,
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua]
);





final List<Restaurant> restaurant = [
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
  _restaurant5,
  _restaurant6,
];

final curentUser = User(name: "Khải",
    orders: [
      Order(restaurant: _restaurant1, food: _trasua, date: "25/11/2022", quantity: 1, price: 20000),
      Order(restaurant: _restaurant2, food: _tradao, date: "30/11/2022", quantity: 1, price: 20000),
      Order(restaurant: _restaurant3, food: _coffeblack, date: "11/1/2022", quantity: 1, price: 20000),
      Order(restaurant: _restaurant4, food: _drinkchanh, date: "8/5/2022", quantity: 1, price: 20000),
      Order(restaurant: _restaurant5, food: _coffemilk, date: "6/2/2022", quantity: 1, price: 20000),
      Order(restaurant: _restaurant6, food: _drinkcam, date: "22/6/2022", quantity: 1, price: 20000),
    ],

    cart: [
      Order(restaurant: _restaurant1 , food: _coffemilk, date: "20/11/2022", quantity: 2,price: 20000),
      Order(restaurant: _restaurant2 , food: _tradao, date: "20/11/2022", quantity: 2, price: 20000),
      Order(restaurant: _restaurant3 , food: _coffeblack, date: "20/11/2022", quantity: 2, price: 20000),
      Order(restaurant: _restaurant4 , food: _drinkchanh, date: "20/11/2022", quantity: 2, price: 20000),
      Order(restaurant: _restaurant5 , food: _coffemilk, date: "20/11/2022", quantity: 2, price: 20000),
      Order(restaurant: _restaurant6 , food: _drinkcam, date: "20/11/2022", quantity: 2, price: 20000),
    ]
);
