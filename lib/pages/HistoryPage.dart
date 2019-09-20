import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HISTÓRICO"),
      ),
      body: Container(
        child: ListTile(
          title: Text("""
          
    CONHECENDO O IFFar – SÃO VICENTE DO SUL
          """),
          subtitle: Text(
            """    
                  
          O Campus São Vicente do Sul do Instituto Federal Farroupilha, com sede no município de São Vicente do Sul, RS, foi criado em 17 de novembro de 1954, através de Termo de Acordo firmado entre a União e o então município de General Vargas, sob a denominação de Escola de Iniciação Agrícola, publicado no Diário Oficial de 30/11/1954, em conformidade com os Artigos 2º e 4º do Decreto Federal nº 22.470, de 20 e janeiro de 1947, que instalou o Ensino agrícola no Brasil, e os dispositivos do Decreto Lei 9.613, de 20 de agosto de 1946.""",
            style: TextStyle(fontSize: 16.0),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
        ),
      ),
    );
  }
}
