import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChiTietKH extends StatefulWidget {
  const ChiTietKH({super.key});

  @override
  State<ChiTietKH> createState() => _ChiTietKHState();
}

class _ChiTietKHState extends State<ChiTietKH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CupertinoIcons.delete_left_fill,
                        color: Colors.green,
                        size: 30,
                      ),
                      Text(""),
                      Icon(
                        Icons.save_rounded,
                        color: Colors.green,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        ],
      )
    );
  }
}