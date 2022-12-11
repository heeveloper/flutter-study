import 'package:flutter/material.dart';
import 'package:sirloin_clone/screens/my_screen.dart';

void main() {
  // App의 메인 페이지
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sirloin Clone App',
      home: Scaffold( // 상중하로 나누는 위젯
        appBar: AppBar(
          elevation: 0.0, // 그림자 제거
          centerTitle: false, // 가운데 정렬 해제
          backgroundColor: Colors.white,
          // leading: , // 왼쪽 부분 아이콘
          title: Text('마이페이지', style: TextStyle(color: Colors. black, fontWeight: FontWeight.bold)), // 제목
          actions: [ // 우측 액션 버튼 리스트
            Padding( // 액션 패딩
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.shopping_cart_outlined, color: Colors.black)
            )
          ],
        ),
        body: MyScreen(),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox( // width, height, child만 쓰는 경우 Container 대신 가벼운 SizedBox를 사용
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                    Text("홈"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.category)),
                    Text("카테고리"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    Text("검색"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.document_scanner)),
                    Text("매거진"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                    Text("마이"),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
