import 'dart:convert';
import 'package:amecc_recruit/constants/header.dart';
import 'package:http/http.dart' as http;

class IntroduceModel {
  double id;
  String title;
  String type;
  String url;
  bool isActive;
  List<IntroduceDetailModel> introduceDetail;
  String createdBy;
  String rowVersion;

  IntroduceModel({this.id, this.title, this.type, this.url, this.isActive, this.introduceDetail, this.createdBy, this.rowVersion});

  factory IntroduceModel.fromJson(Map<String, dynamic> json){
    
    var list = json['introduceDetail'] as List;

    List<IntroduceDetailModel> listIntroDetail = list.map((e) => IntroduceDetailModel.fromJson(e)).toList();
    
    return IntroduceModel(
      id: json['id'],
      title: json['title'],
      type: json['type'],
      url: json['url'],
      isActive: json['isActive'],
      introduceDetail: listIntroDetail,
      createdBy: json['createdBy'],
      rowVersion: json['rowVersion']
    );
  }

}

class IntroduceDetailModel{
  double id;
  double introduceId;
  String description;
  int order;
  bool isActive;
  String createdBy;
  String rowVersion;

  IntroduceDetailModel({this.id, this.introduceId, this.description, this.order, this.isActive, this.createdBy, this.rowVersion});

  factory IntroduceDetailModel.fromJson(Map<String, dynamic> json){
    return IntroduceDetailModel(
      id: json['id'],
      introduceId: json['introduceId'],
      description: json['description'],
      order: json['order'],
      isActive: json['isActive'],
      createdBy: json['createdBy'],
      rowVersion: json['rowVersion'],
    );
  }
}

List<IntroduceModel> pasedIntro(String resBody){
  final parsed = json.decode(resBody)['data'].cast<Map<String, dynamic>>();
  return parsed.map<IntroduceModel>((json) => IntroduceModel.fromJson(json)).toList();
}

Future<List<IntroduceModel>> getIntro() async{
  final response =  await http.get('http://210.2.98.74:8099/introduce/get-list',headers: HeaderAPI.headers);
  if(response.statusCode == 200){
    return pasedIntro(response.body);
  }else{
    throw Exception('error API Introduce');
  }
}