import 'package:flutter/material.dart';


/*
*은행잔고에 해당하는 클래스로
*ChangeNotifier를 Mixin하고 있다
*notifyListeners()로 _balance가 변화했을때 감지해서 해당클래스의 인스턴스를 참조하고 있는 화면에 상태변경을 통보한다.
 */
class BankAccount with ChangeNotifier {
  int _balance = 0;

  int getBalance () => _balance;

  void increment(int value) {
    _balance += value;
    notifyListeners();
  }

  void decrement(int value) {
    _balance -= value;
    notifyListeners();
  }
}