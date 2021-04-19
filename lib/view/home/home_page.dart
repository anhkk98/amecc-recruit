import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/carouse.dart';
import 'components/main_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool checkView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.purple,
                  expandedHeight: 70.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      alignment: Alignment.center,
                      color: Colors.purple,
                      child: Text(
                        'Bạn cần hỗ trợ tìm việc làm? Vui lòng gửi hồ sơ tại đây!',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    ///
                    _header(),
                    ///
                    TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 0),
                      onTap: (index) {
                        print(index);
                        setState(() {
                          checkView = true;
                        });
                      },
                      tabs: [
                        Tab(
                          child: Container(
                            padding: EdgeInsets.all(2),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Ứng viên',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '(Tìm việc & Ứng tuyển)',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey[700],
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: EdgeInsets.all(2),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Tin tức',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '(Thông báo & Tin tức)',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey[700],
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: EdgeInsets.all(2),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid))),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/svg/employer.svg'),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Nhà tuyển dụng',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                      Text(
                                        '(Tìm việc & Ứng tuyển)',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey[700],
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: checkView ? TabBarView(
              children: [
                _tab1(),
                _tab2(),
                _tab3(),
              ],
            ): MainView(),
          ),
        ),
      ),
    );
  }

  Widget _tab1(){
    return Text('1');
  }
  Widget _tab2(){
    return Text('2');
  }
  Widget _tab3(){
    return Text('3');
  }

  Widget _header() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/logo.png'),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Cộng tác viên',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this.widgetHeader, this._tabBar);

  final Widget widgetHeader;
  final TabBar _tabBar;

  @override
  double get minExtent => 109;
  @override
  double get maxExtent => 109;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          widgetHeader,
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: Colors.grey,
          ),
          _tabBar
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
