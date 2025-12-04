import 'dart:convert';
import 'dart:developer';

import 'package:avenueproperties/Model/MeetingModel/meeting.dart';
import 'package:http/http.dart' as http;

class MettingController {
  Future<List<MettingModel>> mettingData() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/meetingApi.php?assign_agent=41&page=1'); // Replace with your actual API URL
      final response = await http.get(
        uri,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['meeting'];
        log("Body Response ------$data");
        return data.map((item) => MettingModel.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}