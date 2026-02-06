import 'package:flutter/material.dart';
import 'package:talker/Widgets/Message.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: Color(0xff181818),
          appBar: AppBar(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            backgroundColor: Color(0xff168C4B),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {},
            ),
            title: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/gergesfaiz.jpg"),
                  radius: 18,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gerges Faiz",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "online",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.call, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.videocam, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Message("Hello !", Color(0xff168C4B)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Message("Hello !", Color(0xff232D36))],
                  ),
                  Message(
                    "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                    Color(0xff168C4B),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Color(0xff168C4B),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/route.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Message(
                        "what a Great Content Tp learn Flutter",
                        Color(0xff232D36),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Row(spacing: 4,
              children: [
                Expanded(
                  child: TextFormField(
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green, width: 1),
                      ),
                      prefixIcon: Icon(Icons.camera_alt, color: Colors.white),
                      suffixIcon: Icon(Icons.send, color: Colors.white),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Color(0xFF168C4B),
                    padding: EdgeInsets.all(12),
                  ),
                  onPressed: () {},
                  child: Icon(Icons.mic, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
