import 'package:flutter/material.dart';
import 'package:kboyunivtest/video_detail_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.videocam,
            color: Colors.black,
          ),
          title: const Text(
              'withToneテストの大学大学',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 44,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
                color: Colors.black,
              ),
            ),
          ],
        ),
        body:Container (
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 children: <Widget>[
                   SizedBox(
                     width: 60,
                     height: 60,
                     child: Image.asset(
                         'images/p1.png'
                     ),
                   ),
                   const SizedBox(
                     width: 8,
                   ),
                   Column(
                     children: <Widget>[
                       const Text(
                         'KOBYのFlutter大学',
                       ),
                       TextButton(
                         onPressed: () {},
                         child: Row(
                           children: const <Widget>[
                             Icon(
                               Icons.video_call,
                               color: Colors.red,
                             ),
                             Text('登録する'),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async{
                        // TODO　画面遷移
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage(),
                          ),
                        );
                      },
                      contentPadding: const EdgeInsets.all(8),
                      leading: Image.network(
                          'https://i.ytimg.com/vi/SHoTRjzc1lI/maxresdefault.jpg',
                      ),
                      title: Column(
                        children: [
                          const Text('【Flutter超入門】リストを作る方法',
                          style: TextStyle(
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          Row(
                            children: const<Widget>[
                              Text('267回再生',
                            style: TextStyle(fontSize: 13),
                              ),
                              Text('5日前',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}