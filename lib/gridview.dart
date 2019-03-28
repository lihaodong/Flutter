import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('GridView示例'),
          ),
          body:
//          GridView.count(
//            crossAxisCount: 2, //交叉轴
////            scrollDirection: Axis.horizontal,
//            childAspectRatio: 3 / 4, //1.0宽高比
//            children: List.generate(100, (index) {
//              return Container(
//                color: Color(0xffff0000),
//                margin: EdgeInsets.all(10.0),
//                child: Text(
//                  '$index',
//                  style: TextStyle(fontSize: 20.0),
//                ),
//              );
//            }),

          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,//3列
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                print('$index');
                return Container(
                  color: Color(0xffff0000),
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    '$index',
                    style: TextStyle(fontSize: 20.0),
                  ),
                );
              }),
        ));
  }
}
