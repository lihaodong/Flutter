import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
void main()=>runApp(ImageDtatefulWidget());
class ImageDtatefulWidget extends StatefulWidget {
  @override
  _ImageDtatefulWidgetState createState() => _ImageDtatefulWidgetState();
}

class _ImageDtatefulWidgetState extends State<ImageDtatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Image Demo"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/tzd.png',
                width: 200.0,
                height: 200.0,
              ),
              Image.network("http://source.yiboshi.com/staticKQ/head/bab6248259054ed380f01f111deb52d3.png",
                width: 100.0,
                height: 100.0,
              ),
              FileImageWidget()
            ],
          ),
        ),
      )
    );
  }
}
class FileImageWidget extends StatefulWidget {
  @override
  _FileImageWidgetState createState() => _FileImageWidgetState();
}

class _FileImageWidgetState extends State<FileImageWidget> {
  File _image;

  Future getImge() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: _image == null
              ? Text('未选择图片！')
              : Image.file(
            _image,
            width: 200.0,
            height: 200.0,
          ),
        ),
        FlatButton(
          onPressed: getImge,
          child: Text(
            '选择图片',
            style: TextStyle(
              color: Color(0xff0000ff),
            ),
          ),
        ),
      ],
    );
  }
}
