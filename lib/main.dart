//1
import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('StatelessWidget'),
       ),
       body: MyWidget(),
     ),
   );
 }
}

class MyWidget extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Center(
     child: Text(
       'Пример StatelessWidget',
       style: TextStyle(fontSize: 24),
     ),
   );
 }
}

//2
/* import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Flutter StatefulWidget Example'),
       ),
       body: MyWidget(),
     ),
   );
 }
}

class MyWidget extends StatefulWidget {
 @override
 _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
 int _counter = 0;

 void _incrementCounter() {
   setState(() {
     _counter++;
   });
 }

 @override
 Widget build(BuildContext context) {
   return Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text(
           'Вы нажали кнопку $_counter раз.',
           style: TextStyle(fontSize: 24),
         ),
         SizedBox(height: 20),
         ElevatedButton(
           onPressed: _incrementCounter,
           child: Text('Увеличить счетчик'),
         ),
       ],
     ),
   );
 }
}
*/

//3
/*import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('StatelessWidget'),
       ),
       body: Center(
         child: RoundedContainer(),
       ),
     ),
   );
 }
}

class RoundedContainer extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Container(
     width: 200,
     height: 200,
     decoration: BoxDecoration(
       color: Colors.purple,
       shape: BoxShape.circle,
     ),
     child: Center(
       child: Text(
         'На потолке паук',
         style: TextStyle(
           color: Colors.white,
           fontSize: 20,
           fontWeight: FontWeight.bold,
         ),
       ),
     ),
   );
 }
}*/

//4
/*import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('***'),
       ),
       body: Column(
         children: <Widget>[
           Container(
             color: Colors.red,
             padding: EdgeInsets.all(30),
             child: Center(
               child: Text(
                 '1111111111111111111111111111',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 30,
                 ),
               ),
             ),
           ),
           Row(
             children: <Widget>[
               Container(
                 color: Colors.yellow,
                 padding: EdgeInsets.all(20.0),
                 child: Center(
                   child: Text(
                     '2222222222222222222222222',
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 24.0,
                     ),
                   ),
                 ),
               ),
             ],
           ),
         ],),),);}
}*/

//5
/*import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('***'),
       ),
       body: MyListView(),
     ),
   );
 }
}

class MyListView extends StatelessWidget {
 final List<String> items = ['Элемент 1', 'Элемент 2', 'Элемент 3', 'Элемент 4', 'Элемент 5'];

 @override
 Widget build(BuildContext context) {
   return ListView.builder(
     itemCount: items.length,
     itemBuilder: (context, index) {
       return Column(
         children: <Widget>[
           ListTile(
             title: Text(items[index]),
           ),
           Divider(
             thickness: 10.0, // Толщина разделителя
             color: Colors.grey, // Цвет разделителя
           ), ],);
     },
   );
 }
}*/

//6
/*import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Пример GridView без конструктора с GridViewDelegate'),
       ),
       body: MyGridView(),
     ),
   );
 }
}

class MyGridView extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return GridView.builder(
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 3, // колво элементов
       mainAxisSpacing: 10.0, // Горизонт
       crossAxisSpacing: 10.0, // Вертикаль
     ),
     itemCount: 12, // другое колво
     itemBuilder: (BuildContext context, int index) {
       return MyGridItem((index + 1).toString());
     },
   );
 }}

class MyGridItem extends StatelessWidget {
 final String text;

 MyGridItem(this.text);

 @override
 Widget build(BuildContext context) {
   return Container(
     color: Colors.purple,
     child: Center(
       child: Text(
         text,
         style: TextStyle(
           color: Colors.white,
           fontSize: 24.0,
         ),
       ),
     ),
   );
 }
}*/

