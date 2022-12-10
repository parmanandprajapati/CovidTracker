import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:tracker/Model/WorldStatesModel.dart';
import 'package:tracker/Services/Utilities/app_url.dart';

class StatesServices {

  Future<WorldStatesModal> fetchWorldStateRecords () async{
    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));
    if (response.statusCode== 200){
      var data = jsonDecode(response.body);
      return WorldStatesModal.fromJson(data);
    }
    else{
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> countriesListApi () async{
    var data;
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    data = jsonDecode(response.body);
    if (response.statusCode== 200){

      return data;
    }
    else{
      throw Exception('Error');
    }
  }
}