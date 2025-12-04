import 'dart:convert';
import 'dart:developer';

import 'package:avenueproperties/Model/Brokerage/brokerage.dart';
import 'package:avenueproperties/Model/TotalDeal/deal.dart';
import 'package:http/http.dart' as http;

class TotalBrokerageconytoller {
  Future<List<BroKeRage>> brokerageData() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/brokerage.php?assign_agent=41&page=1'); // Replace with your actual API URL
      final response = await http.get(
        uri,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['brokerage'];
        log("Body Response Brokerage ------$data");
        return data.map((item) => BroKeRage.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }

  Future<List<TotalDeal>> dealData() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/deal.php?assign_agent=41&page=1'); // Replace with your actual API URL
      final response = await http.get(
        uri,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['dealWon'];
        log("Body Response DealData ------$data");
        return data.map((item) => TotalDeal.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}
