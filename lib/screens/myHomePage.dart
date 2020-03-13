import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/provider/bankAccount.dart';
import 'package:provider2/screens/testSFW.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //provider데이터를 가져와 bankAccount, name변수에 담는다
    BankAccount bankAccount = Provider.of<BankAccount>(context);
    String name = Provider.of<String>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Provider Test")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("your name is $name"),
            Text("balance is ${bankAccount.getBalance()}"),
            RaisedButton(
              child: Text("Test with StatefulWidget"),
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => TestSFW()));
              }
              ),
            RaisedButton(
              child: Text("Test with StatelessWifet"),
              onPressed: () {
                // Navigator.push(context, 
                // MaterialPageRoute(builder: (context) => TestSLW()));
              }
              )  
              //이부분 다시 정리
          ].map(
            (child){
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 40,
                child: child
              );
            }
          ).toList(),
        ),
      ),
    );
  }
}

