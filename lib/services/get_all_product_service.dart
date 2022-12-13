import 'dart:convert';

import 'package:http/http.dart%20';
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

import 'package:http/http.dart'as http;

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
    await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}