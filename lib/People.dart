import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiproject/main.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  List<String> _dataList = ['facebook', 'instagram', 'whatsapp', 'facebook'];
  Icon _searchIcon = Icon(
    Icons.search,
    color: Colors.grey,
  );
  bool _flag = true;
  Widget _appBarTitle = Text(
    'People',
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffeceff1),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => myApp()));
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
                        'People',
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
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
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
