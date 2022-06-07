import 'package:flutter/material.dart';

class PopupMenuButtonSample extends StatelessWidget {
  const PopupMenuButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text("메뉴 1"),
              ),
              const PopupMenuItem(
                child: Text("메뉴 2"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
