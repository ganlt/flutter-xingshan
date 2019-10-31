import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:dio/dio.dart';

class FormLogin extends StatefulWidget {
  FormLogin({Key key, this.title}): super(key: key);

  final String title;

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  TextEditingController _account = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _imageCode = new TextEditingController();
  GlobalKey _formKey = new GlobalKey();

  static String url = 'http://192.168.10.124:9101/graphql';

  void getToken() async {
    String query = '''{
      login(
        userName:"${_account.text}",
        password:"${_password.text}"
      )}
    ''';
    Dio dio = Dio();
    Response response = await dio.get('$url?query=$query');
    print(response.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('考生登录'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Form(
              key: _formKey,
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    controller: _account,
                    decoration: InputDecoration(
                      labelText: '账号',
                      hintText: '请输入账号',
                      icon: Icon(Icons.person),
                    ),
                    validator: (v) {
                      return v
                        .trim()
                        .length > 0 ? null : '账号不能为空';
                    },
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入密码',
                      icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                    validator: (v) {
                      return v
                        .trim()
                        .length > 0 ? null : '密码不能为空';
                    },
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: _imageCode,
                          decoration: InputDecoration(
                            labelText: '验证码',
                            hintText: '请输入验证码',
                            icon: Icon(Icons.lock),
                          ),
                          validator: (v) {
                            return v
                              .trim()
                              .length == 6 ? null : '请输入6位验证码';
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ImageCode()
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            padding: EdgeInsets.all(15.0),
                            child: Text('登录'),
                            color: Theme
                              .of(context)
                              .primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              if((_formKey.currentState as FormState).validate()) {
                                getToken();
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}

String imageUrl = 'http://192.168.1.22/arch-auth/image-code/v1?imageKey=';
String imageKey = '' ; 
String onImageClick(){
  String _url = imageUrl + imageKey.toString();
  imageKey = (new Uuid()).v1() ;
  return _url;
}

class ImageCode extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ImageCodeState();
  }


}
class ImageCodeState extends State<ImageCode>{
  var image ;
  @override
  Widget build(BuildContext context) {
     var gestureDetector = GestureDetector(child: new Image(image: NetworkImage(onImageClick())),
     onTap:()=> setState(() {
       onImageClick();
     }),);
     image = gestureDetector;
    return image;
  }
  
}
