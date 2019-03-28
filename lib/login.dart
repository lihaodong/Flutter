import 'package:flutter/material.dart';
void main()=>runApp(LoginStatefulWidget());
class LoginStatefulWidget extends StatefulWidget {
  @override
  _LoginStatefulWidgetState createState() => _LoginStatefulWidgetState();
}

class _LoginStatefulWidgetState extends State<LoginStatefulWidget> {
  GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  String _username;
  String _password;

  void _login() {
    var _loginForm=_loginKey.currentState;
    if(_loginForm.validate()){
      _loginForm.save();
      print('name=$_username,password=$_password');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: _loginKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: '请输入用户名'
                        ),
                        onSaved:(value){
                          print('onSaved=$value');
                          _username=value;
                        },
                        onFieldSubmitted: (value){
                          print('onFieldSubmitted=$value');
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: '请输入密码'
                        ),
                        onSaved:(value){
                          print('onSaved=$value');
                          _password=value;
                        },
                        validator: (value){
                          return value.length<6?'密码长度不够六位':null;
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40.0),
                        width: 400.0,
                        height: 30.0,
                        child: RaisedButton(
                          onPressed: (){
                            _login();
                          },
                          child: Text('登录'),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }

}
