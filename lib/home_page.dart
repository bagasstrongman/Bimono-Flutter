import 'dart:developer';

import 'package:flutter/material.dart';
//import 'package:candlesticks/candlesticks.dart';
import 'package:flutter_kulidigital_app/launcher.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<ChartSampleData> _charData;
  @override
  void initState() {
    _charData = getChartData();
    super.initState();
  }

  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  bool pressAttention = false;

  //int Total = 5000;
  int slot = 5000;

  void buySlot() {
    setState(() {
      slot = slot - 950;
    });
  }

  void sellSlot() {
    setState(() {
      slot = slot + 1255;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[850],
          title: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Launcher();
                  }));
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
              Text(
                //'5000'
                something.counter.toString(),
                //style: TextStyle(fontSize: 10 + something.counter.toDouble()),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.attach_money_rounded)),
              RaisedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog3(context),
                  );
                },
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
        body: Stack(children: [
          SfCartesianChart(
            backgroundColor: Colors.grey[900],
            series: <CandleSeries>[
              CandleSeries<ChartSampleData, DateTime>(
                dataSource: _charData,
                xValueMapper: (ChartSampleData sales, _) => sales.x,
                lowValueMapper: (ChartSampleData sales, _) => sales.low,
                highValueMapper: (ChartSampleData sales, _) => sales.high,
                openValueMapper: (ChartSampleData sales, _) => sales.open,
                closeValueMapper: (ChartSampleData sales, _) => sales.close,
              )
            ],
            primaryXAxis: DateTimeAxis(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child:
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              RaisedButton(
                child: Text(
                  "Buy",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                splashColor: Colors.amber,
                onPressed: () {
                  setState(() {
                    something.counter = something.counter - 985;
                  });
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              RaisedButton(
                child: Text("Sell", style: TextStyle(color: Colors.white)),
                color: Colors.red,
                splashColor: Colors.amber,
                onPressed: () {
                  setState(() {
                    something.counter = something.counter + 1275;
                  });
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog2(context),
                  );
                },
              ),
            ]),
          )
        ]),
      ),
    );
  }

  List<ChartSampleData> getChartData() {
    return <ChartSampleData>[
      ChartSampleData(
          x: DateTime(2016, 01, 11),
          open: 58.97,
          high: 101.19,
          low: 40.36,
          close: 97.13),
      ChartSampleData(
          x: DateTime(2016, 01, 18),
          open: 68.41,
          high: 101.46,
          low: 50.42,
          close: 101.42),
      ChartSampleData(
          x: DateTime(2016, 01, 25),
          open: 101.52,
          high: 30.53,
          low: 92.39,
          close: 97.34),
      ChartSampleData(
          x: DateTime(2016, 02, 01),
          open: 80.47,
          high: 97.33,
          low: 60.69,
          close: 94.02),
      ChartSampleData(
          x: DateTime(2016, 02, 08),
          open: 73.13,
          high: 96.35,
          low: 25.59,
          close: 93.99),
      ChartSampleData(
          x: DateTime(2016, 02, 15),
          open: 30.31,
          high: 58.0237,
          low: 25.0237,
          close: 50.31),
      ChartSampleData(
          x: DateTime(2016, 02, 22),
          open: 35.31,
          high: 38.0237,
          low: 20.0237,
          close: 38.31),
      ChartSampleData(
          x: DateTime(2016, 02, 29),
          open: 40.86,
          high: 70.75,
          low: 39.65,
          close: 73.01),
      ChartSampleData(
          x: DateTime(2016, 03, 07),
          open: 70.39,
          high: 85.83,
          low: 50.15,
          close: 102.26),
      ChartSampleData(
          x: DateTime(2016, 03, 14),
          open: 90.91,
          high: 115.5,
          low: 80.78,
          close: 117.92),
      ChartSampleData(
          x: DateTime(2016, 03, 21),
          open: 100.93,
          high: 110.65,
          low: 90.89,
          close: 95.67),
      ChartSampleData(
          x: DateTime(2016, 03, 28),
          open: 100,
          high: 100.42,
          low: 100.88,
          close: 101.99),
      ChartSampleData(
          x: DateTime(2016, 04, 04),
          open: 100.42,
          high: 123.19,
          low: 90.121,
          close: 120.66),
      ChartSampleData(
          x: DateTime(2016, 04, 11),
          open: 108.97,
          high: 112.39,
          low: 108.66,
          close: 109.85),
      ChartSampleData(
          x: DateTime(2016, 04, 18),
          open: 108.89,
          high: 108.95,
          low: 104.62,
          close: 105.68),
      ChartSampleData(
          x: DateTime(2016, 04, 25),
          open: 105,
          high: 105.65,
          low: 92.51,
          close: 93.74),
      ChartSampleData(
          x: DateTime(2016, 05, 02),
          open: 103.965,
          high: 85.9,
          low: 80.85,
          close: 90.72),
      ChartSampleData(
          x: DateTime(2016, 05, 09),
          open: 93,
          high: 93.77,
          low: 89.47,
          close: 90.52),
      ChartSampleData(
          x: DateTime(2016, 05, 16),
          open: 86.39,
          high: 90.43,
          low: 88.65,
          close: 109.22),
      ChartSampleData(
          x: DateTime(2016, 05, 23),
          open: 70.87,
          high: 100.73,
          low: 69.67,
          close: 91.35),
      ChartSampleData(
          x: DateTime(2016, 05, 30),
          open: 99.6,
          high: 120.4,
          low: 88.63,
          close: 118.92),
      ChartSampleData(
          x: DateTime(2016, 06, 06),
          open: 100.99,
          high: 121.89,
          low: 100.55,
          close: 101.83),
      ChartSampleData(
          x: DateTime(2016, 06, 13),
          open: 98.69,
          high: 99.12,
          low: 95.3,
          close: 95.33),
      ChartSampleData(
          x: DateTime(2016, 06, 20),
          open: 96,
          high: 96.89,
          low: 92.65,
          close: 93.4),
      ChartSampleData(
          x: DateTime(2016, 06, 27),
          open: 93,
          high: 96.465,
          low: 80.5,
          close: 104.89),
      ChartSampleData(
          x: DateTime(2016, 07, 04),
          open: 80.39,
          high: 88.89,
          low: 70.37,
          close: 85.68),
      ChartSampleData(
          x: DateTime(2016, 07, 11),
          open: 70.75,
          high: 114.3,
          low: 66.73,
          close: 105.78),
      ChartSampleData(
          x: DateTime(2016, 07, 18),
          open: 98.7,
          high: 101,
          low: 98.31,
          close: 98.66),
      ChartSampleData(
          x: DateTime(2016, 07, 25),
          open: 95.25,
          high: 104.55,
          low: 80.42,
          close: 104.21),
      ChartSampleData(
          x: DateTime(2016, 08, 01),
          open: 90.41,
          high: 120.65,
          low: 80,
          close: 118.48),
      ChartSampleData(
          x: DateTime(2016, 08, 08),
          open: 107.52,
          high: 120.94,
          low: 90.16,
          close: 125.18),
      ChartSampleData(
          x: DateTime(2016, 08, 15),
          open: 90.14,
          high: 95.23,
          low: 70.08,
          close: 115.36),
      ChartSampleData(
          x: DateTime(2016, 08, 22),
          open: 90.86,
          high: 100.32,
          low: 80.31,
          close: 110.94),
      ChartSampleData(
          x: DateTime(2016, 08, 29),
          open: 100.62,
          high: 108,
          low: 90.5,
          close: 107.73),
      ChartSampleData(
          x: DateTime(2016, 09, 05),
          open: 107.9,
          high: 108.76,
          low: 103.13,
          close: 103.13),
      ChartSampleData(
          x: DateTime(2016, 09, 12),
          open: 100.65,
          high: 116.13,
          low: 99.53,
          close: 120.92),
      ChartSampleData(
          x: DateTime(2016, 09, 19),
          open: 115.19,
          high: 116.18,
          low: 100.55,
          close: 101.71),
      ChartSampleData(
          x: DateTime(2016, 09, 26),
          open: 111.64,
          high: 114.64,
          low: 105.55,
          close: 130.05),
      ChartSampleData(
          x: DateTime(2016, 10, 03),
          open: 112.71,
          high: 114.56,
          low: 112.28,
          close: 131.06),
      ChartSampleData(
          x: DateTime(2016, 10, 10),
          open: 90.02,
          high: 99.69,
          low: 70.72,
          close: 120.63),
      ChartSampleData(
          x: DateTime(2016, 10, 17),
          open: 117.33,
          high: 120.21,
          low: 80.8,
          close: 100.6),
      ChartSampleData(
          x: DateTime(2016, 10, 24),
          open: 100.1,
          high: 100.36,
          low: 40.31,
          close: 70.72),
      ChartSampleData(
          x: DateTime(2016, 10, 31),
          open: 80.65,
          high: 120.23,
          low: 55.11,
          close: 100.84),
      ChartSampleData(
          x: DateTime(2016, 11, 07),
          open: 100.08,
          high: 120.72,
          low: 90.83,
          close: 119.43),
      ChartSampleData(
          x: DateTime(2016, 11, 14),
          open: 120.71,
          high: 105.54,
          low: 100.08,
          close: 135.06),
      ChartSampleData(
          x: DateTime(2016, 11, 21),
          open: 90.12,
          high: 95.42,
          low: 85.42,
          close: 105.12),
      ChartSampleData(
          x: DateTime(2016, 11, 28),
          open: 100.43,
          high: 102.465,
          low: 99.85,
          close: 105.9),
      ChartSampleData(
          x: DateTime(2016, 12, 05),
          open: 98,
          high: 99.7,
          low: 90.25,
          close: 109.95),
      ChartSampleData(
          x: DateTime(2016, 12, 12),
          open: 113.29,
          high: 116.73,
          low: 112.49,
          close: 115.97),
      ChartSampleData(
          x: DateTime(2016, 12, 19),
          open: 115.8,
          high: 117.5,
          low: 115.59,
          close: 120.52),
      ChartSampleData(
          x: DateTime(2016, 12, 26),
          open: 116.52,
          high: 118.0166,
          low: 115.43,
          close: 140.82),
      /*ChartSampleData(
          x: DateTime(2017, 01, 30),
          open: 110.97,
          high: 120.19,
          low: 80.36,
          close: 120.13),
      ChartSampleData(
          x: DateTime(2017, 01, 05),
          open: 90.97,
          high: 115.19,
          low: 80.36,
          close: 117.13),*/
      ChartSampleData(
          x: DateTime(2017, 01, 11),
          open: 100.97,
          high: 120.19,
          low: 90.36,
          close: 118.13),
      ChartSampleData(
          x: DateTime(2017, 01, 18),
          open: 68.41,
          high: 101.46,
          low: 50.42,
          close: 101.42),
      ChartSampleData(
          x: DateTime(2017, 01, 25),
          open: 101.52,
          high: 30.53,
          low: 92.39,
          close: 97.34),
      ChartSampleData(
          x: DateTime(2017, 02, 01),
          open: 80.47,
          high: 97.33,
          low: 60.69,
          close: 94.02),
      ChartSampleData(
          x: DateTime(2017, 02, 08),
          open: 73.13,
          high: 96.35,
          low: 25.59,
          close: 93.99),
      ChartSampleData(
          x: DateTime(2017, 02, 15),
          open: 30.31,
          high: 58.0237,
          low: 25.0237,
          close: 50.31),
      ChartSampleData(
          x: DateTime(2017, 02, 22),
          open: 35.31,
          high: 38.0237,
          low: 20.0237,
          close: 38.31),
      ChartSampleData(
          x: DateTime(2017, 02, 29),
          open: 40.86,
          high: 70.75,
          low: 39.65,
          close: 73.01),
      ChartSampleData(
          x: DateTime(2017, 03, 07),
          open: 70.39,
          high: 85.83,
          low: 50.15,
          close: 102.26),
      ChartSampleData(
          x: DateTime(2017, 03, 14),
          open: 90.91,
          high: 115.5,
          low: 80.78,
          close: 117.92),
    ];
  }
}

