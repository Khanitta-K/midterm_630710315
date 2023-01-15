import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: const Calender(title: 'Calender'),
    );
  }
}

class Calender extends StatefulWidget {
  const Calender({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  var _monthNumber = 1;
  var _monthTH = 'January';
  var _monthEN = 'มกราคม';
  var _day = 31;
  @override
  Widget build(BuildContext context) {

    var dayList = <Widget>[];
    for(int i=0; i < _day; i++){
      var date = i+1;
      var d = date.toString();
      dayList.add(Expanded(child: Text(d,style: TextStyle(fontSize: 18),)));
    }
    for(int i=0; i < 4; i++){
      var date = i+1;
      var d = date.toString();
      dayList.add(Expanded(child: Text(" ",style: TextStyle(fontSize: 18),)));
    }

    var week1 = <Widget>[];
    for(int i=0; i<7 ;i++){
      week1.add(dayList[i]);
    }
    var week2 = <Widget>[];
    for(int i=7; i<14 ;i++){
      week2.add(dayList[i]);
    }
    var week3 = <Widget>[];
    for(int i=14; i<21 ;i++){
      week3.add(dayList[i]);
    }
    var week4 = <Widget>[];
    for(int i=21; i<28 ;i++){
      week4.add(dayList[i]);
    }
    var week5 = <Widget>[];
    for(int i=28; i<35 ;i++){
      week5.add(dayList[i]);
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('CALENDER 2023')
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 1;
                                    _monthEN = 'January';
                                    _monthTH = 'มกราคม';
                                    //_day = 31;
                                  });
                                },
                                child: Text('January')
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 2;
                                    _monthEN = 'February';
                                    _monthTH = 'กุมภาพันธ์';
                                    //_day = 28;
                                  });
                                },
                                child: Text('February')
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 3;
                                    _monthEN = 'March';
                                    _monthTH = 'มีนาคม';
                                    //_day = 31;
                                  });
                                },
                                child: Text('March')
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: OutlinedButton(
                                  onPressed: (){
                                    setState(() {
                                      _monthNumber = 4;
                                      _monthEN = 'April';
                                      _monthTH = 'เมษายน';
                                      //_day = 30;
                                    });
                                  },
                                  child: Text('April')
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: OutlinedButton(
                                  onPressed: (){
                                    setState(() {
                                      _monthNumber = 5;
                                      _monthEN = 'May';
                                      _monthTH = 'พฤษภาคม';
                                      //_day = 31;
                                    });
                                  },
                                  child: Text('May')
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: OutlinedButton(
                                  onPressed: (){
                                    setState(() {
                                      _monthNumber = 6;
                                      _monthEN = 'June';
                                      _monthTH = 'มิถุนายน';
                                      //_day = 30;
                                    });
                                  },
                                  child: Text('June')
                              ),
                            ),
                          ),
                        ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                     children: [
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 7;
                                    _monthEN = 'July';
                                    _monthTH = 'กรกฎาคม';
                                    //_day = 31;
                                  });
                                },
                                child: Text('July')
                            ),
                         ),
                       ),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 8;
                                    _monthEN = 'August';
                                    _monthTH = 'สิงหาคม';
                                    //_day = 31;
                                  });
                                },
                                child: Text('August')
                            ),
                         ),
                       ),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 9;
                                    _monthEN = 'September';
                                    _monthTH = 'กันยายน';
                                    //_day = 30;
                                  });
                                },
                                child: Text('September')
                            ),
                         ),
                       ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 10;
                                    _monthEN = 'October';
                                    _monthTH = 'ตุลาคม';
                                    //_day = 31;
                                  });
                                },
                                child: Text('October')
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 11;
                                    _monthEN = 'November';
                                    _monthTH = 'พฤศจิกายน';
                                    //_day = 30;
                                  });
                                },
                                child: Text('November')
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                                onPressed: (){
                                  setState(() {
                                    _monthNumber = 12;
                                    _monthEN = 'December';
                                    _monthTH = 'ธันวาคม';
                                    //_day = 31;
                                  });
                                },
                                child: Text('December')
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow
                      spreadRadius: 3, //spread radius
                      blurRadius: 5, // blur radius
                      offset: Offset(0, 2), // changes position of shadow

                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text('$_monthEN\n2023',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ),
                          Expanded(
                              child: Text('$_monthNumber',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ),
                          Expanded(
                              child: Text('$_monthTH\n2566',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text('S',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                              )
                          ),
                          Expanded(
                              child: Text('M',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                          Expanded(
                              child: Text('T',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                          Expanded(
                              child: Text('W',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                          Expanded(
                              child: Text('TH',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                          Expanded(
                              child: Text('F',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                          Expanded(
                              child: Text('S',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: week1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: week2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: week3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: week4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: week5,
                          ),
                        ),
                      ]
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
