
import 'dart:io';

import 'package:fluwx/fluwx.dart' as fluwx;
import './pages/home_page.dart';

import './common/fluwe.dart';
import 'package:flutter/material.dart';
import './widgets/flutter_app.dart';
import './router/router.dart';

void main() async{
  /// 与初始化必须调用这个函数（在runapp之前调用的初始化必须要有）
  WidgetsFlutterBinding.ensureInitialized();
  await Fluwe.init(
    routesConfig: [],
    
  );
  runApp(MyApp());

  // String appId = '';
  // if(Platform.isIOS) {
  //   appId = 'wx300fea7d67c15d0f';
  // } else if(Platform.isAndroid) {
  //   appId = '';
  // }
  // /// 微信注册，可以放后面，不急用
  // fluwx.registerWxApi(
  //   appId: appId
  // );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: Router.navigatorKey,
      onGenerateRoute: Router.onGenerateRoute,
      home: FluweApp(
        child: HomePage()
      ),
    );
  }
}