class ChartSampleData {
  ChartSampleData({
    this.x,
    this.open,
    this.close,
    this.low,
    this.high,
  });
  final DateTime? x;
  final num? open;
  final num? close;
  final num? low;
  final num? high;
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    backgroundColor: Colors.white,
    elevation: 1,
    title: const Text(
      'Konfirmasi membeli slot',
      style: TextStyle(fontFamily: 'Rowdies'),
    ),
    content: new Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Apakah anda yakin ingin membeli slot?",
          style: TextStyle(fontFamily: 'SourceSerif', fontSize: 15),
        ),
      ],
    ),
    actions: <Widget>[
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Batal",
                style: TextStyle(color: Colors.white, fontFamily: 'Rowdies'),
              ),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            RaisedButton(
              onPressed: () {
                //something.buySlot();
                Navigator.of(context).pop();
              },
              child: Text(
                "Yakin",
                style: TextStyle(color: Colors.white, fontFamily: 'Rowdies'),
              ),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ])
    ],
  );
}

Widget _buildPopupDialog2(BuildContext context) {
  return new AlertDialog(
    backgroundColor: Colors.white,
    elevation: 1,
    title: const Text(
      'Konfirmasi menjual slot',
      style: TextStyle(fontFamily: 'Rowdies'),
    ),
    content: new Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Apakah anda yakin ingin menjual slot?",
          style: TextStyle(fontFamily: 'SourceSerif', fontSize: 15),
        ),
      ],
    ),
    actions: <Widget>[
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Batal",
                style: TextStyle(color: Colors.white, fontFamily: 'Rowdies'),
              ),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Yakin",
                style: TextStyle(color: Colors.white, fontFamily: 'Rowdies'),
              ),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ])
    ],
  );
}

