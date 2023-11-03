import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Muscle x'),
          ),
          body: [
            Container(
              child: const Card(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/nombreGym.jpg'),
                      height: 400,
                      width: 9000,
                    ),
                  ],
                ),
              ),
            ),
            ListView(
              children: [
                Container(
                  child: const Column(
                    children: <Widget>[
                      ListTile(
                          title: Text('Día 1: Pierna'),
                          subtitle: Text(
                              '-Sentadillas con barra: 4 series x 8/10 reps\n'
                              '-Prensa en máquina: 4 series x 8/10 reps\n'
                              '-Extensión de gemelos: 4 series x 8/10 reps\n'
                              '-HIIT de 20 minutos, correr, bici, elíptica: 30 seg. suave – moderado / 30 seg. máximo')),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/rutinaPierna.jpg'),
                            height: 300,
                            width: 400,
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text('Dia 2: Pecho'),
                        subtitle: Text(
                            '-Press de banca con barra en banco plano: 4 series x 8/10 reps.\n'
                            '-Press banco inclinado con mancuernas: 4 series x 8/10 reps.\n'
                            '-Flexiones : 4 series x 8/10 reps.'),
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/rutinaPecho.jpg'),
                            height: 300,
                            width: 400,
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text('Dia 3: Espalda'),
                        subtitle: Text('-Dominadas: 4 series x 8/10 reps.\n'
                            '-Remo sentado: 4 series x 8/10 reps.\n'
                            '-Jalón al pecho polea alta: 4 series x 8/10 reps.\n'
                            '-Peso muerto rumano: 4 series x 8/10 reps.'),
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/rutinaEspalda.jpg'),
                            height: 300,
                            width: 400,
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text('Dia 4: Abdominales'),
                        subtitle: Text(
                            '-Elevaciones de piernas: 4 series x 20 reps.\n'
                            '- Crunches: 4 series x 20 reps.\n'
                            '-– Oblíquos con polea: 4 series x 20 reps.'),
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/rutinaAbdominales.jpg'),
                            height: 300,
                            width: 400,
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text('Dia 5: Hombro'),
                        subtitle: Text(
                            '-Press hombro sentado con barra: 4 series x 8/10 reps.\n'
                            '- Elevaciones laterales con mancuernas: 4 series x 8/10 reps.\n'
                            '-Encogimientos de hombro con mancuernas (trapecios): 4 series x 8/10 reps.'),
                      ),
                      Image(
                        image: AssetImage('assets/rutinaHombros.jpg'),
                        height: 300,
                        width: 400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Card(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/judiasverdes.jpg'),
                        width: 250,
                        height: 330,
                      ),
                      Expanded(
                        child: Text('Dieta 1\n'
                            '-Ensalada de Judias verdes con Tomates y huevo cocido\n'
                            '-Saltadeo de calabacines y ternera "estilo Asiatico"\n'
                            '-Panache imperial con Jamon Serrano\n'),
                      ),
                    ],
                  ),
                ),
                  Card(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/garbanzos.png'),
                        width: 250,
                        height: 330,
                      ),
                      Expanded(
                        child: Text('Dieta 2\n'
                            '-Espinaca con Garbanzo\n'
                      '-Pez Espada en salsa Verde y sus Patatas\n'
                      '-Fideos de arroz con champiñones y setas'),
                      ),
                    ],
                  ),
                ),
                  Card(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/pavo.png'),
                        width: 250,
                        height: 330,
                      ),
                      Expanded(
                        child: Text('Dieta 3\n'
                      '-Ajoblanco de almendras con Uvas\n'
                      '-Pavos confitado con especial morunas\n'
                      '-Verduras Asadas al limon con queso feta marinado'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/naranja.png'),
                        width: 250,
                        height: 330,
                      ),
                      Expanded(
                        child: Text('Dieta 4\n'
                      '-Ensalada con Hinojo y Naranja\n'
                      '-Wok de verduras y Salmon con semillas de Amapola\n'
                      '-Crema de puerros con guarnicion'),
                      ),
                    ],
                  ),
                ),
                  Card(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/lentejas.png'),
                        width: 250,
                        height: 330,
                      ),
                      Expanded(
                        child: Text('Dieta 5\n'
                      '-Hummus de lentejas y Remolacha con sesamo\n'
                      '-Berenjena rellena de Atun con nuestro tomate frito casero\n'
                      '-Pastel de Esparragos y Langostinos con salsas de yogur agrio'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ][currentPageIndex],
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              currentPageIndex = index;
              setState(() {});
            },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
              NavigationDestination(
                  icon: Icon(Icons.align_horizontal_left), label: 'Rutinas'),
              NavigationDestination(
                  icon: Icon(Icons.sports_martial_arts_sharp), label: 'Dietas'),
            ],
          )),
    );
  }
}
