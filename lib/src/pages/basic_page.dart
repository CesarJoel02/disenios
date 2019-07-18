import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  
  final estitloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estitlosubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column(
          children: <Widget>[
          _crearImagen(),
          _creartitulo(),
          _crearacciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
       ),
      )
    );
  }

  Widget _crearImagen(){
  return FadeInImage(
    image: NetworkImage('https://reactiongifs.me/wp-content/uploads/2014/04/anne-hathaway-sexy.jpg'),
    placeholder: NetworkImage('https://thumbs.gfycat.com/GenuineIllinformedEmu-size_restricted.gif'),
  );
  }

  Widget _creartitulo(){
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20.0
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Anne Hathaway',style: estitloTitulo,),
                  SizedBox(height: 7.0,),
                  Text('Anne Hathaway',style: estitlosubTitulo,),
                ],
              ),
            ),
            Icon(Icons.star,color:Colors.red, size:30.0),
            Text('41',style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _crearacciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue,size: 40.0,),
            SizedBox(height: 5.0,),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
          ],
        );
  }

  Widget _crearTexto(){
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
          'Anne Jacqueline Hathaway (Brooklyn, Nueva York; 12 de noviembre de 1982) es una actriz y cantante estadounidense. Ganó el premio Óscar, el Globo de Oro, el BAFTA y el SAG a la Mejor actriz de reparto por su interpretación en Los miserables.La revista People la nombró como una de las grandes estrellas descubiertas en 2001​ y apareció por primera vez en la lista de las 50 personas más bellas del mundo de dicha revista en 2006.​',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }


}