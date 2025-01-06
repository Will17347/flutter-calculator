import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: calculator_1(),
  ));
}
/*class calculator_1 extends StatefulWidget {
  @override
  _calculator_1State createState() => _calculator_1State();
}

class _calculator_1State extends State<calculator_1> {
  int valueA = 0;
  int valueB = 0;

  void incrementValueA() {
    setState(() {
      valueA++;
    });
  }

  void decrementValueA() {
    setState(() {
      valueA--;
    });
  }

  void incrementValueB() {
    setState(() {
      valueB++;
    });
  }

  void decrementValueB() {
    setState(() {
      valueB--;
    });
  } */

class calculator_1 extends StatelessWidget {
   calculator_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 22, 51),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CALCULATOR',
        ),
        backgroundColor: Color.fromARGB(255, 21, 22, 51),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.add, color: Colors.white, size: 50.0),
                        Text(
                          'ADD',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.minus, color: Colors.white, size: 50.0),
                        Text(
                          'MINUS',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.multiply, color: Colors.white, size: 50.0),
                        Text(
                          'MULTIPLY',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.divide, color: Colors.white, size: 50.0),
                        Text(
                          'DIVIDE',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ],
              ),
            ),
           Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  //flex: 2,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    //height: 150.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text(
                          'VALUE A',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 90.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                        FloatingActionButton(
                          onPressed: (){}, child: Icon(Icons.add),
                          shape: CircleBorder(),
                          backgroundColor: const Color.fromARGB(255, 152, 166, 173),),
                          SizedBox(width: 15.0,),
                        FloatingActionButton(onPressed:() {
                          print(Icons.numbers);
                        }, child: Icon(Icons.remove,),
                        shape: CircleBorder(),
                        backgroundColor: const Color.fromARGB(255, 152, 166, 173),),
                      ],
                      ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    //height: 150.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Icon(CupertinoIcons.number, color: Colors.white, size: 50.0),
                        Text(
                          'VALUE B',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 90.0,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [ 
                          FloatingActionButton(
                            onPressed: (){print(Icons.numbers);}, child: Icon(Icons.add),
                            shape: CircleBorder(),
                            backgroundColor: const Color.fromARGB(255, 152, 166, 173),),
                            
                            SizedBox(width: 15.0,),
                          FloatingActionButton(onPressed:() {
                            print(Icons.numbers); }, 
                            child: Icon(Icons.remove,),
                            shape: CircleBorder(),
                            backgroundColor: const Color.fromARGB(255, 152, 166, 173),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ), 
          ),
          ],
        ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 247, 50, 76),
        child: Text(
          'CALCULATE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
//}


