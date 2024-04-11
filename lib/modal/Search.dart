import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({
    Key? key,
    required this.hide,
  }):super(key: key);
  Function hide;
  @override
  State<Search> createState() => _SearchState(hide: hide);
}

class _SearchState extends State<Search> {
  _SearchState({
      required this.hide
   });
  SearchParam searchParam = SearchParam();
  Function hide;
  @override
  Widget build(BuildContext context) {
    double bottomInput = 20;
    return Scaffold(
        backgroundColor: CupertinoColors.black.withOpacity(0.5),
        body: Center(
          child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
          color: Colors.white,
              child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Column(
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
                                                  "Tìm kiếm từ khóa",
                                                  style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:20
                                                  ),
                                          ),
                                          alignment: Alignment.centerLeft,
                                      ),
                                )
                            ),
                            Padding(
                                child:Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: bottomInput),
                                      child: TextField(
                                        onChanged: (value){
                                          searchParam.danhBoIdkh = value;
                                        },
                                        decoration: InputDecoration(
                                            label: Text("Danh bộ/IDKH"),
                                            contentPadding: EdgeInsets.symmetric(// Adjust vertical padding
                                              horizontal: 20.0, // Adjust horizontal padding
                                            ),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.grey)
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: bottomInput),
                                      child: TextField(
                                        onChanged: (value){
                                          searchParam.hoTen = value;
                                        },
                                        decoration: InputDecoration(
                                            label: Text("Họ tên"),
                                            contentPadding: EdgeInsets.symmetric(// Adjust vertical padding
                                              horizontal: 20.0, // Adjust horizontal padding
                                            ),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.grey)
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: bottomInput),
                                      child: TextField(
                                        onChanged: (value){
                                          searchParam.danhBoIdkh = value;
                                        },
                                        decoration: InputDecoration(
                                            label: Text("Địa chỉ"),
                                            contentPadding: EdgeInsets.symmetric(// Adjust vertical padding
                                              horizontal: 20.0, // Adjust horizontal padding
                                            ),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.grey)
                                            )
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10)

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
                                  hide("Search");
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
                    )
            )
          )
        )
      )
    );
  }
}
class SearchParam{
  String? danhBoIdkh = "";
  String? hoTen = "";
  String? diaChi = "";
}