//7
/*import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('PageView svetofor'),
       ),
       body: MyPageView(),
     ),
   );
 }
}
class MyPageView extends StatelessWidget {
 final PageController controller = PageController(initialPage: 0);

 @override
 Widget build(BuildContext context) {
   return PageView(
     controller: controller, //контрол
     children: <Widget>[
       Container(
         color: Colors.red,
         child: Center(
           child: Text(
             '1',
             style: TextStyle(
               color: Colors.white,
               fontSize: 24.0,
             ),
           ),
         ),
       ),
       Container(
         color: Colors.yellow,
         child: Center(
           child: Text(
             '2',
             style: TextStyle(
               color: Colors.white,
               fontSize: 24.0,
             ),
           ),
         ),
       ),
       Container(
         color: Colors.green,
         child: Center(
           child: Text(
             '3',
             style: TextStyle(
               color: Colors.white,
               fontSize: 24.0,
             ),
           ),
         ),
       ),
     ],
   );
 }
}*/

//8
/*import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Stack, Positioned и IndexedStack '),
       ),
       body: MyStackExample(),
     ),
   );
 }
}

class MyStackExample extends StatefulWidget {
 @override
 _MyStackExampleState createState() => _MyStackExampleState();
}

class _MyStackExampleState extends State<MyStackExample> {
 int selectedIndex = 0;

 @override
 Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
       IndexedStack(
         index: selectedIndex,
         children: <Widget>[
           Positioned(
             left: 50,
             top: 50,
             child: GestureDetector(
               onTap: () {
                 setState(() {
                   selectedIndex = 0;
                 });
               },
               child: ClipOval(
                 child: Container(
                   width: 100,
                   height: 100,
                   color: Colors.red,
                   child: Center(
                     child: Text(
                       '1',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 24,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ),
           Positioned(
             left: 50,
             top: 50,
             child: GestureDetector(
               onTap: () {
                 setState(() {
                   selectedIndex = 1;
                 });
               },
               child: ClipOval(
                 child: Container(
                   width: 100,
                   height: 100,
                   color: Colors.purple,
                   child: Center(
                     child: Text(
                       '2',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 24,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ),
         ],
       ),
       SizedBox(height: 20),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           ElevatedButton(
             onPressed: () {
               setState(() {
                 selectedIndex = 0;
               });
             },
             child: Text('Показать 1'),
           ),
           SizedBox(width: 20),
           ElevatedButton(
             onPressed: () {
               setState(() {
                 selectedIndex = 1;
               });
             },
             child: Text('Показать 2'),
           ),
         ],
       ),
     ],
   );
 }
} */

//9

/*import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Navigator Example',
     home: HomeScreen(),
   );
 }
}

class HomeScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Home')),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
             onPressed: () {
               // Переход на 2
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => SecondScreen()),
               );
             },
             child: Text('Перейти на 2 экран'),
           ),
         ],
       ),
     ),
   );
 }
}

class SecondScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Second')),
     body: Center(
       child: ElevatedButton(
         onPressed: () {
           // Возврат
           Navigator.pop(context);
         },
         child: Text('Назад'),
       ),
     ),
   );
 }
}
*/

//10
/*import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Arguments Exmp',
     initialRoute: '/',
     routes: {
       '/': (context) => HomeScreen(),
       '/second': (context) => SecondScreen(),
     },
   );
 }
}

class HomeScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Home')),
     body: Center(
       child: ElevatedButton(
         onPressed: () {
           // messag на 2
           Navigator.pushNamed(
             context,
             '/second',
             arguments: 'Привет с первого экрана!',
           );
         },
         child: Text('Перейти на Второй экран'),
       ),
     ),
   );
 }
}

class SecondScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   final message = ModalRoute.of(context)!.settings.arguments as String;
   return Scaffold(
     appBar: AppBar(title: Text('Second')),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Сообщение с первого экрана:'),
           Text(
             message,
             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
           ),
           ElevatedButton(
             onPressed: () {
               // Возврат
               Navigator.pop(context);
             },
             child: Text('Назад'),
           ),],
       ),
     ),
   );
 }
}*/

