import 'package:app/widget/ListKhuVucChiTiet.dart';
import 'package:app/widget/TrangChu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListKhuVuc extends StatefulWidget {
  const ListKhuVuc({super.key});

  @override
  State<ListKhuVuc> createState() => _ListKhuVucState();
}

class _ListKhuVucState extends State<ListKhuVuc> {
  String dropDownVal = "Chọn biểu mẫu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TrangChu()));
                  },
                  icon: Icon(CupertinoIcons.house_fill),
                  color: Colors.green,
                ),
                DropdownButton<String>(
                    value: dropDownVal,
                    style: TextStyle(
                      color: Color.fromRGBO(110, 110, 110, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    onChanged: (String? newValue){
                          setState(() {
                            dropDownVal = newValue!;
                          });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        value: "Chọn biểu mẫu",
                        child: Text("Chọn biểu mẫu"),
                      ),
                      DropdownMenuItem<String>(
                        value: "OK1",
                        child: Text("OK1"),
                      )
                    ],
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(CupertinoIcons.arrow_2_circlepath, size: 30),
                  color: Colors.green,
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey
                                )
                            ),
                            child: Padding(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    child: Text(
                                      "A020 - Nguyễn Trãi Tháng 03/2024",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Color.fromRGBO(82, 82, 82, 1)
                                      ),
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top:12),
                                    child: Align(
                                      child: Text(
                                        "266 đồng hồ",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(82, 82, 82, 1)
                                        ),
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top:12),
                                    child: Align(
                                      child: Text(
                                        "0 bản ghi và không ảnh cần đồng bộ",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                  )
                                ],
                              ),
                              padding: EdgeInsets.all(10),
                            )
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListKhuVucChiTiet(title: "A020 - Nguyễn Trãi Tháng 03/2024 Nguyễn Trãi Tháng",)));
                      },
                    )
                  ],
                ),
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
      ),
    );
  }
}
