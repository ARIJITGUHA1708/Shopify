import 'package:flutter/material.dart';

class Hamburgerpage extends StatelessWidget {
  const Hamburgerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //shape: Border.all(style: BorderStyle.none),
      backgroundColor: const Color.fromARGB(255, 215, 219, 234),
      width: MediaQuery.of(context).size.width * 0.8,
      //surfaceTintColor: const Color.fromARGB(255, 0, 62, 249),
      child: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: const [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 18, 141, 242),
                  Color.fromARGB(255, 209, 229, 245)
                ])),
                child: Text(
                  "Shopsify",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                )),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("My Profile"),
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("SuperCoin Zone"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Shopsify Plus Zone"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("All Categories"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("More on Shopsify"),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Choose Language"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Offer Zone"),
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(Icons.sell),
            title: Text("Sell on Shopsify"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("My Orders"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Coupons"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("My Cart"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("My Wishlist"),
          ),
          ListTile(
            leading: Icon(Icons.notification_add),
            title: Text("My Notification"),
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(Icons.help_center),
            title: Text("Help Center"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Legal"),
          )
        ],
      ),
    );
  }
}
