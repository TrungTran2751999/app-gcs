import 'package:app/widget/ListKhuVucChiTiet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChiTietKH extends StatefulWidget {
  ChiTietKH({
    Key? key,
    this.title,
    this.titlePre
  }):super(key: key);
  String? title;
  String? titlePre;
  @override
  State<ChiTietKH> createState() => _ChiTietKHState(title: title, titlePre: titlePre);
}

class _ChiTietKHState extends State<ChiTietKH> {
  _ChiTietKHState({
    this.title,
    this.titlePre
  });
  String? title;
  String? titlePre;
  double sizeIcon = 40;
  Color colorIcon = Color.fromRGBO(0, 128, 2, 1);
  Color colorPress = Colors.red;
  ChiTietKHParam chiTietKH = ChiTietKHParam();
  TextEditingController _textDuongKinh = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textDuongKinh.text = "15";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ListKhuVucChiTiet(title: titlePre!)));
                  },
                  icon: Icon(CupertinoIcons.square_arrow_left_fill),
                  color: Colors.green,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*(2/3),
                  child: Text(
                    title!,
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
                  icon: Icon(Icons.save_rounded, size: 30),
                  color: Colors.green,
                ),
              ],
            ),
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
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Mã đồng hồ cũ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                              ),
                              TextField(
                                onChanged: (value){
                                  chiTietKH.maDongHoCu = value;
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0,
                                        horizontal: 20
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey)
                                    )
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cỡ đồng hồ cũ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              TextField(
                                onChanged: (value){

                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0,
                                        horizontal: 20
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey)
                                    )
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hiệu đồng hồ cũ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              TextField(
                                onChanged: (value){

                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0,
                                        horizontal: 20
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey)
                                    )
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Đường kính",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      enabled: false,
                                      controller: _textDuongKinh,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 0,
                                              horizontal: 20
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey)
                                          )
                                      ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon:
                                    Icon(
                                        CupertinoIcons.chevron_down_square_fill,
                                        size: 30,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hình ảnh",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(
                                  CupertinoIcons.camera_on_rectangle,
                                  size: 70,
                              )
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
                padding: EdgeInsets.symmetric(horizontal:15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        CupertinoIcons.arrow_left_circle_fill,
                        size: sizeIcon,
                      ),
                      color: colorIcon,
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(
                          CupertinoIcons.printer_fill,
                          size: this.sizeIcon,
                          color: colorIcon,
                        )
                    ),
                    IconButton(
                        onPressed:(){

                        },
                        icon: Icon(
                          Icons.save_as_outlined,
                          size: sizeIcon,
                          color: colorIcon,
                        )
                    ),
                    IconButton(
                        onPressed: (){

                        },
                        icon: Icon(
                          CupertinoIcons.arrow_right_circle_fill,
                          size: this.sizeIcon,
                          color: colorIcon ,
                        )
                    ),
                  ],
                ),
              )
          )
        ],
      )
    );
  }
}
class ChiTietKHParam{
  String? maDongHoCu;
  String? coDongHoCu;
  String? hieuDongHoCu;
  String? duongKinh;
  String? hieuDongHo;
  String? ghiChu;
  String? ghiChuKhac;
  String? soNha;
  String? duongPho;
  String? ngaySinh;
  String? CCCD;
  String? MaHTTT;
  String? zalo;
  String? appCSKH;
}
