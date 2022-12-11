import 'dart:convert';
import 'dart:html';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart'as http;
class CategoriesService{
  Future<List<ProductModel>> getCategoriesProducts({required String categoryName})async
  {
 List<dynamic> data= await Api().get(url:'https://fakestoreapi.com/products/category/$categoryName');


      List<ProductModel> productsLists = [];
      for (int i = 0; i < data.length; i++) {
        productsLists.add(ProductModel.fromJson(data[i]),
        );
      }
      return productsLists;

  }
}
