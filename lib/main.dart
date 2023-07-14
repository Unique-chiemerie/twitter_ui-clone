import 'package:flutter/material.dart';
import 'foryou.dart';
import 'following.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const mainScreen(),
    theme: ThemeData(
      colorScheme: const ColorScheme.dark(
        background: Color.fromARGB(255, 35, 33, 33),
      ),
    ),
  ));
}

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 33, 33),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 33, 33),
        actions: [
          Center(
            child: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.blue),
              child: Image.asset('pics/dp.png'),
            ),
          ),
          const SizedBox(
            width: 135,
          ),
          Center(
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('pics/bird.png'),
            ),
          ),
          const SizedBox(
            width: 175,
          ),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'For you',
              ),
              Tab(text: 'Following'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                foryouScreen(),
                followingScreen(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.mic_none_rounded,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.mail_outline_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
