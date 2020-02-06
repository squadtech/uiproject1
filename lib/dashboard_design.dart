import 'package:flutter/material.dart';
import 'package:uiproject/Activity.dart';
import 'package:uiproject/People.dart';
import 'package:uiproject/calender_tile.dart';
import 'package:uiproject/chartsscreen.dart';
import 'package:uiproject/graphmodel.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text( 'Search Example' );



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Container(
          //  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          height: 370.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              color: Color(0xffeceff1)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Dashboard',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
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

                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(

                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Activity()),
                          );

                        });

                      },
                      child: Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/77-copy-2.png'),
                          ),
                          SizedBox(
                              width: 120,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 8.0,
                                  top: 8.0,
                                ),
                                child: Text('Activity',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              )),
                        ],
                      ) ,

                    ),
                  ),
                  Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                      ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  People()),
                        );

                      });

                    },
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:40,left:10),
                          child: Image(
                            image: AssetImage('images/undraw-hire-te5y.png'),
                          ),
                        ),
                        SizedBox(
                            width: 120,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8.0,
                                top: 8.0,
                              ),
                              child: Text('People',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            )),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/77-copy.png'),
                          ),
                          SizedBox(
                              width: 120,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 8.0,
                                  top: 8.0,
                                ),
                                child: Text('Location',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              )),
                        ],
                      )),
                  Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                      ),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CalendarView() ),
                            );

                          });

                        },
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:40,left: 15),
                              child: Image(
                                image: AssetImage('images/undraw-speed-test-wxl0.png'),
                              ),
                            ),
                            SizedBox(
                                width: 120,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                    top: 8.0,
                                  ),
                                  child: Text('Deadlines',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold)),
                                )),
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child:  Container(
            //  padding: EdgeInsets.only(left: 10.0),
            height: 80,
            width: double.infinity,

            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Total Spend',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'last 7 days',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      '760',
                      style: TextStyle(
                          color: Color(0xFF5965FF),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            //  padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
            height: 260,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.white),
            child:ChartScreen()
            /*Image(
              image: AssetImage('images/graph.PNG'),
            ),*/
          ),
        )
      ],
    );
  }

}
