import 'package:app/network/NetWork.dart';
import 'package:app/util/Util.dart';
import 'package:app/util/dto/WorkController/WorkDTO.dart';
// import 'package:app/widget/MainView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/notification.dart';
class LoginView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return LoginViews();
  }

}
class LoginViews extends State<LoginView>{
  NotificationService notificationService = NotificationService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationService.requestNotificationPermissision();
    notificationService.initLocalNotifications(context);
    notificationService.firebaseInit();
    notificationService.setupInteractMessage(context);
  }
  late String userName;
  late String passWord;
  late bool isLoading;
  late Widget loadingWidget = const Text(
    "LOGIN",
    style: TextStyle(
        color: Colors.white
    ),
  );
  void login(BuildContext context){
    setState(() {
      loadingWidget = const Center(
        child: CircularProgressIndicator(),
      );
    });
    notificationService.getDeviceToken().then((value) {
      var data = {
        "UserName": userName,
        "Password": passWord,
        "DeviceToken": value
      };
      NetWork.login(data, value).then((res) {
        if (res) {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => MainView())
          // );
        } else {
          Util.showMyDialog(context, "Tài khoản hoặc mật khẩu không tồn tại");
        }
        setState(() {
          loadingWidget = const Text(
            "LOGIN",
            style: TextStyle(
                color: Colors.white
            ),
          );
        });
      });
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.blue,
      ),
      body: WillPopScope(
        onWillPop: () async {
          // Xử lý sự kiện nút quay lại một cách thủ công
          // Bạn có thể thực hiện các hành động mong muốn tại đây
          // Trả về false để hủy chức năng nút quay lại
          return false;
        },
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              Container(
                height: 25,
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 2.0,
                            color: Colors.green
                        )
                    )
                ),
                child: const Column(
                  children: [
                    Text(
                      "ĐĂNG NHẬP BẰNG TÀI KHOẢN CỦA BẠN ?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.symmetric(vertical: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.cyan,
                              width: 2.0,
                            )
                        ),
                      ),
                      Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsetsDirectional.only(end: 10),
                                  child:Icon(
                                      color: Colors.grey,
                                      Icons.mail
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Tên đăng nhập',
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.symmetric(vertical: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.cyan,
                              width: 2.0,
                            )
                        ),
                      ),
                      Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsetsDirectional.only(end: 10),
                                  child:Icon(
                                      color: Colors.grey,
                                      Icons.lock
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Mật khẩu',
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {  },
                  child: Padding(
                    child:Text(
                        "Đăng nhập",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16
                        ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(1, 172, 172, 172),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: const Center(
                  child: Image(
                      width: 150,
                      image: AssetImage("assets/logo-gcs.png")
                  ),
                )
              ),
            ],
          )
        )
      )
    );
  }

}