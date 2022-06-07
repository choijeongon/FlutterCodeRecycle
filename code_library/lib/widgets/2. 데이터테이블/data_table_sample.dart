import 'package:code_recycle/model/stock.dart';
import 'package:flutter/material.dart';

class DataTableSample extends StatefulWidget {
  const DataTableSample({Key? key}) : super(key: key);

  @override
  State<DataTableSample> createState() => _DataTableSampleState();
}

class _DataTableSampleState extends State<DataTableSample> {
  final List<Map<String, dynamic>> stocks = [
    {
      "name": "삼성전자",
      "money": 100000,
      "highMoney": 130000,
      "lowMoney": 90000,
    },
    {
      "name": "SK하이닉스",
      "money": 150000,
      "highMoney": 180000,
      "lowMoney": 70000,
    },
    {
      "name": "네이버",
      "money": 120000,
      "highMoney": 140000,
      "lowMoney": 60000,
    },
  ];

  List<Stock> myStock = [];

  @override
  void initState() {
    for (var element in stocks) {
      // myStock.add(
      //   Stock(
      //     name: element['name'],
      //     money: element['money'],
      //     highMoney: element['highMoney'],
      //     lowMoney: element['lowMoney'],
      //   ),
      // );

      myStock.add(Stock.fromJson(element));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          columns: const [
            DataColumn(
              label: Text("이름"),
            ),
            DataColumn(
              label: Text("현재가"),
            ),
            DataColumn(
              label: Text("상한가"),
            ),
            DataColumn(
              label: Text("하한가"),
            ),
          ],
          rows: myStock
              .map(
                (element) => DataRow(
                  cells: [
                    DataCell(
                      Text(element.name),
                    ),
                    DataCell(
                      Text(element.money.toString()),
                    ),
                    DataCell(
                      Text(element.highMoney.toString()),
                    ),
                    DataCell(
                      Text(element.lowMoney.toString()),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
