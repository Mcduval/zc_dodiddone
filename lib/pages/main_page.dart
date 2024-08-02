// import 'package:flutter/material.dart';
// import 'package:zc_dodiddone/theme/theme.dart';

// class MainPage extends StatefulWidget {
//   // ignore: use_super_parameters
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   static const List<Widget> _widgetOptions = <Widget>[
//     Text('Tâches'),
//     Text('Aujourd\'hui'),
//     Text('Profil'),
//     Text('Terminé'),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         // Définition du thème
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.blue, // Couleur de fond
//         selectedItemColor: DoDidDoneTheme
//             .lightTheme.colorScheme.primary, // Couleur des icônes sélectionnées
//         unselectedItemColor: DoDidDoneTheme.lightTheme.colorScheme.secondary,
//         // .withOpacity(0.7), // Couleur des icônes non sélectionnées
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.list),
//             label: 'Tâches',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: 'Aujourd\'hui',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profil',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.check_circle),
//             label: 'Terminé',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:zc_dodiddone/theme/theme.dart';

class MainPage extends StatefulWidget {
  // ignore: use_super_parameters
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Tâches'),
    Text('Aujourd\'hui'),
    Text('Profil'),
    Text('Terminé'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              DoDidDoneTheme.lightTheme.colorScheme.primary,
              DoDidDoneTheme.lightTheme.colorScheme.secondary,
            ],
          ),
        ),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Définition du thème
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, // Couleur de fond
        selectedItemColor: DoDidDoneTheme
            .lightTheme.colorScheme.primary, // Couleur des icônes sélectionnées
        unselectedItemColor: DoDidDoneTheme.lightTheme.colorScheme.secondary,
        // .withOpacity(0.7), // Couleur des icônes non sélectionnées
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Tâches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Aujourd\'hui',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Terminé',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
