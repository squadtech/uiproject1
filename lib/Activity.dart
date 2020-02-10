import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiproject/chartscreen1.dart';
import 'package:uiproject/main.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List<String> _dataList = ['whatsapp', 'university', 'facebook', 'whatsapp'];
  Icon _searchIcon = Icon(
    Icons.search,
    color: Colors.grey,
  );
  bool _flag = true;
  Widget _appBarTitle = Text(
    'Activity',
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffeceff1),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => myApp()));
              });
            }),
        actions: <Widget>[
          Container(
            height: 32.0,
            width: 50.0,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (_flag) {
                    _flag = false;
                    this._searchIcon = Icon(
                      Icons.cancel,
                      color: Colors.grey,
                    );
                    this._appBarTitle = TextField(
                      decoration: InputDecoration(hintText: "Search here"),
                      textInputAction: TextInputAction.search,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    );
                  } else {
                    this._searchIcon = Icon(
                      Icons.search,
                      color: Colors.grey,
                    );
                    this._appBarTitle = Text(
                      'Activity',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    );
                    _flag = true;
                  }
                });
              },
              icon: _searchIcon,
            ),
          ),
        ],
        title: _appBarTitle,
      ),
      body: Container(
        color: Color.fromRGBO(243, 243, 243, 1),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60.0, right: 16.0, left: 16.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
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
                                  padding: EdgeInsets.only(left: 18.0, top: 5),
                                  child: Text(
                                    'Ontario, Canada     Today, 2 Hours',
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
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
