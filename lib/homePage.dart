import 'package:final_project_order_system/payPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ItemCard.dart';
import 'dart:math';
import 'foodClass.dart';
import 'main.dart';
import 'package:flutter/services.dart';



class HomePage extends StatefulWidget {
  final String? username;
  const HomePage({Key? key, this.username}): super(key: key);


  @override
  _HomePageState createState() => _HomePageState();

}

final burger = food(0, "美味漢堡", 70, "images/burger.jpg");
final potato = food(0, "薯條", 40, "images/potato.jpg");
final drink = food(0, "紅茶", 30, "images/drink.jpg");
final salad = food(0, "沙拉", 50, "images/salad.jpg");
final noodles = food(0, "義大利麵", 90, "images/noodles.jpg");

class _HomePageState extends State<HomePage> {

  int sum = 0;
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Color(0xffcbf1fd),
          systemNavigationBarColor: Color(0xffcbf1fd),

        )
    );

    return Scaffold(

      body: Stack(
        children: [

          SingleChildScrollView(
            child:  Column(
              children: [
                Container(
                  child: Column(
                    children: [

                      //頂部預留空間
                      Container(height: 194.71,),

                      Container(height: 17,),
                      TitleText(titleText: "本店招牌",),
                      Container(height: 5,),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            height: 220,
                            width: 320,
                            child:  ItemCard(itemImage: burger.itemImage, itemName: burger.itemName, itemPrice: burger.itemPrice),
                          ),
                          Positioned(
                            top: 160,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(0),
                              width: 200,
                              height: 51,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          burger.itemNum = burger.itemNum - 1;
                                          if(burger.itemNum <= 0) {
                                            burger.itemNum = 0;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 24,
                                    height: 24,

                                    child: Text(
                                      "${burger.itemNum}",
                                      style: TextStyle(
                                        fontSize: 15,

                                      ),
                                    ),
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          burger.itemNum = burger.itemNum + 1;
                                          if(burger.itemNum >= 10) {
                                            burger.itemNum = 10;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                      Container(height: 17,),
                      TitleText(titleText: "今日特餐",),
                      Container(height: 5,),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            height: 220,
                            width: 320,
                            child:  ItemCard(itemImage: noodles.itemImage, itemName: noodles.itemName, itemPrice: noodles.itemPrice),
                          ),
                          Positioned(
                            top: 160,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(0),
                              width: 200,
                              height: 51,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          noodles.itemNum = noodles.itemNum - 1;
                                          if(noodles.itemNum <= 0) {
                                            noodles.itemNum = 0;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 24,
                                    height: 24,

                                    child: Text(
                                      "${noodles.itemNum}",
                                      style: TextStyle(
                                        fontSize: 15,

                                      ),
                                    ),
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          noodles.itemNum = noodles.itemNum + 1;
                                          if(noodles.itemNum >= 10) {
                                            noodles.itemNum = 10;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                      Container(height: 17,),
                      TitleText(titleText: "單點",),
                      Container(height: 5,),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            height: 220,
                            width: 320,
                            child:  ItemCard(itemImage: potato.itemImage, itemName: potato.itemName, itemPrice: potato.itemPrice),
                          ),
                          Positioned(
                            top: 160,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(0),
                              width: 200,
                              height: 51,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          potato.itemNum = potato.itemNum - 1;
                                          if(potato.itemNum <= 0) {
                                            potato.itemNum = 0;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 24,
                                    height: 24,

                                    child: Text(
                                      "${potato.itemNum}",
                                      style: TextStyle(
                                        fontSize: 15,

                                      ),
                                    ),
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          potato.itemNum = potato.itemNum + 1;
                                          if(potato.itemNum >= 10) {
                                            potato.itemNum = 10;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                      Container(height: 17,),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            height: 220,
                            width: 320,
                            child:  ItemCard(itemImage: drink.itemImage, itemName: drink.itemName, itemPrice: drink.itemPrice),
                          ),
                          Positioned(
                            top: 160,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(0),
                              width: 200,
                              height: 51,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          drink.itemNum = drink.itemNum - 1;
                                          if(drink.itemNum <= 0) {
                                            drink.itemNum = 0;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 24,
                                    height: 24,

                                    child: Text(
                                      "${drink.itemNum}",
                                      style: TextStyle(
                                        fontSize: 15,

                                      ),
                                    ),
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          drink.itemNum = drink.itemNum + 1;
                                          if(drink.itemNum >= 10) {
                                            drink.itemNum = 10;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                      Container(height: 17,),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            height: 220,
                            width: 320,
                            child:  ItemCard(itemImage: salad.itemImage, itemName: salad.itemName, itemPrice: salad.itemPrice),
                          ),
                          Positioned(
                            top: 160,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(0),
                              width: 200,
                              height: 51,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          salad.itemNum = salad.itemNum - 1;
                                          if(salad.itemNum <= 0) {
                                            salad.itemNum = 0;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 24,
                                    height: 24,

                                    child: Text(
                                      "${salad.itemNum}",
                                      style: TextStyle(
                                        fontSize: 15,

                                      ),
                                    ),
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          salad.itemNum = salad.itemNum + 1;
                                          if(salad.itemNum >= 10) {
                                            salad.itemNum = 10;
                                          }
                                        });

                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 10,

                                      ),
                                      shape: CircleBorder(),
                                      color: Colors.white,


                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),




                      //底部預留空間
                      Container(height: 100,),


                    ],
                  ),

                ),

              ],
            ),
          ),


          //headTop
          Container(
            width: 360,
            height: 194.71,
            child: Stack(
              children:[Positioned.fill(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 360,
                    height: 178,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Color(0xffcbf1fd),
                    ),
                    padding: const EdgeInsets.only(left: 20, right: 55, top: 67, bottom: 90, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        SizedBox(
                          width: 285,
                          height: 20.57,
                          child: Text(
                            "歡迎來到囧哥小食舖！",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
                Positioned(
                  left: 20,
                  top: 88,
                  child: SizedBox(
                    width: 244,
                    height: 106.71,
                    child: Text(
                      "您好，${this.widget.username}\n今天想吃點什麼？",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 324,
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      width: 324,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.only(left: 13, right: 8, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          SizedBox(
                            width: 110,
                            height: 22,
                            child: Text(
                              "總計：${burger.itemPrice*burger.itemNum+potato.itemPrice*potato.itemNum+drink.itemPrice*drink.itemNum+salad.itemPrice*salad.itemNum+noodles.itemPrice*noodles.itemNum}元",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(width: 96),
                          Container(
                            width: 97,
                            height: 40,
                            child: Stack(
                              children:[

                                RaisedButton(
                                  padding: const EdgeInsets.all(5),
                                  color: Color(0xfff178b6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(18),
                                  ),
                                  onPressed: (){
                                    sum += burger.itemPrice*burger.itemNum+potato.itemPrice*potato.itemNum+drink.itemPrice*drink.itemNum+salad.itemPrice*salad.itemNum+noodles.itemPrice*noodles.itemNum;
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PayPage(
                                                sumPrice: sum,
                                              ))
                                      );
                                    });
                                  },
                                  child: Text(
                                    "結帳",
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),



        ],
      ),
    );


  }
}