Widget _buildPopupDialog3(BuildContext context) {
  return new AlertDialog(
    backgroundColor: Colors.white,
    elevation: 1,
    title: const Text(
      'Deposit Saldo Anda',
      style: TextStyle(fontFamily: 'Rowdies'),
    ),
    content: new Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Pilih nominal deposit anda",
          style: TextStyle(fontFamily: 'SourceSerif', fontSize: 15),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton(
                onPressed: () {},
                //color: Colors.white,
                //highlightColor: Colors.blue[50],
                splashColor: Colors.amber,
                color: Colors.white,
                //textTheme: primaryFocus,
                //onHighlightChanged: Colors.amber,
                child: Text(
                  "50",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              RaisedButton(
                onPressed: () {},
                splashColor: Colors.amber,
                color: Colors.white,
                child: Text(
                  "100",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              RaisedButton(
                onPressed: () {},
                splashColor: Colors.amber,
                color: Colors.white,
                child: Text(
                  "150",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              RaisedButton(
                onPressed: () {},
                splashColor: Colors.amber,
                color: Colors.white,
                child: Text(
                  "200",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton(
                onPressed: () {},
                splashColor: Colors.amber,
                color: Colors.white,
                child: Text(
                  "250",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              RaisedButton(
                onPressed: () {},
                splashColor: Colors.amber,
                color: Colors.white,
                child: Text(
                  "300",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              RaisedButton(
                onPressed: () {},
                splashColor: Colors.amber,
                color: Colors.white,
                child: Text(
                  "350",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  "400",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue)),
              ),
            ],
          ),
        ])
      ],
    ),
    actions: <Widget>[
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            new FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              //textColor: Theme.of(context).primaryColor,
              child: const Text(
                'Close',
                style: TextStyle(color: Colors.red),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Top Up",
                style: TextStyle(color: Colors.white, fontFamily: 'Rowdies'),
              ),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ])
    ],
  );
}

Widget _buildPopupDialog4(BuildContext context) {
  return new AlertDialog(
    backgroundColor: Colors.white,
    elevation: 1,
    title: const Text(
      'Konfirmasi membeli slot',
      style: TextStyle(fontFamily: 'Rowdies'),
    ),
    content: new Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Apakah anda yakin ingin membeli slot?",
          style: TextStyle(fontFamily: 'SourceSerif', fontSize: 15),
        ),
        Icon(Icons.check)
      ],
    ),
    actions: <Widget>[
      Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Ok",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      )
    ],
  );
}

class something {
  static int counter = 5000;
  static int total = 0;
}
