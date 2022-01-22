import 'package:bins/screens/challenges/monthly/monthlyChallenges.dart';
import 'package:bins/screens/loginScreen/loginScreen.dart';
import 'package:bins/screens/profilePage/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:bins/screens/homepage/homepage.dart';

enum pages {none, homepage, profile, challenges, recycle, settings, logout}

class Sidebar extends StatelessWidget{
  pages currentlySelected = pages.none;
  Color _selectedTileColor = Colors.black12;
  Color _selectedPageColor = Colors.deepPurple;
  Sidebar({Key? key, required this.currentlySelected}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              selected: currentlySelected == pages.homepage ? true : false,
              selectedTileColor: _selectedTileColor,
              title: Text('Home',
                    style: TextStyle(
                        fontWeight: (currentlySelected == pages.homepage ? FontWeight.bold : FontWeight.normal),
                        color:(currentlySelected == pages.homepage ? _selectedPageColor : Colors.black))
              ),
              leading: Icon(
                Icons.home,
                color: (currentlySelected == pages.homepage ? _selectedPageColor : Colors.black),
                size: 24.0,
              ),
              onTap: () {
                // Update the state of the app
                  currentlySelected = pages.homepage;
                // Then close the drawer
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHomePage(title:"Home");
                      },
                    ),
                  );
              },
            ),
            ListTile(
              selected: currentlySelected == pages.profile ? true : false,
              selectedTileColor: _selectedTileColor,
              title: Text('My Profile',
                    style: TextStyle(
                        fontWeight: (currentlySelected == pages.profile ? FontWeight.bold : FontWeight.normal),
                        color:(currentlySelected == pages.profile ? _selectedPageColor : Colors.black))
              ),
              leading: Icon(
                Icons.account_circle,
                color: (currentlySelected == pages.profile ? _selectedPageColor : Colors.black),
                size: 24.0,
              ),
              onTap: () {
                // Update the state of the app
                currentlySelected = pages.profile;
                // Then close the drawer
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              selected: currentlySelected == pages.challenges ? true : false,
              selectedTileColor: _selectedTileColor,
              title: Text('Challenges',
                    style: TextStyle(
                        fontWeight: (currentlySelected == pages.challenges ? FontWeight.bold : FontWeight.normal),
                        color:(currentlySelected == pages.challenges ? _selectedPageColor : Colors.black))
              ),
              leading: Icon(
                Icons.emoji_events,
                color: (currentlySelected == pages.challenges ? _selectedPageColor : Colors.black),
                size: 24.0,
              ),
              onTap: () {
                // Update the state of the app
                currentlySelected = pages.challenges;
                // Then close the drawer
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MonthlyChallenges();
                      },
                    ),
                  );
              },
            ),
            ListTile(
              selected: currentlySelected == pages.recycle ? true : false,
              selectedTileColor: _selectedTileColor,
              title: Text('Recycle',
                    style: TextStyle(
                        fontWeight: (currentlySelected == pages.recycle ? FontWeight.bold : FontWeight.normal),
                        color:(currentlySelected == pages.recycle ? _selectedPageColor : Colors.black))
              ),
              leading: Icon(
                MdiIcons.recycle,
                color: (currentlySelected == pages.recycle ? _selectedPageColor : Colors.black),
                size: 24.0,
              ),
              onTap: () {
                // Update the state of the app
                currentlySelected = pages.recycle;
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              selected: currentlySelected == pages.settings ? true : false,
              selectedTileColor: _selectedTileColor,
              title: Text('Settings',
                    style: TextStyle(
                        fontWeight: (currentlySelected == pages.settings ? FontWeight.bold : FontWeight.normal),
                        color:(currentlySelected == pages.settings ? _selectedPageColor : Colors.black))
              ),
              leading: Icon(
                Icons.settings,
                color: (currentlySelected == pages.settings ? _selectedPageColor : Colors.black),
                size: 24.0,
              ),
              onTap: () {
                // Update the state of the app
                currentlySelected = pages.settings;
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              leading: Icon(
                Icons.logout,
                color: Colors.black,
                size: 24.0,
              ),
              onTap: () {
                // Update the state of the app
                currentlySelected = pages.none;
                // Then close the drawer
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );
  }
}
