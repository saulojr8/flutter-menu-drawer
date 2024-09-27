// Importa o pacote base do Flutter para construção de interfaces
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Classe para a Primeira Página (StatelessWidget indica que o Widget não possui estado)
class FirstPage extends StatelessWidget {
  // Construtor da classe, obrigatoriamente recebe a chave (super.key)
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Retorna a estrutura da página utilizando o Scaffold
    return Scaffold(
      // Barra superior da aplicação (AppBar)
      appBar: AppBar(
        // Título da barra superior, texto fixo
        title: const Text("1st Page"),
      ),

      // Gaveta lateral da aplicação (Drawer)
      drawer: Drawer(
        // Cor de fundo da gaveta
        backgroundColor: Colors.blueAccent[200],

        // Conteúdo da gaveta, organizado em uma Coluna (Column)
        child: Column(
          children: [
            // Cabeçalho da gaveta (DrawerHeader)
            DrawerHeader(
              // Título do cabeçalho, centralizado e com texto preto
              child: Title(
                color: Colors.black,
                child: Center(child: Text("D R A W E R - M E N U")),
              ),
            ),

            // Item da lista na gaveta para a "Home Page"
            ListTile(
              // Ícone inicial (casa)
              leading: Icon(Icons.home),
              // Título do item (texto "HOME")
              title: Text("H O M E"),
              // Ação ao clicar no item
              onTap: () {
                // Fecha a gaveta primeiro
                Navigator.pop(context);
                // Navega para a "Home Page" usando rota nomeada
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            // Item da lista na gaveta para a "Settings Page"
            ListTile(
              // Ícone inicial (configurações)
              leading: Icon(Icons.settings),
              // Título do item (texto "SETTINGS")
              title: Text("S E T T I N G S"),
              // Ação ao clicar no item
              onTap: () {
                // Fecha a gaveta primeiro
                Navigator.pop(context);
                // Navega para a "Settings Page" usando rota nomeada
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
