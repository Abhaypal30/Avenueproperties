import 'dart:convert';
import 'dart:developer';

import 'package:avenueproperties/Model/VisitedModel/totalvisit.dart';
import 'package:http/http.dart' as http;

class TotalVisitController {
    Future<List<TotalVisitModel>> visitData() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/visitedApi.php?assign_agent=41&page=1'); // Replace with your actual API URL
      final response = await http.get(
        uri,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['visited'];
        log("RESPONSE DATA ------$data");
        return data.map((item) => TotalVisitModel.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}