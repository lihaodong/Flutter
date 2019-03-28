import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('listview示例'),
        ),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              print('$index');
              if (index.isOdd) {
                return Divider();
              }
              return ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('$index号模特'),
                subtitle: Text('$index棒棒哒'),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }),
      ),
    );
  }
}
class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      //一次性加载所有item
      children: List.generate(100, (index) {
        return Text(
          '$index',
          style: TextStyle(fontSize: 20.0),
        );
      }),
    );
  }
}

class NormalListView extends StatelessWidget {
  const NormalListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('favorite_border'),
          subtitle: Text('favorite_border'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('favorite_border'),
          subtitle: Text('favorite_border'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('favorite_border'),
          subtitle: Text('favorite_border'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('favorite_border'),
          subtitle: Text('favorite_border'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
