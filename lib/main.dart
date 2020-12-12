import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

String strExp = " ", strAns = "0";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //This is my ExpressionBox
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 40, 10, 30),
                  child: Text(
                    strExp == " " ? "Give Input" : strExp,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                      color: Colors.deepPurple[300],
                      // backgroundColor: Colors.blue[300],
                    ),
                  ),
                ),
              ],
            ),

            //This is my AnswerBox
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 30, 40),
                  child: Text(
                    strAns,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.purple[300],
                      // backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),

            //KeyPad
            getKeyPad(),
          ],
        ),
      ),
    );
  }
}

//KeyPad Function
getKeyPad() {
  return Column(
    children: [
      //To Display Number Pad and Operator
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Displaying number Pad
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Displaying 1to9
              //FirstRow
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //7
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: InkWell(
                      child: Text(
                        "7",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("7"),
                    ),
                  ),

                  //8
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      child: Text(
                        "8",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("8"),
                    ),
                  ),

                  //9
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      child: Text(
                        "9",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("9"),
                    ),
                  ),
                ],
              ),

              //Second Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //6
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      child: Text(
                        "6",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("6"),
                    ),
                  ),

                  //5
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      child: Text(
                        "5",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("5"),
                    ),
                  ),

                  //4
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      child: Text(
                        "4",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("4"),
                    ),
                  ),
                ],
              ),

              //Third Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //3
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      child: Text(
                        "3",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("3"),
                    ),
                  ),

                  //2
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("2"),
                    ),
                  ),

                  //1
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple[300],
                          // backgroundColor: Colors.blue,
                        ),
                      ),
                      onTap: () => updateExp("1"),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //Displaying Operators
          Container(
            color: Colors.purple[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Division Operator
                InkWell(
                  child: Text(
                    "%",
                    style: TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.w400,
                      color: Colors.purple[300],
                      // backgroundColor: Colors.blue,
                    ),
                  ),
                  onTap: () => updateExp("/"),
                ),

                //Multiplication Operator
                InkWell(
                  child: Text(
                    "*",
                    style: TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.w300,
                      color: Colors.purple[300],
                      // backgroundColor: Colors.blue,
                    ),
                  ),
                  onTap: () => updateExp("*"),
                ),

                //Addition Operator
                InkWell(
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.w300,
                      color: Colors.purple[300],
                      // backgroundColor: Colors.blue,
                    ),
                  ),
                  onTap: () => updateExp("+"),
                ),

                //Subtract Operator
                InkWell(
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.w300,
                      color: Colors.purple[300],
                      // backgroundColor: Colors.blue,
                    ),
                  ),
                  onTap: () => updateExp("-"),
                ),
              ],
            ),
          )
        ],
      ),

      //To Display "." "<-" "="
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Dot '.' Operator
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                ".",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: Colors.purple[300],
                  // backgroundColor: Colors.blue,
                ),
              ),
            ),
            onTap: () => updateExp("."),
          ),

          // For '0'
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: Colors.purple[300],
                  // backgroundColor: Colors.blue,
                ),
              ),
              onTap: () => updateExp("0"),
            ),
          ),

          // Clear arrow
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.indigoAccent,
                  size: 42,
                ),
                onPressed: () {
                  setState(() {
                    if (strExp != null && strExp.length > 0)
                      strExp = strExp.substring(0, strExp.length - 1);
                  });
                }),
          ),

          // " = " Button
          Padding(
            padding: const EdgeInsets.all(15),
            child: FlatButton(
              color: Colors.deepPurpleAccent,
              child: Text(
                "=",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 42,
                ),
              ),
              onPressed: () => updateExp("="),
            ),
          )
        ],
      )
    ],
  );
}

updateExp(String strValue) {
  setState(() {
    strExp = strExp + strValue;
  });
}
