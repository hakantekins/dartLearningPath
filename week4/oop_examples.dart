void main() {
  final user1 = User('Hakan', 123);
  final user2 = BankUser('Ali', 1235, 1212121);
  final user3 = SpecialUser('Veli', 12300, 1212121, 20);

  user1.sayMoneyWithCompanyName();
  user2.sayMoneyWithCompanyName();
  user3.calculateMoney;
  user3.sayMoneyWithCompanyName();
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print('$name bey $money TL paranız var');
  }
}

class User extends IUser {
  User(String name, int money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;
  BankUser(String name, int money, this.bankingCode) : super(name, money);
}

class SpecialUser extends IUser {
  final int bankingCode;
  final int discount;
  SpecialUser(String name, int money, this.bankingCode, this.discount)
    : super(name, money);
  int get calculateMoney => (money - money ~/ discount);
}
