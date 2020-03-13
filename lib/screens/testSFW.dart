import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/provider/bankAccount.dart';

class TestSFW extends StatefulWidget {
  @override
  _TestSFWState createState() => _TestSFWState();
}

class _TestSFWState extends State<TestSFW> {
  @override
  Widget build(BuildContext context) {
    BankAccount bankAccount = Provider.of<BankAccount>(context);
    String name = Provider.of<String>(context);
    return Scaffold(
      appBar: AppBar(title: Text("SFW with Prodiver")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Name is '$name'"),
            Text("Your balance is ${bankAccount.getBalance()}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+1"),
                  onPressed: () {
                    bankAccount.increment(1);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+10"),
                  onPressed: () {
                    bankAccount.increment(10);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+100"),
                  onPressed: () {
                    bankAccount.increment(100);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-1"),
                  onPressed: () {
                    bankAccount.decrement(1);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-10"),
                  onPressed: () {
                    bankAccount.decrement(10);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-100"),
                  onPressed: () {
                    bankAccount.decrement(100);
                  },
                ),
              ]
            )
          ]
        ),
      )
    );
  }
}