import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IntroductionVideo extends StatefulWidget {
  @override
  _IntroductionVideoState createState() => _IntroductionVideoState();
}

class _IntroductionVideoState extends State<IntroductionVideo> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://r8---sn-42u-nbosk.googlevideo.com/videoplayback?expire=1618579411&ei=cjt5YIH7Odj4xN8PnK2iEA&ip=176.67.85.219&id=o-AN5EthkszglQZFDKpHZy6Y9RnZIVJfzNNTosX7j9nqCh&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=oT1cMbct2c-JcZnkIVIwj5YF&gir=yes&clen=7549021&ratebypass=yes&dur=106.602&lmt=1546695131419970&fvip=4&fexp=24001373,24007246&c=WEB&txp=5531432&n=FaCeplFdomffFT&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgb7LtFZTQHXTZDaX6c6ZjhLmxhtd2sSHf6CThvg2nhoMCIG5YcfMF83Z9cdtYShpN_Vd2dl4F_hnhvtnBLZJiMWWH&redirect_counter=1&rm=sn-aigez67e&req_id=91f7a1e3ab1fa3ee&cms_redirect=yes&ipbypass=yes&mh=mD&mip=210.2.98.74&mm=31&mn=sn-42u-nbosk&ms=au&mt=1618557643&mv=m&mvi=8&pl=24&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIhANyQoX7MKzFnQ9Z7AcfNx_3GQ8FyrhsYL7bIVQ8cxawnAiBdE0JIQlujPl8n3I7rR4IriHO9FdZ8aXrTue-rn5CUsg%3D%3D'
    );
    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();
    // Use the controller to loop the video.
    _controller.setLooping(true);
    // _controller.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the video.
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        // Use the VideoPlayer widget to display the video.
                        child: VideoPlayer(_controller),
                      ),
                      Positioned(
                        bottom: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: (){
                              setState(() {
                                if (_controller.value.isPlaying) {
                                  _controller.pause();
                                } else {
                                  // If the video is paused, play it.
                                  _controller.play();
                                }
                              });
                          },
                          child: Icon(_controller.value.isPlaying ?  Icons.pause:Icons.play_arrow, size: 60, color:_controller.value.isPlaying ?Colors.white.withOpacity(0.3): Colors.white,),
                        ),
                      ),
                      Container(height: 8,child: VideoProgressIndicator(_controller, allowScrubbing: true,)),
                    ],
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          SizedBox(height: 10,),
          Text('Kiếm tiền bằng cách giới thiệu nhân sự cho doanh nghiệp',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 8,),
          Row(
            children: [
              Container(width: 6,height: 6,decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),),
              SizedBox(width: 8,),
              Expanded(child: Text('Bạn có thể làm việc bất cứ đâu và bất kỳ khi nào mà bạn thích'))
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Container(width: 6,height: 6,decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle)),
              SizedBox(width: 8,),
              Expanded(child: Text('AMECC cam kết không chia sẻ dữ liệu ứng viên của bạn với bất cứ bên thứ 3 nào'))
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Container(width: 6,height: 6,decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle)),
              SizedBox(width: 8,),
              Expanded(child: Text('Gần 1000 vị trí từ hơn 500 doanh nghiệp hàng đầu đang cần bạn tìm kiếm ứng viên'))
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Container(width: 6,height: 6,decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle)),
              SizedBox(width: 8,),
              Expanded(child: Text('Miễn phí công cụ quản lý ứng viên và theo dõi trạng thái ứng viên tức thì'))
            ],
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 25),
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.circular(5)
            ),
            child: Text('Đăng ký cộng tác viên tuyển dụng',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
          ),
        ],
      ),
    );
  }
}
