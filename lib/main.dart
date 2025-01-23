import 'package:calculator/screens/splash_screen.dart';
import 'package:calculator/utils/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: calculator_1(),
  ));
}

class calculator_1 extends StatefulWidget {
   const calculator_1({
    this.ontap,
    super.key});


final void Function()? ontap;
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
      }

      void multiplier() {
        setState(() {
          valueA * valueB;
        });
      }

      void divider() {
        setState(() {
          valueA / valueB;
        });
      }

      void adder() {
        setState(() {
          valueA + valueB;
        });
      }

      void subtractor() {
        setState(() {
          valueA - valueB;
        });
      }

      void calculate() {
        setState(() {
          valueA + valueB;
        });
      }

      @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 3), (){
      if (mounted) {
    
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => SplashScreen(),
          ),
        );
      }
    });
  }


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
                // Expanded(child: ReusableCard( 
                //  color: Color.fromARGB(255, 20, 20, 78), ontap: (){}, text: 'MULTIPLYS', icon:CupertinoIcons.add,),),
                // //   child: Container(
                //     margin: EdgeInsets.all(10.0),
                //     decoration: BoxDecoration(
                //       color: Color.fromARGB(255, 20, 20, 78),
                //       borderRadius: BorderRadius.circular(10.0),
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(CupertinoIcons.multiply, color: Colors.white, size: 50.0),
                //         Text(
                //           'MULTIPLY',
                //           style: TextStyle(
                //             color: Colors.grey,
                //             fontSize: 15.0,
                //             fontWeight: FontWeight.w400,
                //           ),
                //         ),
                //       ],
                //     ),
                // ),
                  //),
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
                        SizedBox(height: 45.0),
                        Text(
                          '$valueA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 70.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 45.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              valueA++;
                            });
                          },
                          shape: CircleBorder(),
                          backgroundColor: const Color.fromARGB(255, 152, 166, 173), child: Icon(Icons.add),),
                          SizedBox(width: 15.0,),
                        FloatingActionButton(onPressed:() {
                          setState(() {
                            valueA--;
                          });
                        },
                        shape: CircleBorder(),
                        backgroundColor: const Color.fromARGB(255, 152, 166, 173), child: Icon(Icons.remove,),),
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
                        SizedBox(height: 45.0,),
                        Text(
                          '$valueB',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 70.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 45.0,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [ 
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                valueB++;
                              });
                            },
                            shape: CircleBorder(),
                            backgroundColor: const Color.fromARGB(255, 152, 166, 173), child: Icon(Icons.add),),
                            
                            SizedBox(width: 15.0,),
                          FloatingActionButton(onPressed:() {
                            setState(() {
                              valueB--;
                            }); },
                            shape: CircleBorder(),
                            backgroundColor: const Color.fromARGB(255, 152, 166, 173), 
                            child: Icon(Icons.remove,),),
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
        //shape: CircularNotchedRectangle(),
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


