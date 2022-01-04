/*
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final String? itemName;
  final int? itemPrice;

  final String? itemImage;

  // final GestureTapCallback? onTap;

  const ItemCard({Key? key, this.itemName, this.itemPrice, this.itemImage}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ItemCardState();
  }
}

class ItemCardState extends State<ItemCard> {
  int itemNum = 0;
  @override
  Widget build(BuildContext context) {
    // 卡片按鈕分開
    return Stack(
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
    );

    //卡片
    return Container(
      child: Stack(
        children:[
          Positioned(
            child: Align(
              alignment: Alignment.topLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  // image: AssetImage("images/test.jpg"),
                  image: AssetImage("${this.widget.itemImage}"),
                  width: 320,
                  height: 220,
                ),
              ),
            ),
          ),
          Container(
            width: 320,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),

            padding: const EdgeInsets.only(left: 14, right: 16, top: 160, bottom: 5, ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Column(
                  children: [
                    SizedBox(
                      width: 123,
                      height: 38,
                      child: Text(
                        // "美味漢堡",
                        "${this.widget.itemName}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      height: 13,
                      child: Text(
                        // "25元/個",
                        "${this.widget.itemPrice}元/個",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),



              ],
            ),
          ),





        ],


      ),
    );

    //卡片+按鈕
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 220,
          width: 320,
          child:  Container(
            child: Stack(
              children:[
                Positioned(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        // image: AssetImage("images/test.jpg"),
                        image: AssetImage("${this.widget.itemImage}"),
                        width: 320,
                        height: 220,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 320,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),

                  padding: const EdgeInsets.only(left: 14, right: 16, top: 160, bottom: 5, ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Column(
                        children: [
                          SizedBox(
                            width: 123,
                            height: 38,
                            child: Text(
                              // "美味漢堡",
                              "${this.widget.itemName}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            height: 13,
                            child: Text(
                              // "25元/個",
                              "${this.widget.itemPrice}元/個",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),



                    ],
                  ),
                ),





              ],


            ),
          ),
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
                        this.itemNum = this.itemNum - 1;
                        if(this.itemNum <= 0) {
                          this.itemNum = 0;
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
                    "${this.itemNum}",
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
                        this.itemNum = this.itemNum + 1;
                        if(this.itemNum >= 10) {
                          this.itemNum = 10;
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
    );


  }
}




class TitleText extends StatelessWidget {
  final String? titleText;
  const TitleText({this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 30,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            width: 360,
            height: 30,
            padding: const EdgeInsets.only(left: 20, right: 219, ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(
                  width: 121,
                  height: 30,
                  child: Text(
                    "${titleText}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }




}

*/


