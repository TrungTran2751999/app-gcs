import 'package:app/modal/BoLoc.dart';
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
  showFilter(Widget widget){

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
                        Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey)
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
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
                    padding: EdgeInsets.symmetric(horizontal: 15),
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
                            onPressed: (){

                            },
                            icon: Icon(
                              Icons.filter_list_alt,
                              size: this.sizeIcon,
                              color: colorIcon,
                            )
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              CupertinoIcons.search,
                              size: this.sizeIcon,
                              color: colorIcon,
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
        ],
      )
    );
  }
}
