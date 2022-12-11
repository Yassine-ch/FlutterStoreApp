import 'dart:convert';

import 'package:http/http.dart%20';
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

import 'package:http/http.dart'as http;

class GetAllProduct {
 Future< List<ProductModel>> getAllProducts()async {
List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');

     List<ProductModel> productsLists = [];
     for (int i = 0; i < data.length; i++) {
       productsLists.add(ProductModel.fromJson(data[i]),
       );
     }
     return productsLists;
   }
}