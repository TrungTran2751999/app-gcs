import 'package:app/widget/ListKhuVuc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrangChu extends StatelessWidget {
  const TrangChu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                    ),
                ),
                Text(
                  "Trang chủ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    CupertinoIcons.gear_alt_fill,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, right: 12),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Xin chào, Lê Thị A",
                  style: TextStyle(
                      fontSize: 17
                  ),
                ),
              ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Padding(
                      child: Container(
                          width: MediaQuery.of(context).size.width/2.2,
                          color: Color.fromRGBO(243, 183, 51, 1),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Icon(
                                    CupertinoIcons.cube_box_fill,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                                Align(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                Align(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    child: Text(
                                      "Thu thập",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.bottomRight,
                                )
                              ],
                            ),
                          )
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                    onTap: (){},
                  ),
                  GestureDetector(
                    child: Padding(
                      child: Container(
                          width: MediaQuery.of(context).size.width/2.2,
                          color: Color.fromRGBO(78, 169, 174, 1),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Icon(
                                    CupertinoIcons.checkmark_seal_fill,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                                Align(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                Align(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    child: Text(
                                      "Kiểm tra",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.bottomRight,
                                )
                              ],
                            ),
                          )
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ListKhuVuc()));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                          width: MediaQuery.of(context).size.width/2.2,
                          color: Color.fromRGBO(154, 198, 43, 1),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Icon(
                                    CupertinoIcons.speedometer,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    child: const Text(
                                      "Ghi chỉ số khách hàng",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                          width: MediaQuery.of(context).size.width/2.2,
                          color: Color.fromRGBO(0,159,224, 1),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Icon(
                                    CupertinoIcons.speedometer,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/2.7,
                                    child: const Text(
                                      "Ghi chỉ số đồng hồ tổng",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
