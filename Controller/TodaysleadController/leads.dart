import 'dart:convert';
import 'dart:developer';

import 'package:avenueproperties/Model/TodaysModel/todaysmodel.dart';
import 'package:http/http.dart'as http;

class TodaysController {
    Future<List<TodaysleadModel>> todaysData() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/todayAssignLeads.php?assign_agent=41&page=1'); // Replace with your actual API URL
      final response = await http.get(
        uri,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['todaysLead'];
        log("Body Response ------$data");
        return data.map((item) => TodaysleadModel.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}