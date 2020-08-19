import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Residencial Avenida',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Residencial Avenida'),
      ),
      body: _body(context),
    );
  }

  Column _body(BuildContext context) {
    return Column(
      children: <Widget>[
        _titulo(),
        _fotos(),
        _botoes(context),
      ],
    );
  }

  Container _titulo() {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Center(
        child: Text(
          'Visita online',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  Container _fotos() {
    return Container(
      padding: EdgeInsets.all(16),
      height: 300,
      child: PageView(
        children: <Widget>[
          _foto(
              'https://lh3.googleusercontent.com/proxy/nLRqSbg1aerUzMHRP0eNm-6Wze0hCaoIHJSr7IZaJe4IDsdttgJt6CdRc2m-2tL5rHjcd3da3hiVE0yYb0poergWsPYIQ0vDuVgjTI7X42iwtiBm3oxLu2xj9R-wgKBwkeLnfpOT-6LQ_N4WGNJ-U9N7b-M'),
          _foto(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcROairYhPXSH6Vly7TSNoUr5cXhthkxWFT3DA&usqp=CAU'),
          _foto(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS1QDO6FtK9r-wg3u9eiyHRCCwlv4U1jg6Qgg&usqp=CAU'),
          _foto(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWLH2vnIET_ZdJzy9-lwMzLrXFUJ5vG_3S_Q&usqp=CAU'),
          _foto(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcScLrnEKcxWtgQ9CsdOgIS-u_cCk2-Orc_efg&usqp=CAU'),
        ],
      ),
    );
  }

  Image _foto(String path) {
    return Image.network(
      path,
      fit: BoxFit.contain,
    );
  }

  Column _botoes(BuildContext context) {
    return Column(
      children: <Widget>[
        _botao('Casas com 2 ou 3 dorm.', _mostraPlantas, context),
        _botao('Planos de Pagamento', _mostraPlanos, context),
        _botao('Registre seu Interesse', _registreInteresse, context),
      ],
    );
  }

  RaisedButton _botao(String texto, Function telaNav, BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
// sem parâmetros, pode chamar direto
//      onPressed: telaNav,
      onPressed: () {
        telaNav(context);
      },
    );
  }

  _mostraPlantas(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PlantasPage()),
    );
  }

  _mostraPlanos(BuildContext context) {
    print('Planos');
  }

  _registreInteresse(BuildContext context) {
    print('Interessado');
  }
}

class PlantasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Residencial Avenida"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: Text('Voltar!'),
        ),
      ),
    );
  }
}
