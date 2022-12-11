import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Text('서비스 이용을 위해\n로그인이 필요합니다.', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold))),
            // SizedBox(height: 20, width: double.infinity),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(padding: EdgeInsets.all(0), onPressed: () {}, icon: Image.asset('assets/naver_button.png'), iconSize: 70,),
                  IconButton(padding: EdgeInsets.all(0), onPressed: () {}, icon: Image.asset('assets/kakao_button.png'), iconSize: 70),
                  IconButton(padding: EdgeInsets.all(0), onPressed: () {}, icon: Image.asset('assets/apple_button.jpeg'), iconSize: 70),
                  IconButton(padding: EdgeInsets.all(0), onPressed: () {}, icon: Image.asset('assets/sirloin_button.png'), iconSize: 70),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              constraints: BoxConstraints(),
              padding: EdgeInsets.only(bottom: 40),
              child: IconButton(
                // padding 제거
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                icon: Image.asset('assets/advertise_square.png'),
                iconSize: 350,
                onPressed: () {},
              )
            ),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {  },
                child: Text('비회원 주문기록을 보고싶으신가요?', style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
