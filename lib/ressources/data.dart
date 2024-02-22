import 'package:starbucks/gen/assets.gen.dart';
import 'package:starbucks/model/category.dart';
import 'package:starbucks/model/product.dart';
import 'package:starbucks/model/size.dart';

final List<Product> products = [
  Product(
      name: "Vanilla Frappuccino",
      price: 24.80,
      image: Assets.images.products.vanila.path),
  Product(
      name: "Caramel Frappuccino",
      price: 30.00,
      image: Assets.images.products.caramel.path),
  Product(
      name: "Mocha Coconut Frappuccino",
      price: 45.50,
      image: Assets.images.products.mochaCoconut.path),
  Product(
      name: "Matcha Green Tea",
      price: 15.75,
      image: Assets.images.products.matchaGreenTea.path),
  Product(
      name: "Caramelly Intense Frappuccino",
      price: 35.00,
      image: Assets.images.products.caramellyIntense.path),
  Product(
      name: "Milkshake",
      price: 12.00,
      image: Assets.images.products.milkshake.path),
];


List<Category> categories = [
  Category(name: "HOT COFFEE", icon: Assets.images.coffee.path),
  Category(name: "DRINKS", icon: Assets.images.drinks.path),
  Category(name: "HOT TEAS", icon: Assets.images.tea.path),
  Category(name: "BAKERY", icon: Assets.images.bakery.path),
];

final List<SizeModel> sizes = [
  SizeModel(name: "Tall", quantity: "12 Fl Oz"),
  SizeModel(name: "Grande", quantity: "16 Fl Oz"),
  SizeModel(name: "Venti", quantity: "24 Fl Oz"),
  SizeModel(name: "Custom", quantity: "__ Fl Oz"),
];
