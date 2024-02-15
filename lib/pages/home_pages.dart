import 'package:flutter/material.dart';
import 'package:visiting_card/pages/form_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName='/';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contract List',),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        onPressed: (){
          Navigator.pushNamed(context,FormPage.routeName);
        },
        shape:CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          onTap:(index){
            setState(() {
              selectedIndex=index;
            });
          } ,
          currentIndex: selectedIndex,

          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.person),
            label: 'All'
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
                label: 'Favorite'
            ),

          ],

        ),
      ),
      body: Center(

        child: Text('Hello',style: TextStyle(color: Colors.blue),),
      ),
    );
  }
}
