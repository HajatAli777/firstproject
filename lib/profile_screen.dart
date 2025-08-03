import 'package:flutter/material.dart';
import 'main.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = themeNotifier.value == ThemeMode.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) {
                  return Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person),
                        title: const Text('Account Settings'),
                        onTap: () => Navigator.pop(context),
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: Text(isDark ? 'Light Mode' : 'Dark Mode'),
                        onTap: () {
                          Navigator.pop(context);
                          themeNotifier.value = isDark ? ThemeMode.light : ThemeMode.dark;
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.info_outline),
                        title: const Text('About App'),
                        onTap: () {
                          Navigator.pop(context);
                          showAboutDialog(
                            context: context,
                            applicationName: "Grocery App",
                            applicationVersion: "2.3",
                            applicationIcon: const FlutterLogo(),
                            children: const [Text("Developed by Hajat Ali.")],
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout),
                        title: const Text('Log Out'),
                        onTap: () => Navigator.pop(context),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Hajat Ali',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  'hajatali@gmail.com',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Edit Profile'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _buildProfileItem(Icons.favorite_border, 'Favourites'),
          _buildProfileItem(Icons.download_outlined, 'Downloads'),
          const Divider(),
          _buildProfileItem(Icons.language, 'Languages'),
          _buildProfileItem(Icons.location_on_outlined, 'Location'),
          _buildProfileItem(Icons.subscriptions_outlined, 'Subscription'),
          _buildProfileItem(Icons.desktop_windows_outlined, 'Display'),
          const Divider(),
          _buildProfileItem(Icons.delete_outline, 'Clear Cache'),
          _buildProfileItem(Icons.history, 'Clear History'),
          _buildProfileItem(Icons.logout, 'Log Out'),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'App Version 2.3',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
