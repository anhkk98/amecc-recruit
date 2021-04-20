import 'dart:convert';
import 'package:amecc_recruit/constants/header.dart';
import 'package:http/http.dart' as http;

class SliderModel{
  double id;
  String title;
  String url;
  int order;
  bool isActive;
  String createdBy;
  String rowVersion;

  SliderModel({this.id,this.title,this.url,this.order,this.isActive,this.createdBy,this.rowVersion});

  factory SliderModel.fromJson(Map<String, dynamic> json){
    return SliderModel(
      id: json['id'],
      title: json['title'],
      url: json['url'],
      order: json['order'],
      isActive: json['isActive'],
      createdBy: json['createdBy'],
      rowVersion: json['rowVersion'],
    );
  }
}

List<SliderModel> pasedSlider(String resBody){
  final parsed = json.decode(resBody)['data'].cast<Map<String, dynamic>>();
  return parsed.map<SliderModel>((json) => SliderModel.fromJson(json)).toList();
}

Future<List<SliderModel>> getSlider() async{

  final response = await http.get('http://210.2.98.74:8099/slider/get-list',headers: HeaderAPI.headers);
  if(response.statusCode == 200){
    return pasedSlider(response.body);
  }else{
    throw Exception('error slider');
  }
}