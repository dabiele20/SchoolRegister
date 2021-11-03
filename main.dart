
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(ProvaStateful());

class ProvaStateful extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Prova Stateful",
    home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  final String title = "Prova Stateful";

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  String nomeAlunno = "Daniele Marchetilli";
  int voto = 8;

  var _selectedIndex = 0;

  int num = 0;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 10, right: 10),
        child: Column(

        children: <Widget>[
          
          Row(children: <Widget>[

            Container(
              padding: EdgeInsets.only(left: 2),
              child: Text(nomeAlunno, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,)),)
            ]),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: <Widget>[
            Column(
              children: <Widget> [
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: FlatButton(
                    onPressed: () => {},
                    color: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(

                        children: [
                          Text("Media", style: TextStyle(color: Colors.white),),
                          Text("8", style: TextStyle(fontSize: 30, color: Colors.white)),
                        ],
                      ),
                    )
                  )
                ),
              ]
            ),

            Column(
              children: <Widget> [
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: FlatButton(
                    onPressed: () => {},
                    color: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        children: [
                          Text("Assenze", style: TextStyle(color: Colors.white),),
                          Text("8", style: TextStyle(fontSize: 30, color: Colors.white)),
                        ],
                      ),
                    )
                  )
                ),
              ]
            ),

            Column(
              children: <Widget> [
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: FlatButton(
                    onPressed: () => {},
                    color: Colors.lightBlue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        children: [
                          Text("Ritardi", style: TextStyle(color: Colors.white),),
                          Text("8", style: TextStyle(fontSize: 30, color: Colors.white)),
                        ],
                      ),
                    )
                  )
                ),  
              ] 
            ),

            Column(
              children: <Widget> [
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: FlatButton(
                    onPressed: () => {},
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        children: [
                          Text("Uscite", style: TextStyle(color: Colors.white),),
                          Text("8", style: TextStyle(fontSize: 30, color: Colors.white)),
                        ],
                      ),
                    )
                  )
                ),
              ]
            ),
          ],),
          Column(
            children: <Widget> [
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(top: 16),
                  child: FlatButton(
                    onPressed: () => {},
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back_ios), color: Colors.white,),
                          Text("Giorno/Mese/Anno", style: TextStyle(color: Colors.white, fontSize: 20),),
                          IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_forward_ios), color: Colors.white,),
                        ],
                      ),
                    )
                  )
                ),
                Container(
                  width: 1000,
                  height: 400,
                  color: Colors.orange.shade100,
                  
                  child: 
                  FlatButton(onPressed: () => {}, 
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
                   child: Container(child: Text("Compiti")
                )
                )
                )
              ]
            
          )

        ])
      ),

      bottomNavigationBar: BottomNavigationBar(

        showSelectedLabels: false,
        showUnselectedLabels: false,

        selectedIconTheme: IconThemeData(size: 35),
        unselectedIconTheme: IconThemeData(size: 32),

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (_index) {
          setState(() {
            _selectedIndex = _index;
          });
        },

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem (
            icon: Icon(Icons.home_filled),
            title: Text("Home"),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text("Menu"),
          ),
        ]
      ),
    );
  }

  
}

