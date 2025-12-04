import 'dart:convert';
import 'dart:developer';

import 'package:avenueproperties/Model/OfferModel/offermodel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class TotalofferController {
  Future<List<OfferModel>> offersData() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/offer.php?assign_agent=41&page=1'); // Replace with your actual API URL
      final response = await http.get(
        uri,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['offer'];
        log("Body Response Brokerage ------$data");
        return data.map((item) => OfferModel.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      Fluttertoast.showToast(msg: "Please check your internet connection");
      throw Exception('Error: $error');
    }
  }
}
