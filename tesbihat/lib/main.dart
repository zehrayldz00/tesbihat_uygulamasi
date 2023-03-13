import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit:BoxFit.cover,
        ),
      ),
     child: Stack(
      children: [
        Center(
          child:Image.asset('images/shell.png'),
          
        ),
        const CreatePearl(top: 205, left: 80, w: 200, h: 200),
        const CreatePearl(top: 285, left: 84, w: 108, h: 108),
        const CreatePearl(top: 305, left: 180, w: 80, h: 80),
             
        ],
     ), 
    );
  }
}
class CreatePearl extends StatelessWidget {
  final double top;
  final double left;
  final double w;
  final double h;

  const CreatePearl({
    Key? key,
    required this.top,
    required this.left,
    required this.w,
    required this.h,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top:top,
          left:left,
          child:SizedBox(
            width:w,
            height:h,
            child: Image.asset('images/pearl.png'),
          ) )
      ],
    );
  }
}


