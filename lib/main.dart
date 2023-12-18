import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 169, 62, 8,),),
        useMaterial3: true,
      ),

      home: const  CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(backgroundColor: Colors.cyan,
        title: const Center(child: Text("Тапшырма 1"),
      ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            width: 325,
          height: 44,
         decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey,
          ),
          child: Center(
            child: Text(
            "Сан:$count",
          style: const TextStyle(
            color:
            Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          ),
          ),
          ),
          const SizedBox(
            height: 41,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    
                    setState(() {
                      count --;
                      
                    });
                  
                  },
                  child: Container(
                            width: 80,
                            height: 50,
                            
                            decoration: BoxDecoration(    color: const Color(0xff0D61AE),
                              borderRadius: BorderRadius.circular(10),
                              ),child: const Icon(Icons.remove, color: Colors.white,),
                          ),
                ),const SizedBox(width: 20,),
          InkWell(
            onTap: () {
             setState(() {
               count ++;
             });
            },
            child: Container(
              width: 80,
              height: 50,
             
              decoration: BoxDecoration(color: const Color(0xff0D61AE),
                borderRadius: BorderRadius.circular(10),
                ),child: const Icon(Icons.add, color: Colors.white,
                ),
            ),
          ),
        
          ],
          ),
         
          ],
      ),
    ),
  );

  }
}