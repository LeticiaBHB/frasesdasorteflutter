import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerador de Frases',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Frases do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _Frases = [
  'Acredite, você é capaz de tudo.', 'Sorria e inspire confiança hoje.','Supere desafios, vença barreiras.','Coragem transforma sonhos em realidade.',
  'Seja gentil, crie seu destino.', 'Sorte segue quem persiste sempre.' ,'Abraçe mudanças, cresça com elas.', 'Foco traz vitória, sem desistir.',
  'Sonhe grande, alcance o impossível.', 'Viva com paixão, sem arrependimentos.', 'Semeie positividade, colha sucesso.', 'Atitude positiva atrai oportunidades incríveis.',
  'Desafios são degraus para sucesso.', 'Fé move montanhas, realize milagres.', 'A sorte favorece os determinados.', 'Crie metas, alcance estrelas brilhantes.',
  'Dedicação gera resultados extraordinários sempre.', 'Persista, vença obstáculos, celebre conquistas.', 'Supere limites, alcance horizontes grandiosos.',
  'Seja valente, vença com dignidade.', 'Sorte é fruto do esforço constante.', 'Acredite, você é a mudança possível.', 'Inspire outros, seja uma luz brilhante.',
  'Viva cada dia com gratidão imensa.', 'Oportunidades surgem para quem busca.', 'Grandes feitos começam com pequenos passos.', 'Seja gentil, crie um mundo melhor.',
  'A sorte sorri para os perseverantes.', 'A felicidade está nas pequenas conquistas.', 'Transforme problemas em desafios vencíveis.', 'Sonhos alimentam a alma, siga-os sempre.',
  'Sucesso é fruto de trabalho árduo.', 'Crie seu destino com paixão inabalável.', 'Supere medos, alcance alturas incríveis.', 'Encare adversidades com coragem imbatível.',
  'A sorte é resultado do pensamento positivo.', 'Seja resiliente, vença tempos difíceis.', 'Abra portas com confiança e determinação.', 'Pense grande, alcance resultados extraordinários.',
  'Acredite em si, vença incertezas constantes.', 'Sorte é fruto do preparo contínuo.', 'Transforme desafios em oportunidades brilhantes.', 'Inspire-se, motive outros, seja lendário.',
  'Sucesso é jornada, não apenas destino.', 'Viva com intenção, alcance felicidade genuína.', 'Supere expectativas, seja excepcional sempre.', 'Sorte é escolha, aja com sabedoria.',
  'Aceite falhas, cresça, alcance excelência.', 'Acredite, sua jornada é extraordinária única.', 'Transforme negativo em positivo, brilhe intensamente.', 'Supere-se diariamente, alcance grandeza interior.',
  'A sorte segue quem empreende ação.', 'Com persistência, vitória é garantida sempre.', 'Acredite, o universo conspira a favor.','Sorte é fruto da mente positiva.','Inspire confiança, mude vidas, seja notável.',
  'Supere desafios, conquiste seu espaço merecido.','Acredite na jornada, não apenas destino.', 'Sorte é recompensa pela dedicação constante.', 'Seja você mesmo, sorte acompanha autenticidade.'];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(60);
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão para gerar uma frase da sorte:', style: TextStyle(fontSize: 16),
            ),
            Text(
              _Frases [_numeroAleatorio],
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18, fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
