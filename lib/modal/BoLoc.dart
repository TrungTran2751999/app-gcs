import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoLoc extends StatefulWidget {
  BoLoc({
     Key? key,
     required Function this.hide
  }):super(key: key);
  Function hide;
  @override
  State<BoLoc> createState() => _BoLocState(hide: hide);
}

class _BoLocState extends State<BoLoc> {
  _BoLocState({
       required Function this.hide
   });
  Function hide;
  TrangThai trangThai = TrangThai();
  TrangThaiGhi trangThaiGhi = TrangThaiGhi();
  ViTri viTri = ViTri();
  KyDoc kyDoc = KyDoc();
  HinhAnh hinhAnh = HinhAnh();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black.withOpacity(0.5),
      body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            child: Container(
                color: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child:
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 2,color: Colors.green)
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Align(
                              child: Text(
                                "Bộ lọc tìm kiếm",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:20
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          )
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
                          child: Text("Chon thông tin mà bạn muốn xem bằng cách sử dụng các bộ lọc dưới đây"),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )
                                    ),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:
                                        Padding(
                                          child: Text(
                                            "Trạng thái",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          padding: EdgeInsets.only(bottom: 6, left: 6),
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Wrap(
                                          direction: Axis.vertical,
                                          spacing: -18,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: trangThai.binhThuong,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      trangThai.binhThuong = value;
                                                    });
                                                  },

                                                ),
                                                Text("Bình thường")
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: trangThai.giamChay,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      trangThai.giamChay = value;
                                                    });
                                                  },
                                                ),
                                                Text("Giảm chảy")
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: trangThai.sucXaDongHo,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      trangThai.sucXaDongHo = value;
                                                    });
                                                  },
                                                ),
                                                Text("Súc xả đồng hồ")
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: trangThai.vong,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      trangThai.vong = value;
                                                    });
                                                  },
                                                ),
                                                Text("Vòng")
                                              ],
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          direction: Axis.vertical,
                                          spacing: -18,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: trangThai.choKiemTra,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      trangThai.choKiemTra = value;
                                                    });
                                                  },

                                                ),
                                                Text("Chờ kiểm tra")
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: trangThai.khoan,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      trangThai.khoan = value;
                                                    });
                                                  },
                                                ),
                                                Text("Khoán")
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: trangThai.thayDongho,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      trangThai.thayDongho = value;
                                                    });
                                                  },
                                                ),
                                                Text("Thay đồng hồ")
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )
                                    ),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:
                                        Padding(
                                          child: Text(
                                            "Trạng thái ghi",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          padding: EdgeInsets.only(bottom: 6, left: 6),
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: trangThaiGhi.daGhi,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  trangThaiGhi.daGhi = value;
                                                });
                                              },

                                            ),
                                            Text("Đã ghi")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: trangThaiGhi.chuaGhi,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  trangThaiGhi.chuaGhi= value;
                                                });
                                              },

                                            ),
                                            Text("Chưa ghi")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: trangThaiGhi.catNuoc,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  trangThaiGhi.catNuoc = value;
                                                });
                                              },

                                            ),
                                            Text("Cắt nước")
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )
                                    ),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:
                                        Padding(
                                          child: Text(
                                            "Vị trí",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          padding: EdgeInsets.only(bottom: 6, left: 6),
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: viTri.coViTri,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  viTri.coViTri = value;
                                                });
                                              },
                                            ),
                                            Text("Có vị trí")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: viTri.chuaCoViTri,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  viTri.chuaCoViTri= value;
                                                });
                                              },

                                            ),
                                            Text("Chưa có vị trí")
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )
                                    ),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:
                                        Padding(
                                          child: Text(
                                            "Kỳ đọc",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          padding: EdgeInsets.only(bottom: 6, left: 6),
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: kyDoc.hangThang,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  kyDoc.hangThang = value;
                                                });
                                              },
                                            ),
                                            Text("Hàng tháng")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: kyDoc.thangChan,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  kyDoc.thangChan= value;
                                                });
                                              },

                                            ),
                                            Text("Tháng chẵn")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: kyDoc.thangLe,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  kyDoc.thangLe= value;
                                                });
                                              },

                                            ),
                                            Text("Tháng lẽ")
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )
                                    ),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:
                                        Padding(
                                          child: Text(
                                            "Hình ảnh",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          padding: EdgeInsets.only(bottom: 6, left: 6),
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: hinhAnh.co,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  hinhAnh.co = value;
                                                });
                                              },
                                            ),
                                            Text("Hình ảnh")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: hinhAnh.khong,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  hinhAnh.khong= value;
                                                });
                                              },

                                            ),
                                            Text("Không")
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.symmetric(vertical: 3, horizontal: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(1, 172, 172, 172),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: (){
                              hide("BoLoc");
                            },
                            child: Text(
                              "Tìm kiếm",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
          )
      ),
    );
  }
}
class TrangThai{
  bool? binhThuong = false;
  bool? giamChay = false;
  bool? sucXaDongHo = false;
  bool? vong = false;
  bool? choKiemTra = false;
  bool? khoan = false;
  bool? thayDongho = false;
}
class TrangThaiGhi{
  bool? daGhi = false;
  bool? chuaGhi = false;
  bool? catNuoc = false;
}
class ViTri{
  bool? coViTri = false;
  bool? chuaCoViTri = false;
}
class KyDoc{
  bool? hangThang = false;
  bool? thangChan = false;
  bool? thangLe = false;
}
class HinhAnh{
  bool? co = false;
  bool? khong = false;
}
