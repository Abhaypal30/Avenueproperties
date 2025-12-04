import 'dart:convert';
import 'dart:developer';

import 'package:avenueproperties/Model/TotalLead/totallead.dart';
import 'package:http/http.dart' as http;

class TotalLeadController {
  Future<List<TotalLead>> totalData() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/AssignLeadsApi.php?assign_agent=41&page=1'); // Replace with your actual API URL
      final response = await http.get(
        uri,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['allLead'];
        log("RESPONSE DATA ------$data");
        return data.map((item) => TotalLead.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}
