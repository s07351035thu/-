import 'package:flutter/material.dart';
import 'main.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/services.dart';


class PayPage extends StatelessWidget {
  final int? sumPrice;
  const PayPage({Key? key, this.sumPrice}): super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 360,
                    height: 80,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[

                        Container(
                          width: 360,
                          height: 80,
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
                          padding: const EdgeInsets.only(top: 34, ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children:[

                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "HomePage");
                                },
                                child: Icon(
                                  Icons.arrow_back,

                                ),

                              ),

                              Container(width: 30,),
                              SizedBox(
                                width: 244,
                                height: 46,
                                child: Text(
                                  "結帳",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              Container(width: 30,),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Container(height: 100,),

            ToggleSwitch(
              minWidth: 100,
              totalSwitches: 2,
              initialLabelIndex: 0,
              activeBgColor: [Color(0xfff178b6)],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey[300],
              labels: ["現金支付", "信用卡支付"],
              onToggle: (index) {

              },
            ),

            Container(height: 50,),

            Text(
              "總計：${this.sumPrice}元",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
            ),
            ),

            Container(height: 50,),

            RaisedButton(
              padding: const EdgeInsets.all(5),
              color: Color(0xfff178b6),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18),
              ),
              onPressed: (){
                showDialog(context: context, builder: (context) {
                  return theAD(context);
                });

              },
              child: Text(
                "付款",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

      ),
    );

  }

  Widget theAD(BuildContext context) {
    return AlertDialog(
      title: Text("系統提示"),
      content: Text("付款成功！"),
      actions: <Widget>[
        TextButton(
          onPressed: (){
            Navigator.pushNamed(context, "/");
          },
          child: Text("完成",),)
      ],

    );
  }
}
