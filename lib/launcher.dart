import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_kulidigital_app/home_page.dart';

class Launcher extends StatefulWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: Colors.transparent,
          //backgroundColor: Colors.grey[850],
          title: Row(children: [
            IconButton(
                onPressed: () {
                  //Navigator.defaultRouteName
                },
                icon: Icon(Icons.menu_rounded)),
            Icon(
              Icons.auto_awesome_rounded,
              color: Colors.amber,
            ),
            Text("BIMONO"),
          ]),
          actions: [
            Row(children: [
              Text("5000"),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.attach_money_rounded)),
              RaisedButton(
                onPressed: () {},
                color: Colors.yellow,
                child: Row(children: [
                  Icon(Icons.account_balance_wallet_rounded),
                  Text(
                    " Deposit",
                  )
                ]),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                  )),
            ])
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background2.jpeg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            
            children: [
              
              Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.15),
                  child: Text(
                    "Investasi Smart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: "Rowdies"),
                  )),
            
              Container(
                  padding: EdgeInsets.fromLTRB(30, 5, 0, 10),
                  child: Text(
                    "Mudah, Aman, dan Profit Berlimpah",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "SourceSerif"),
                  )),
                
              RaisedButton(
                child: Text(
                  "Mulai Trading",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                color: Colors.amber,
                splashColor: Colors.red,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                shape: StadiumBorder(),
              ),
              
            ],
          ),
        ));
  }
}
