import 'package:flutter/material.dart';

class ListWork extends StatefulWidget {
  @override
  _ListWorkState createState() => _ListWorkState();
}

class _ListWorkState extends State<ListWork> {
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
          _buildBody(),
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

  Widget _buildBody() {
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
            child: Image.asset('assets/images/logo_job.png'),
          ),
          SizedBox(
            width: 6,
          ),
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nhân viên Truyền thông, Đối ngoại',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Wrap(
                    children: [
                      _condition('Digital Marketing'),
                      _condition('Java'),
                      _condition('Server'),
                      _condition('DevOps'),
                      _condition('Enginering'),
                      _condition('Software Architecture'),
                    ],
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
                        TextSpan(text: 'Ha Noi'),
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
