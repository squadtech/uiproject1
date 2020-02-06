import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiproject/chartscreen1.dart';
import 'package:uiproject/chartsscreen.dart';
import 'package:uiproject/main.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List<String> _dataList = ['whatsapp', 'university', 'facebook', 'whatsapp'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(243, 243, 243, 1),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(child: Icon(Icons.arrow_back),
                      onTap:() {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  myApp()),
                          );
                        });
                      },
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      'Activity',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 23.0, fontWeight: FontWeight.bold),
                    ),
                    flex: 4,
                  ),
                  Expanded(
                    flex: 1,
                    child:   GestureDetector(
                      child:Container(
                        height: 32.0,
                        width: 50.0,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.search),
                      ),
                      onTap: (){

                      },
                    )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.0, right: 16.0, left: 16.0),
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              height: 400.0,
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return Container(
                    height: 140.0,
                    margin: EdgeInsets.only(bottom: 8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 16.0, top: 16.0, bottom: 8.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'images/${_dataList[position]}.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  height: 50.0,
                                  width: 130.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 16.0, top: 8.0),
                                      child: Text(
                                        'www.${_dataList[position]}.com',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                            color: Colors.blue),
                                      ),
                                    ),

                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0,top: 5),
                                  child: Text(
                                    'Ontario, Canada     Today, 2 Hours',
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Image(
                                    image: AssetImage('images/whatsapp_icon.png'),
                                    height: 40.0,
                                    width: 40.0,
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: _dataList.length,
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Container(
               height: 50,
                color: Colors.white,

                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Web Activities',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 23.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text(
                        'Today',

                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:500),
              child: Container(
                height: 250.0,


                child: ChartScreen1(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
