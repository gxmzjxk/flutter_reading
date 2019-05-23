import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login in'),
      ),
      body: Container(
          color: Color(0xffF5F5F5),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 180.0,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage('images/img_login_bg.png'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 38.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '小朋友们~',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '和超级飞侠一起开始快乐的学习之旅吧!',
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1.0, color: Color(0xffF7F7F7))),
                            ),
                            child: Text(
                              '使用手机号码快速登录',
                              style: TextStyle(color: Color(0xff808080)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("sendAuth");
                            },
                            child: Container(
                              height: 60.0,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset('images/wechatHL.png',
                                      width: 30.0, height: 30.0),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.0),
                                    child: Text('使用微信账号登录',
                                        style: TextStyle(
                                            color: Color(0xff808080))),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('点击登录即表示同意',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color.fromRGBO(155, 155, 155, 1))),
                          Text(
                            '《SuperWings用户协议》',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color.fromRGBO(45, 209, 172, 1)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
