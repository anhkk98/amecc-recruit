
import 'package:amecc_recruit/model/business/slider_model.dart';
import 'package:flutter/material.dart';

class CarouseHome extends StatefulWidget {
  @override
  _CarouseHomeState createState() => _CarouseHomeState();
}

class _CarouseHomeState extends State<CarouseHome> {
  List<Map<String, String>> splashData = [
    {'image': 'assets/images/banner.jpg'},
    {'image': 'assets/images/banner.jpg'},
  ];

  int currentPage = 0;

  var controller = PageController();

  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<SliderModel>>(
        future: getSlider(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData ? Stack(
            alignment: Alignment.center,
            children: [
              PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(snapshot.data[index].url,fit: BoxFit.cover,),
                  );
                },
              ),
              Positioned(
                bottom: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  List.generate(snapshot.data.length, (index) => buildDot(index)),
                ),
              ),
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 8,
                  child: _directional(() {
                    setState(() {
                      controller.previousPage(duration: _kDuration, curve: _kCurve);
                    });
                  }, Icons.arrow_back_ios_rounded)),
              Positioned(
                  top: 0,
                  bottom: 0,
                  right: 8,
                  child: _directional(
                        () {
                      setState(() {
                        controller.nextPage(duration: _kDuration, curve: _kCurve);
                      });
                    },
                    Icons.arrow_forward_ios_rounded,
                  ))
            ],
          ): CircularProgressIndicator();
        },
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 8),
      duration: Duration(milliseconds: 200),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentPage == index
              ? Colors.white
              : Colors.indigo[900].withOpacity(0.5),
          shape: BoxShape.circle),
    );
  }

  Widget _directional(Function onTap, IconData iconData) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration:
            BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Icon(
          iconData,
          color: Colors.grey[600],
          size: 16,
        ),
      ),
    );
  }
}
