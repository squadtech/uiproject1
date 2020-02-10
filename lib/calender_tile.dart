import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uiproject/main.dart';

class CalendarView extends StatefulWidget {
  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  CalendarController _calendarController;
  List<String> _dataList = ['User 1', 'User 2', 'User 3'];
  Icon _searchIcon = Icon(
    Icons.search,
    color: Colors.grey,
  );
  bool _flag = true;
  Widget _appBarTitle = Text(
    'DeadLines',
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
  );

  @override
  void initState() {
    _calendarController = CalendarController();
    super.initState();
  }

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
                      'DeadLines',
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
      body: Column(
        children: <Widget>[
          Container(
            // height: 400.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                color: Color(0xffeceff1)),
            // color: Color.fromRGBO(243, 243, 243, 1),
            child: Column(
              children: <Widget>[
                Stack(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 310.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                          color: Colors.white),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TableCalendar(
                                calendarController: _calendarController),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 170, bottom: 20.0),
            child: Container(
              child: Text(
                'This Week',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
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
                                  height: 100.0,
                                  width: 6.0,
                                  //   margin: EdgeInsets.all(8.0),
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
                              ],
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 16.0,
                                ),
                                Text(
                                  'Deadline name put here',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'status                           due date',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'High Priority',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '12june',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    )
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
