import 'package:flutter/material.dart';
import 'package:recipe_mobile_app/screens/CategoryScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  void handlePage(index) {
    setState(() {
      currentIndex = index;
    });
    _controller.jumpToPage(currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {},
        controller: _controller,
        children: [
          Scaffold(
            appBar: AppBar(
              title: Icon(Icons.ac_unit_rounded),
              backgroundColor: Colors.red,
              actions: [
                Icon(Icons.person),
                SizedBox(
                  width: 30,
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "hhlhuihi8kl",
                    style: TextStyle(fontSize: 22, color: Colors.green),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _categoryCircle("fsdafd"),
                        _categoryCircle("234234"),
                        _categoryCircle("sdafg"),
                        _categoryCircle("435324t"),
                        _categoryCircle("435324t"),
                        _categoryCircle("435324t"),
                        _categoryCircle("435324t"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Categoryes(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (index) {
          handlePage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: (currentIndex == 0) ? Colors.red : Colors.green,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: (currentIndex == 1) ? Colors.red : Colors.green,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: (currentIndex == 2) ? Colors.red : Colors.green,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: (currentIndex == 3) ? Colors.red : Colors.green,
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  Column _categoryCircle(String title) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(99)),
        ),
        Text(title)
      ],
    );
  }
}
