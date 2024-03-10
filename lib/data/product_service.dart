import 'package:bloc_sample/models/product.dart';

class ProductService {
  static List<Product> products = [];

  static ProductService _singleton = ProductService._internal();

 factory ProductService() {
  return _singleton;
 }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(new Product(1, "Acer Laptop", 6000));
    products.add(new Product(2, "Dell Laptop", 7000));
    products.add(new Product(3, "Asus Laptop", 8000));
    return products;
  }
}