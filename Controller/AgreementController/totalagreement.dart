import 'dart:convert';
import 'dart:developer';

import 'package:avenueproperties/Model/AgreementModel/totalagreement.dart';
import 'package:http/http.dart' as http;

class AgreementController {
  Future<List<AgreementModel>> agreementData() async {
    try {
      final Uri uri = Uri.parse(
          'http://avenueproperties.in/AvenueeApi/aggrement.php?assign_agent=41&page=1');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['aggrement'];
        log("Body Response $data");
        return data.map((item) => AgreementModel.fromjson(item)).toList();

      }else{
        throw Exception("Faild to load data");
      }
    } catch (error) {
      throw Exception("Error $error");
    }
  }
}
