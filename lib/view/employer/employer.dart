import 'dart:ui';

import 'package:flutter/material.dart';

class Employer extends StatefulWidget {
  @override
  _EmployerState createState() => _EmployerState();
}

class _EmployerState extends State<Employer> {
  Color appBar = HexColor('#800080');
  Color uuDai = HexColor('#90CAF9');
  Color tieuDe = HexColor('#1E88E5');

  Color bg1 = HexColor('#32c3e2');
  Color bg2 = HexColor('#32c3e200');
  Color bg3 = HexColor('#5bbc6c');
  Color bg4 = HexColor('#5bbc6c00');

  List<BoxShadow> shadowList = [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 6.0,
      offset: Offset(0.0, 1.0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.message_rounded,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
      ),
      appBar: AppBar(
        backgroundColor: appBar,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Bạn cần hô trợ tìm việc làm? Vui lòng gửi hồ sơ tại đây!',
            style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 500,
              color: uuDai,
              alignment: Alignment.center,
              child: Text(
                '🎉 ƯU ĐÃI TUYỂN DỤNG MÙA COVID-19',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              // height: 1000.0,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    height: 400.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        // stops: [0.0, 0.3, 0.7, 9],
                        colors: [
                          // Colors are easy thanks to Flutter's Colors class.

                          Colors.yellow[50],

                          Colors.blue[100],
                        ],
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            height: 120,
                            width: 80,
                            child: Column(
                              children: [
                                Image.asset('assets/images/logo.png'),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 4,
                                  ),
                                  child: Text(
                                    'A M E C C',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              'NỀN TẢNG TUYỂN DỤNG 4.0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 38,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 25, horizontal: 21),
                            child: Column(
                              children: [
                                Text(
                                  'GIÚP DOANH NGHIỆP BỨT PHÁ MÙA DỊCH',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  'ỨNG VIÊN CHẤT LƯỢNG – CHI PHÍ TỐI ƯU',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 350.0),
                    // color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 350,
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                              boxShadow: shadowList,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.all(20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'SỐ 1',
                                      style: TextStyle(
                                        color: tieuDe,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                    ),
                                    Text(
                                      'NỀN TẢNG GIỚI THIỆU ỨNG VIÊN SỐ 1 VIỆT NAM',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 350,
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                              boxShadow: shadowList,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.all(20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '3000+',
                                      style: TextStyle(
                                        color: tieuDe,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                    ),
                                    Text(
                                      'HƠN 3000 HEADHUNT TÌM VÀ GIỚI THIỆU ỨNG VIÊN MỖI NGÀY',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 350,
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                              boxShadow: shadowList,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.all(20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '500+',
                                      style: TextStyle(
                                        color: tieuDe,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                    ),
                                    Text(
                                      'HƠN 500 CÔNG TY ĐÃ CHỌN AMECC LÀ KÊNH TUYỂN DỤNG',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.all(30),
                            width: 350,
                            decoration: BoxDecoration(
                              boxShadow: shadowList,
                              color: tieuDe,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.all(15),
                                child: Text(
                                  'ĐĂNG TUYỂN NGAY',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'TẠI SAO',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'KHÁCH HÀNG CHỌN ',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'AMECC?',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'AMECC là nền tảng tuyển dụng hiệu quả tại Đông Nam Á, giúp doanh nghiệp tiếp cận với những ứng viên tiềm năng được chọn lọc, giới thiệu trực tiếp từ hơn 2000 headhunter và chuyên gia trong nhiều lĩnh vực.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: 20,
                            ),
                            Text(
                              'NHANH GỌN',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: tieuDe,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Tìm được nhiều ứng viên phù hợp chỉ trong vòng từ 5-7 ngày.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: 20,
                            ),
                            Text(
                              'TIẾT KIỆM CHI PHÍ',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: tieuDe,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Tiết kiệm 50% chi phí so với các công ty headhunt khác.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: 20,
                            ),
                            Text(
                              'HIỆU QUẢ',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: tieuDe,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Chỉ thanh toán khi tuyển thành công ứng viên.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '4',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: 20,
                            ),
                            Text(
                              'ĐẢM BẢO',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: tieuDe,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Chính sách bảo hành 60 ngày hoàn toàn yên tâm.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      '500+ KHÁCH HÀNG ĐỒNG HÀNH CÙNG RECRUITERY',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 30.0),
                      child: Image.asset('assets/images/client-mobile.PNG')),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'QUY TRÌNH DỊCH VỤ TẠI',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'RECRUITERY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Image.asset('assets/images/process.png'),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 44,
                      width: 350.0,
                      child: Align(
                        child: Text(
                          'LIÊN HỆ ĐỂ NHẬN ỨNG VIÊN NGAY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: shadowList,
                        color: tieuDe,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hotline: ',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '0913138545',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        Container(
                          width: 2,
                          height: 20,
                          color: Colors.black,
                        ),
                        Row(
                          children: [
                            Text(
                              'Tel: ',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '0254.3623879',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w900),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
