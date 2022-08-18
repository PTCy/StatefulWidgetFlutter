import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: attraction(),
    );
  }
}

class flutterstateful extends StatelessWidget {
  const flutterstateful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello'),
      ),

    );
  }
}

class attraction extends StatefulWidget {
  attraction({Key? key}) : super(key: key);

  @override
  State<attraction> createState() => _attractionState();
}

class _attractionState extends State<attraction> {
  bool Like = false;
  int countLike = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset('images/image1.jpg'),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oeschinen Lake Camoground',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            setState(() {
                              Like =! Like; //เมื่อกดจะทำค่าตรงกันข้าม
                              // if(Like){
                              //   countLike ++;
                              // }else{
                              //   countLike -- ;
                              // }
                              Like ? countLike++ : countLike-- ;
                            });
                          },
                          icon: Icon(Like? Icons.star : Icons.star_border_outlined), //ทำหลังเครื่องหมาย ? ถ้าเป็นจริง
                          color: Colors.red,
                        ),
                        Text('$countLike',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 80, right: 70)),
                        Icon(
                          Icons.phone,
                          color: Colors.cyan,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'CALL',
                          style: TextStyle(color: Colors.cyan),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.send,
                          color: Colors.cyan,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'ROUTE',
                          style: TextStyle(color: Colors.cyan),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 70, right: 80)),
                        Icon(
                          Icons.share,
                          color: Colors.cyan,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'SHARE',
                          style: TextStyle(color: Colors.cyan),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  // void buttonLike(){
  //   setState(() {
  //     if(Like){
  //       Like = false;
  //       countLike -= 1;
  //     }else{
  //       Like = true;
  //       countLike += 1 ;
  //     }
  //   });
  // }
}

