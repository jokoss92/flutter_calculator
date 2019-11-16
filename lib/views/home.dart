import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '1',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          'AC',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Icon(
                          Icons.backspace,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '/',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '7',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '8',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '9',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          'x',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '4',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '5',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '6',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '-',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: FlatButton(
                        color: Colors.grey,
                        child: Text(
                          '.',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
