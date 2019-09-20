import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/img/marca_svs.png'),
          ],
        ),
      ),
      Center(
        child: Text("Page 2"),
      ),
      Center(
        child: Text("Page 3"),
      ),
    ];

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/img/marca_svs_l.png'),
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                controller.jumpToPage(0);
                // Navigator.of(context).pushNamed('/home');
              },
            ),
            ListTile(
              title: Text("Historico"),
              leading: Icon(Icons.history),
              onTap: () {
                // Navigator.of(context).pushNamed('/history');
              },
            ),
            ListTile(
              title: Text("Cursos"),
              leading: Icon(Icons.note),
              onTap: () {
                // Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              title: Text("Organograma"),
              leading: Icon(Icons.insert_chart),
              onTap: () {
                // Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              title: Text("Opcoes"),
              leading: Icon(Icons.settings),
              onTap: () {
                // Navigator.of(context).pushNamed('/settings');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("CAE na Rede"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              controller.previousPage(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeOutBack);
            },
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              controller.jumpToPage(0);
            },
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {
              controller.nextPage(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeOutBack);
            },
          ),
        ],
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: pages.length,
        itemBuilder: (context, int index) {
          return pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("Historico"), icon: Icon(Icons.history)),
          BottomNavigationBarItem(
              title: Text("Cursos"), icon: Icon(Icons.collections_bookmark)),
        ],
      ),
    );
  }
}
