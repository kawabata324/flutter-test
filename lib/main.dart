import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: CircleAvatar(
            child: Image.asset('lib/public/images/use.jpg'),
            ),
          ),
      body: SingleChildScrollView(
            child: Column(
              children: [
                TweetTile(),
              ],
            ),
          ),
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://ichigoproduction.com/core_sys/images/contents/00000048/block/00000173/00000214.jpg?1685003920'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('kawabata'),
                  SizedBox(width: 8),
                  Text('2023/05/28'),
                ]
                ),
                SizedBox(height: 8,),
                Text('Flutter始めました'),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                  )
            ],
          ),
        ],
      ),
    );
  }
}