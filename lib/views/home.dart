import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double nominal1;
  double nominal2;
  String opr;

  @override
  void initState() {
    nominal1 = 0;
    super.initState();
  }

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
                      nominal2 != null ? nominal2.toStringAsFixed(0) : '',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      nominal1 != null ? nominal1.toStringAsFixed(0) : '',
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
                        onPressed: () => _action("AC"),
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
                        onPressed: () => _action("Backspace"),
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
                        onPressed: () => _action("/"),
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
                        onPressed: () => _action("7"),
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
                        onPressed: () => _action("8"),
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
                        onPressed: () => _action("9"),
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
                        onPressed: () => _action("x"),
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
                        onPressed: () => _action("4"),
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
                        onPressed: () => _action("5"),
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
                        onPressed: () => _action("6"),
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
                        onPressed: () => _action("-"),
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
                        onPressed: () => _action("1"),
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
                        onPressed: () => _action("2"),
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
                        onPressed: () => _action("3"),
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
                        onPressed: () => _action("+"),
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
                        onPressed: () => _action("0"),
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

  _action(parameter) {
    switch (parameter) {
      case 'AC':
        setState(() {
          nominal1 = 0;
          nominal2 = null;
          opr = null;
        });
        break;

      case 'Backspace':
        setState(() {
          var length = nominal1.toStringAsFixed(0).length;
          if (length == 1) {
            nominal1 = 0;
          } else {
            nominal1 = double.parse(
                nominal1.toStringAsFixed(0).substring(0, (length - 1)));
          }
        });
        break;

      case "/":
        setState(() {
          if (nominal2 == null) {
            nominal2 = nominal1;
            nominal1 = 0;
          }
          if (opr != null) {
            var result = _math(opr);
            nominal2 = result;
            nominal1 = 0;
          }
          opr = "/";
        });
        break;

      case "x":
        setState(() {
          if (nominal2 == null) {
            nominal2 = nominal1;
            nominal1 = 0;
          }
          if (opr != null) {
            var result = _math(opr);
            nominal2 = result;
            nominal1 = 0;
          }
          opr = "x";
        });
        break;

      case "-":
        setState(() {
          if (nominal2 == null) {
            nominal2 = nominal1;
            nominal1 = 0;
          }
          if (opr != null) {
            var result = _math(opr);
            nominal2 = result;
            nominal1 = 0;
          }
          opr = "-";
        });
        break;

      case "+":
        setState(() {
          if (nominal2 == null) {
            nominal2 = nominal1;
            nominal1 = 0;
          }
          if (opr != null) {
            var result = _math(opr);
            nominal2 = result;
            nominal1 = 0;
          }
          opr = "+";
        });
        break;

      default:
        {
          setState(() {
            if (nominal1 != 0) {
              nominal1 = double.parse(nominal1.toStringAsFixed(0) + parameter);
            } else {
              nominal1 = double.parse(parameter);
            }
          });
        }
    }
  }

  _math(opr) {
    switch (opr) {
      case "/":
        return nominal2 / nominal1;
      case "+":
        return nominal2 + nominal1;
      case "-":
        return nominal2 - nominal1;
      case "x":
        return nominal2 * nominal1;
    }
  }
}
