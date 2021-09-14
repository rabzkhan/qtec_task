import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:qtec_task/model/product_model.dart';

class ProductDetailsProvider extends ChangeNotifier {
  late ProductDetailsModel productDetails;

  ProductDetailsProvider() {
    getProductDetails();
  }

  getProductDetails() async {
    var response = await http.get(Uri.parse(
        'http://3.1.180.10/api/product-core/suzuki-gsx-r150-fi-dual-channel-abs-yvj2/0/'));
    var jsonData = jsonDecode(response.body);
    ProductDetailsModel productDetailsModel =
        ProductDetailsModel.fromMap(jsonData);
    productDetails = productDetailsModel;
    notifyListeners();
  }
}
