import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiproject/dashboard_design.dart';
import 'package:uiproject/main.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  List<String> _dataList = ['facebook', 'instagram', 'whatsapp', 'facebook'];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Container(
          color: Color.fromRGBO(243, 243, 243, 1),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 32.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          child: Icon(Icons.arrow_back),
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
                        'People',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 23.0, fontWeight: FontWeight.bold),
                      ),
                      flex: 4,
                    ),
                    Expanded(
                      flex: 1,
                      child:  GestureDetector(
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
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 32.0,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 8, left: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color.fromRGBO(96, 126, 246, 1),
                      ),
                      child: Text(
                        'All',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 32.0,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 8, left: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color.fromRGBO(217, 224, 252, 1),
                      ),
                      child: Text(
                        'Instagram',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 32.0,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 8, left: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color.fromRGBO(217, 224, 252, 1),
                      ),
                      child: Text(
                        'Facebook',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 32.0,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 8, left: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color.fromRGBO(217, 224, 252, 1),
                      ),
                      child: Text(
                        'Contact',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: _dataList.length,
                  itemBuilder: (context, position) {
                    return Container(
                      margin: EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 6.0, bottom: 10.0),
                      height: 140.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 140.0,
                                    width: 140.0,
                                    margin: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(24.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'images/${_dataList[position]}_user.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 80.0, top: 12.0),
                                    child: Container(
                                      height: 25.0,
                                      width: 25.0,
                                      decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'images/${_dataList[position]}_icon.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              flex: 3,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'David Brian',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Sun, 20 Jun   12:00 AM',
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    '10m 42s',
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'By: ${_dataList[position]}     ',
                                          style: TextStyle(
                                              color: Colors.lightBlue),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          height: 34.0,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(right: 16),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            color: Colors.black12,
                                          ),
                                          child: Icon(
                                            Icons.phone,
                                            color: Colors.lightBlue,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          height: 34.0,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(right: 16),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            color: Colors.black12,
                                          ),
                                          child: Icon(
                                            Icons.message,
                                            color: Colors.lightBlue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              flex: 5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
