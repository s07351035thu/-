import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final String? itemName;
  final int? itemPrice;
  // final int? itemNum;
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