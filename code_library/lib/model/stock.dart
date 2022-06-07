class Stock {
  late String name;
  late int money;
  late int highMoney;
  late int lowMoney;

  Stock({
    required this.name,
    required this.money,
    required this.highMoney,
    required this.lowMoney,
  });

  Stock.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    money = json['money'];
    highMoney = json['highMoney'];
    lowMoney = json['lowMoney'];
  }
}
