import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirloin_clone/screens/login_screen.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // 없어도 되지만 있으면 안정감을 주는 느낌적인 느낌으로 추가(?)
      width: double.infinity,
      child: Column( // 가로로 배치 <-> 세로 배치는 Column
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 메인축 정렬 (Row 계승해서 가로)
        crossAxisAlignment: CrossAxisAlignment.start,// 반대축 정렬
        children: [
          Container( // 로그인/회원가입 컨테이너
              color: Colors.white,
              padding: EdgeInsets.only(top: 20, bottom: 10, left: 10),
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,// 반대축 정렬
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: TextButton(
                        child: Text('로그인 · 회원가입 > ', style: TextStyle(
                            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                        },
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: Text('앱 설치 시 10% 할인쿠폰 지급!!')
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(color: Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(Colors.white),

                          ),
                          onPressed: (){},
                          child: Text('혜택 안내', style: TextStyle(
                              color: Colors.black
                          ),)),
                    )
                  ]
              )
            // height: 50, margin: EdgeInsetsDirectional(24),
          ),
          Container( // 광고 배너
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.only(bottom: 20),
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Image.asset('assets/advertise_banner.png'),
              iconSize: 130,
              onPressed: () {},
            ),
          ),
          Container( // 메뉴 리스트
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.black12,
                              width: 1.0
                          )
                      )
                  ),
                  child: Column(
                    children: [
                      TextButton(onPressed: () {}, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('전체 리뷰', style: TextStyle(color: Colors.black, fontSize: 20)),
                          Text('>', style: TextStyle(color: Colors.black, fontSize: 20))
                        ],
                      )),
                      TextButton(onPressed: () {}, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('자주 묻는 질문', style: TextStyle(color: Colors.black, fontSize: 20)),
                          Text('>', style: TextStyle(color: Colors.black, fontSize: 20))
                        ],
                      )),
                      TextButton(onPressed: () {}, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('고객센터', style: TextStyle(color: Colors.black, fontSize: 20)),
                          Text('>', style: TextStyle(color: Colors.black, fontSize: 20))
                        ],
                      )),
                      TextButton(onPressed: () {}, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('기업 구매', style: TextStyle(color: Colors.black, fontSize: 20)),
                          Text('>', style: TextStyle(color: Colors.black, fontSize: 20))
                        ],
                      )),
                      TextButton(onPressed: () {}, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('이벤트', style: TextStyle(color: Colors.black, fontSize: 20)),
                          Text('>', style: TextStyle(color: Colors.black, fontSize: 20))
                        ],
                      )),
                      TextButton(onPressed: () {}, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('공지사항', style: TextStyle(color: Colors.black, fontSize: 20)),
                          Text('>', style: TextStyle(color: Colors.black, fontSize: 20))
                        ],
                      )),
                    ],
                  )
              )
          ),
        ],
      ),
    );
  }
}
