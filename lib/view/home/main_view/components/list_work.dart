
import 'package:amecc_recruit/model/business/search_by_province_type_job.dart';
import 'package:flutter/material.dart';

class ListWork extends StatefulWidget {
  @override
  _ListWorkState createState() => _ListWorkState();
}

class _ListWorkState extends State<ListWork> {
  Future<List<SearchByProvinceTypeJobModel>> fetchJob;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchJob = getJob();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cơ hội nhận thưởng',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 15),
          FutureBuilder<List<SearchByProvinceTypeJobModel>>(
            future: fetchJob,
            builder: (context, snapshot){
              if(snapshot.hasError) print(snapshot.error);
              return snapshot.hasData ? Column(
                children: snapshot.data.map((e) => _buildBody(e)).toList(),
              ) : CircularProgressIndicator();
            },
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 25),
            decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(5)
            ),
            child: Text('Xem tất cả các vị trí',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(SearchByProvinceTypeJobModel job) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey[300]),
      ),
      padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: job.urlImage != null ? Image.network(job.urlImage): Image.asset('assets/images/logo_job.png'),
          ),
          SizedBox(
            width: 6,
          ),
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          job?.title ?? '',
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ),
                      job?.isUrgentRecruit ?? true ? Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red[400]
                        ),
                        padding: EdgeInsets.only(top: 4,bottom: 3,left: 5,right: 5),
                        child: Text('TUYỂN GẤP',style: TextStyle(fontSize: 9, color: Colors.white),),
                      ): Container()
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Wrap(
                    children: job.workSkill.split(', ').map((e) => _condition(e)).toList()
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          children: [
                        TextSpan(text: '700 - 1,000 \$'),
                        TextSpan(text: ' | '),
                        TextSpan(text: job.provinceCodeName),
                      ])),
                  SizedBox(
                    height: 8,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(
                            text: 'Thưởng 12,000,000 VNĐ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        TextSpan(text: ' / '),
                        TextSpan(text: 'ứng viên'),
                      ])),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Giới thiệu ngay',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget _condition(String text) {
    return Container(
      margin: EdgeInsets.only(top: 2, right: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200]),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 10, right: 10),
      child: Text(
        text,
        style: TextStyle(color: Colors.grey[700], fontSize: 12),
      ),
    );
  }
}
