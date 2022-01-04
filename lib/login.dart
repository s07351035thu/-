import 'package:final_project_order_system/homePage.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/services.dart';


class loginPage extends StatelessWidget {
  const loginPage({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Color(0xffcbf1fd),
          systemNavigationBarColor: Color(0xffcbf1fd),

        )
    );
    TextEditingController nameController = TextEditingController();
    String userName = '';
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    blurRadius: 9,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Color(0xffcbf1fd),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 200,
              child: Column(
                children: [
                  Text(
                    "請輸入姓名",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(height: 15,),
                  TextField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (text) {
                      userName = text;
                    },
                  ),
                  Container(height: 15,),
                  RaisedButton(
                    padding: const EdgeInsets.all(5),
                    color: Color(0xfff178b6),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                          username: nameController.text,
                        ))
                      );
                    },
                    child: Text(
                      "確認",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),



        ],
      ),


      );

  }
}