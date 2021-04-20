import 'dart:convert';
import 'package:amecc_recruit/constants/header.dart';
import 'package:http/http.dart' as http;

class SearchByProvinceTypeJobModel{
  double id;
  double recruiterId;
  double expertiseId;
  double careerId;
  String provinceCde;
  String provinceCodeName;
  String districtCde;
  String districtName;
  String wardCde;
  String wardName;
  String title;
  bool isUrgentRecruit;
  double costsIncurred;
  double salaryFrom;
  double salaryTo;
  bool negotiableSalary;
  String workPlace;
  String jobDescription;
  String jobRequest;
  String workingTime;
  String workSkill;
  String recruitDate;
  String reason;
  bool isApproval;
  String approvalBy;
  bool isActive;
  String expertiseName;
  String careerName;
  String companyName;
  String urlImage;
  double numberPerson;
  int totalRows;
  double star;
  bool isLike;
  String createdBy;
  String rowVersion;

  SearchByProvinceTypeJobModel({this.id, this.recruiterId, this. expertiseId, this.careerId, this.provinceCde, this.provinceCodeName, this.districtCde, this.districtName, this.wardCde, this.wardName, this.title, this.isUrgentRecruit, this.costsIncurred, this.salaryFrom,this.salaryTo, this.negotiableSalary, this.workPlace, this.jobDescription, this.jobRequest, this.workingTime,this.workSkill, this.recruitDate, this.reason, this.isApproval, this.approvalBy, this.isActive, this.expertiseName, this.careerName, this.companyName, this.urlImage, this.numberPerson, this.totalRows, this.star, this.isLike, this.createdBy, this.rowVersion});

  factory SearchByProvinceTypeJobModel.fromJson(Map<String, dynamic> json){
    return SearchByProvinceTypeJobModel(
      id: json['id'],
      recruiterId: json['recruiterId'],
      expertiseId: json['expertiseId'],
      careerId: json['careerId'],
      provinceCde: json['provinceCde'],
      provinceCodeName: json['provinceCodeName'],
      districtCde: json['districtCde'],
      districtName: json['districtName'],
      wardCde: json['wardCde'],
      wardName: json['wardName'],
      title: json['title'],
      isUrgentRecruit: json['isUrgentRecruit'],
      costsIncurred: json['costsIncurred'],
      salaryFrom: json['salaryFrom'],
      salaryTo: json['salaryTo'],
      negotiableSalary: json['negotiableSalary'],
      workPlace: json['workPlace'],
      jobDescription: json['jobDescription'],
      jobRequest: json['jobRequest'],
      workingTime: json['workingTime'],
      workSkill: json['workSkill'],
      recruitDate: json['recruitDate'],
      reason: json['reason'],
      isApproval: json['isApproval'],
      approvalBy: json['approvalBy'],
      isActive: json['isActive'],
      expertiseName: json['expertiseName'],
      careerName: json['careerName'],
      companyName: json['companyName'],
      urlImage: json['urlImage'],
      numberPerson: json['numberPerson'],
      totalRows: json['totalRows'],
      star: json['star'],
      isLike: json['isLike'],
      createdBy: json['createdBy'],
      rowVersion: json['rowVersion'],
    );
  }
}

List<SearchByProvinceTypeJobModel> parsedJob(String resBody){
  final parsed = json.decode(resBody)['data'].cast<Map<String, dynamic>>();
  return parsed.map<SearchByProvinceTypeJobModel>((json) => SearchByProvinceTypeJobModel.fromJson(json)).toList();
}

Future<List<SearchByProvinceTypeJobModel>> getJob() async{
  final response = await http.get('http://210.2.98.74:8099/job/search-by-province-type-job?pageIndex=1&pageSize=10',headers: HeaderAPI.headers);
  if(response.statusCode == 200 ){
    return parsedJob(response.body);
  }else{
    throw Exception('error API SearchByProvinceTypeJobModel');
  }
}