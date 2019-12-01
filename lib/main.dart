import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body:ListView(
        children: <Widget>[
          Padding(
            padding:EdgeInsets.only(
              top:15.0,left:10.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color:Colors.white,
                  onPressed:(){},
                ),
                Container(
                  width:125.0,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon:Icon(Icons.filter_list),
                        color:Colors.white,
                        onPressed:(){},
                      ),
                      IconButton(
                        icon:Icon(Icons.menu),
                        color:Colors.white,
                        onPressed:(){},
                      )
                    ],
                  )
                )
              ],
            ),
          ),
          SizedBox(height:25.0),
          Padding(
            padding:EdgeInsets.only(left:40.0),
            child: Row(
              children: <Widget>[
                Text('Healthy',
                style:TextStyle(
                  fontFamily:'MontSerrat',
                  color:Colors.white,
                  fontWeight:FontWeight.bold,
                  fontSize: 25.0
                ),
                ),
                 SizedBox(width: 10.0),
                Text('Food',
                style:TextStyle(
                  fontFamily:'MontSerrat',
                  color:Colors.white,
                  fontSize: 25.0
                ),
                )
              ],
            ),
          ),
          SizedBox(height:40.0),
          Container(
            height:MediaQuery.of(context).size.height -185.0,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.only(topLeft:Radius.circular(45.0))
            ),
            child:ListView(
              primary: false,
              padding:EdgeInsets.only(left:25.0,right:20.0),
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(top:45.0),
                  child:Container(
                    height:MediaQuery.of(context).size.height -300.0,
                    child:ListView(
                      children:[
                        _buildFoodItem('assets/images/plate1.png','Salmon Bowl','\$24.00'),
                        _buildFoodItem('assets/images/plate2.png','Chicken Bowl','\$20.00'),
                        _buildFoodItem('assets/images/plate3.png','Pillani Bowl','\$23.99'),
                        _buildFoodItem('assets/images/plate4.png','Desi Bowl','\$19.69')
                      ]
                    )
                  )
                )
              ],
            )
          )
        ],
      )
    );
  }
    Widget _buildFoodItem(String imgPath,String foodName,String price){
      return Padding(
        padding:EdgeInsets.only(left:10.0,right:10.0,top:10.0),
        child:InkWell(
          onTap:(){

          },
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child:Row(
                  children:[
                    Hero(
                      tag:imgPath,
                      child:Image(
                        image:AssetImage(imgPath),
                        fit:BoxFit.cover,
                        height:75.0,
                        width:75.0,
                      )
                    ),
                    SizedBox(width:10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          foodName,
                          style:TextStyle(
                            fontFamily:'Montserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        Text(
                          price,
                          style:TextStyle(
                            fontFamily:'Montserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color:Colors.grey,
                          )
                        ),
                      ]
                    )
                  ],
                )
              ),
              IconButton(
                icon:Icon(Icons.add),
                color:Colors.black,
                onPressed: (){},
              )
            ],
          )
        )
      );
    }
  }
