import 'package:flutter/material.dart';
void main(){
	runApp(
    MaterialApp( 
	  	title: "Contador de Pessoas", 
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _qtdePessoas = 0;
  String _status = "Vazio";

  void _changeQtdePessoas(int variante)
  {
    setState(() {
      _qtdePessoas += variante;
    });

    if(_qtdePessoas == 0){
      _status = "Vazio!";
    } else if(_qtdePessoas == 5) {
      _status = "Lotado!";
    } else {
      _status = "Pode Entrar!";
    }
  }

  @override
  Widget build(BuildContext context){
    return (        
      Stack (
        children: <Widget>[
          Image.asset(
            "images/super.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
        
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pessoas: $_qtdePessoas",
                style: TextStyle(
                  color:Colors.white, 
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Padding(
                    padding: EdgeInsets.all(10.2),
                    child: 
                      FlatButton(
                      child: Text(
                        "+1", 
                        style: TextStyle(fontSize: 35.0, color: Colors.white),
                      ),
                      onPressed: () {
                        _changeQtdePessoas(1);
                      },
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(10.2),
                    child: 
                      FlatButton(
                      child: Text(
                        "-1", 
                        style: TextStyle(fontSize: 35.0, color: Colors.white),
                      ),
                      onPressed: () {
                        _changeQtdePessoas(-1);
                      },
                    ),
                  ),
                ],
              ),

              Text(
                "$_status", 
                style: TextStyle(
                  color:Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 25.0
                ),
              ),
            ],//Column
          ),
        ],
      )
    );
  }
}