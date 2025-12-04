import 'dart:convert';
import 'dart:developer';

import 'package:avenueproperties/Model/DashboardModel/dashboardmodel.dart';
import 'package:http/http.dart' as http;

class DashboradController {
  Future<List<DashboardModel>> firstGetdata() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/dashboradApi.php?assign_agent=41'); // Replace with your actual API URL
      final response = await http.get(
        uri,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['dashboard'];
        log("Body Response ------$data");
        return data.map((item) => DashboardModel.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}
