import 'package:flutter/material.dart';

import '../page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

void onIndexChanged(int index){
  setState(() {
    currentIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage("https://static.bangkokpost.com/media/content/20200508/c1_1914776.jpg"),
            //   ),
            //   accountName: Text("Gitthitat Laosing"),
            //   accountEmail: Text("Gitth12345@gmail.com"),
            // ),
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://wallpaperaccess.com/full/1558939.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i2.wp.com/travelblog.expedia.co.th/wp-content/uploads/2019/07/cover-%E0%B9%84%E0%B8%AB%E0%B8%A7%E0%B9%89%E0%B8%9E%E0%B8%A3%E0%B8%B0%E0%B8%82%E0%B8%AD%E0%B8%9E%E0%B8%A3-9-%E0%B8%A7%E0%B8%B1%E0%B8%94.jpg?resize=1140%2C550&ssl=1"),
                      radius: 50,
                    ),
                    Text("ชื่อวัด"),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },    
              leading: Icon(Icons.people),
              title: Text("ประวัติ"),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("ปอยหลวงเชียงใหม่"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(pages[currentIndex].title),
      ),
      body: pages[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChanged,
        items: pages
            .map(
              (page) => BottomNavigationBarItem(
                icon: page.icon,
                label: page.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
