import 'package:amecc_recruit/view/home/components/carouse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'introduction_video.dart';
import 'list_work.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.grey[300],
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: CarouseHome(),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6,right: 6),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Tìm kiếm cơ hội giới thiệu',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                              border: InputBorder.none,

                            ),

                          ),
                        ),
                      ),
                      Container(width: 1,color: Colors.grey,),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            bottomRight: Radius.circular(4)
                          ),color: Colors.blue[600],),
                          alignment: Alignment.center,child: Icon(Icons.search,color: Colors.white,)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Đề xuất: ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: 'Reactjs',
                        style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()..onTap = () => print('ReactJs'),
                      ),
                      TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: 'Design',
                        style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()..onTap = () => print('Design'),
                      ),
                      TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: '.NET',
                        style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()..onTap = () => print('.NET'),
                      ),
                      TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: 'PHP',
                        style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()..onTap = () => print('PHP'),
                      ),
                      TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: 'Marketing',
                        style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()..onTap = () => print('Marketing'),
                      ),
                      TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: 'Sale',
                        style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()..onTap = () => print('Sale'),
                      ),
                      TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: 'Mobile',
                        style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                        recognizer: new TapGestureRecognizer()..onTap = () => print('Mobile'),
                      )
                    ]
                  )),
                ),
              ],
            ),
          ),
          IntroductionVideo(),
          SizedBox(height: 15,),
          Container(margin: EdgeInsets.only(left: 25,right: 25),height: 1,color: Colors.grey[400],),
          ListWork()
        ],
      ),
    );
  }
}
