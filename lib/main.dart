import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/provider/bankAccount.dart';
import 'package:provider2/screens/myHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //복수의 provider사용 MaterialApp보다 상위에 위치하기 때문에 MaterialApp하위에 provider데이터 사용가능하다
    //MultiProvider의 사용으로 복수의 Provider사용
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<BankAccount>(create: (_)=> new BankAccount()),
          Provider<String>.value(value: "Cho")
        ], 
        child: MaterialApp(
        title: 'Provider Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
