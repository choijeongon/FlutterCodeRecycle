import 'package:flutter/material.dart';

import 'widgets/2. 데이터테이블/data_table_sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DataTableSample(),
    );
  }
}
