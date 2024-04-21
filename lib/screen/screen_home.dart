import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold
      (appBar: AppBar(
        title: const Text("My Quiz App"), 
        backgroundColor: Colors.yellow,
        leading: Container()
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: Image.asset('images/pic1.jpg',width: width*0.8,),),
          Padding(padding: EdgeInsets.all(width*0.024)),
          Text(
            'Quiz App powered by Flutter',
            style: TextStyle(
              fontSize: width * 0.065,
              fontWeight: FontWeight.bold
            ),
          ),
          const Text(
            'Follow the instructions below. \n Click Start to begin the quiz.',
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(width*0.048)),
          _buildStep(width, '1. Solve random 3 quizes.'),
          _buildStep(width, '2. Read problem carefully and chose the answer. \n Click next button to move on.'),
          _buildStep(width, '3. Get all the problems right!'),
          Padding(padding: EdgeInsets.all(width * 0.048)),
          Container(
            padding: EdgeInsets.only(bottom: width * 0.036),
            child: Center(
              child: ButtonTheme(
                minWidth: width * 0.8, 
                height: height * 0.05,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: const ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.yellow),),
                  onPressed: null,
                  child: Text('Begin Now', style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
          )
        ],
      ),
    )
    );
  }

  Widget _buildStep(double width, String title){
    return Container(
      padding: EdgeInsets.fromLTRB(width * 0.048, width * 0.024, width * 0.048, width * 0.024),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(Icons.check_box, size: width * 0.024,),
        Padding(padding: EdgeInsets.only(right: width * 0.024)),
        Text(title)
      ],),
    );
  }
}