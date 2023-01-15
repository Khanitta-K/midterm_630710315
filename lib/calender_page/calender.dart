
import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  var _month = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('CALENDER 2023')
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: (){
                      setState(() {
                        _month = 1;
                      });
                    },
                    child: Text('January')
                ),
                OutlinedButton(
                    onPressed: (){},
                    child: Text('February')
                ),
                OutlinedButton(
                    onPressed: (){},
                    child: Text('March')
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: (){},
                    child: Text('July')
                ),
                OutlinedButton(
                    onPressed: (){},
                    child: Text('August')
                ),
                OutlinedButton(
                    onPressed: (){},
                    child: Text('September')
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: (){},
                    child: Text('April')
                ),
                OutlinedButton(
                    onPressed: (){},
                    child: Text('May')
                ),
                OutlinedButton(
                    onPressed: (){},
                    child: Text('June')
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: (){},
                    child: Text('October')
                ),
                OutlinedButton(
                    onPressed: (){},
                    child: Text('November')
                ),
                OutlinedButton(
                    onPressed: (){},
                    child: Text('December')
                ),
              ],
            ),
          ),


          Container(
            child: Column(
              children: [
                Text('มกราคม')
              ],
            ),

          ),
        ],
      ),
    );
  }
}
