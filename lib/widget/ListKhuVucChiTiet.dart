import 'package:app/modal/BoLoc.dart';
import 'package:app/modal/Search.dart';
import 'package:app/widget/ChiTietKH.dart';
import 'package:app/widget/DangNhap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TrangChu.dart';

class ListKhuVucChiTiet extends StatefulWidget {
  ListKhuVucChiTiet({
    Key?key,
    required this.title
  }):super(key: key);
  String title;
  @override
  State<ListKhuVucChiTiet> createState() => _ListKhuVucChiTietState(title: title);
}

class _ListKhuVucChiTietState extends State<ListKhuVucChiTiet> {
  _ListKhuVucChiTietState({
      required this.title
  });
  String title;
  double sizeIcon = 40;
  Color colorIcon = Color.fromRGBO(0, 128, 2, 1);
  Color colorPress = Colors.red;
  bool isFilter = false;
  bool isSearch = false;
  final FocusNode _focusNode = FocusNode();
  showFilter(String? type){
    setState(() {
      switch(type){
        case "BoLoc":{
          isFilter = true;
          break;
        }
        case "Search":{
          isSearch = true;
          break;
        }
      }
    });
  }
  hideFilter(String? type){
    setState(() {
      switch(type){
        case "BoLoc":{
          isFilter = false;
          break;
        }
        case "Search":{
          isSearch = false;
          break;
        }
      }
      _focusNode.unfocus();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Column(
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
                          Container(
                            width: MediaQuery.of(context).size.width*(2/3),
                            child: Text(
                              this.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromRGBO(82, 82, 82, 1)
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(CupertinoIcons.arrow_2_circlepath, size: 30),
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: 40,
                              color: Color.fromRGBO(52, 73, 94, 1),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 0),
                                  child: Align(
                                    child: Text(
                                      "Danh sách (266)",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  )
                              )
                          ),
                        ),
                        Expanded(
                            child:
                            Container(
                                height: 40,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.search,
                                      ),
                                      Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: TextField(
                                              focusNode: _focusNode,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                              style: TextStyle(
                                                  fontSize: 13
                                              ),
                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                )
                            )
                        )
                      ],
                    )
                  ],
                )
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChiTietKH(title: "2, A0200821, 308961, Huỳnh Kim Đại, 50, Nguyễn Trãi, Phường Thuận Hòa, Thành Phố Huế", titlePre: title,)));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey)
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "2, A0200821, 308961, Huỳnh Kim Đại, 50, Nguyễn Trãi, Phường Thuận Hòa, Thành Phố Huế",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.red
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional.symmetric(vertical: 10),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("Chỉ số: ",),
                                                      Text("0"),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text("Sản lượng: "),
                                                      Text("1"),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text("Tiền: "),
                                                      Text("3"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("17:28 - 13/03/2024"),
                                                Row(
                                                  children: [
                                                    Text("Kỳ ghi: "),
                                                    Text("Tháng chẵn")
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 50),
                                        child: Column(
                                          children: [
                                            GestureDetector(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.symmetric(vertical: 5),
                                                child: Icon(
                                                  CupertinoIcons.check_mark_circled_solid,
                                                  size: 30,
                                                  color: Colors.green,
                                                ),
                                              ),
                                              onTap: (){},
                                            ),
                                            GestureDetector(
                                              child: Icon(
                                                CupertinoIcons.location_solid,
                                                size: 30,
                                                color: Colors.orange,
                                              ),
                                              onTap: (){},
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                )
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.sort_by_alpha_rounded,
                          size: sizeIcon,
                        ),
                        color: colorIcon,
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(
                            CupertinoIcons.sort_down,
                            size: this.sizeIcon,
                            color: colorIcon,
                          )
                      ),
                      IconButton(
                          onPressed:(){
                            showFilter("BoLoc");
                          },
                          icon: Icon(
                            Icons.filter_list_alt,
                            size: sizeIcon,
                            color: isFilter==false ? colorIcon : colorPress,
                          )
                      ),
                      IconButton(
                          onPressed: (){
                            showFilter("Search");
                          },
                          icon: Icon(
                            CupertinoIcons.search,
                            size: this.sizeIcon,
                            color: isSearch==false ? colorIcon : colorPress,
                          )
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(
                            CupertinoIcons.qrcode,
                            size: this.sizeIcon,
                            color: colorIcon,
                          )
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
          isFilter ?
          TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              curve: Curves.ease,
              duration: const Duration(seconds: 1),
              builder: (BuildContext context, double opacity, Widget? child) {
                return Opacity(
                    opacity: opacity,
                    child: BoLoc(hide: hideFilter)
                );
              }):
          Container(),

          isSearch ?
          TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              curve: Curves.ease,
              duration: const Duration(seconds: 1),
              builder: (BuildContext context, double opacity, Widget? child) {
                return Opacity(
                    opacity: opacity,
                    child: Search(hide: hideFilter)
                );
              }):
          Container(),
        ]
      )
    );
  }
}
