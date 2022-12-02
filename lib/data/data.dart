import '../models/food.dart';
import '../models/order.dart';
import '../models/restaurant.dart';
import '../models/user.dart';


final _coffeblack = Food(image: 'assets/cafeden1.png', name: "Cà Phê Đen", price: 12.000);
final _coffemilk = Food(image: 'assets/cafesua.png', name: "Cà Phê Sữa", price: 20.000);
final _drinkcam = Food(image: 'assets/nuoccam.png', name: "Nước Cam", price: 25.000);
final _drinkchanh = Food(image: 'assets/nuocchanh.png', name: "Nước Chanh", price: 25.000);
final _tradao = Food(image: 'assets/tradao.png', name: "Trà Đào", price: 30.000);
final _trasua = Food(image: 'assets/trasua.png', name: "Trà Sữa", price: 30.000);
final _bacxiu = Food(image: 'assets/bacxiu.png', name: 'Bạc Xỉu', price: 20.000);
final _sinhtobo = Food(image: 'assets/sinhtoto.png', name: "Sinh Tố Bơ", price: 25.000);
final _suachua = Food(image: 'assets/suachua.png', name: "Sữa Chua", price: 20.000);
final _tralipton = Food(image: 'assets/tralipton.png', name: "Trà Lipton", price: 18.000);


final _restaurant1 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 1",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant2 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 2",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant3 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 3",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant4 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 4",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant5 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 5",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant6 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 6",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant7 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 7",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant8 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 8",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant9 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 9",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);
final _restaurant10 = Restaurant(
    image: 'assets/coffeeluxury.png',
    name: "Bàn 10",
    address: "Nam Trung Coffee",
    menu: [_coffeblack, _coffemilk, _drinkcam, _drinkchanh, _tradao, _trasua, _bacxiu, _sinhtobo, _suachua, _tralipton]
);





final List<Restaurant> restaurant = [
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
  _restaurant5,
  _restaurant6,
  _restaurant7,
  _restaurant8,
  _restaurant9,
  _restaurant10,
];

final curentUser = User(name: "Khải",
    orders: [
      Order(restaurant: _restaurant1, food: _trasua, quantity: 1),
      Order(restaurant: _restaurant2, food: _tradao,  quantity: 1),
      Order(restaurant: _restaurant3, food: _coffeblack, quantity: 1),
      Order(restaurant: _restaurant4, food: _drinkchanh, quantity: 1),
      Order(restaurant: _restaurant5, food: _coffemilk, quantity: 1),
      Order(restaurant: _restaurant6, food: _drinkcam, quantity: 1),
      Order(restaurant: _restaurant7, food: _bacxiu, quantity: 1),
      Order(restaurant: _restaurant8, food: _sinhtobo, quantity: 1),
      Order(restaurant: _restaurant9, food: _suachua, quantity: 1),
      Order(restaurant: _restaurant10, food: _tralipton, quantity: 1),
    ],

    cart: [
      Order(restaurant: _restaurant1 , food: _coffemilk, quantity: 2),
      Order(restaurant: _restaurant2 , food: _tradao,  quantity: 2),
      Order(restaurant: _restaurant3 , food: _coffeblack, quantity: 2),
      Order(restaurant: _restaurant4 , food: _drinkchanh, quantity: 2),
      Order(restaurant: _restaurant5 , food: _coffemilk, quantity: 2),
      Order(restaurant: _restaurant6 , food: _drinkcam, quantity: 2),
      Order(restaurant: _restaurant7, food: _bacxiu, quantity: 1),
      Order(restaurant: _restaurant8, food: _sinhtobo, quantity: 1),
      Order(restaurant: _restaurant9, food: _suachua,  quantity: 1),
      Order(restaurant: _restaurant10, food: _tralipton, quantity: 1),
    ]
);
