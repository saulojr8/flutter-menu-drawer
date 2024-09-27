// Importa os pacotes necessários
import 'package:flutter/material.dart';
import 'package:menu/pages/first_page.dart';
import 'package:menu/pages/home_page.dart';
import 'package:menu/pages/settings_page.dart';

// Função principal para iniciar o aplicativo
void main() {
  // Executa o aplicativo com o widget raiz MyApp
  runApp(const MyApp());
}

// Classe principal do aplicativo (StatelessWidget)
class MyApp extends StatelessWidget {
  // Construtor da classe
  const MyApp({super.key});

  // Método build para construir o widget raiz
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Desativa a banner de debug
      debugShowCheckedModeBanner: false,
      // Título do aplicativo
      title: 'Flutter Demo',
      // Tema do aplicativo, utilizando o Material Design 3
      theme: ThemeData(
        // Esquema de cores baseado em uma cor de semente (deep purple)
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Indica que está usando o Material Design 3
        useMaterial3: true,
      ),

      // Página inicial do aplicativo
      home: const FirstPage
      (),

      // Rotas disponíveis para navegação
      routes: {
        // Rota para a FirstPage
        '/firstpage': (context) => const FirstPage(),
        // Rota para a HomePage
        '/homepage': (context) => const HomePage(),
        // Rota para a SettingsPage
        '/settingspage': (context) => const SettingsPage(),
      },
    );
  }
}
