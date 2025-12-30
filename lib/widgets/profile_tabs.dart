import 'package:flutter/material.dart';
import 'post_item.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            labelColor: Color(0xFF1877F2),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color(0xFF1877F2),
            tabs: [
              Tab(text: 'Posts'),
              Tab(text: 'Photos'),
              Tab(text: 'Amis'),
            ],
          ),
          SizedBox(
            height: 500,
            child: TabBarView(
              children: [
                // POSTS
                ListView(
                  children: const [
                    PostItem(),
                    PostItem(),
                  ],
                ),

                // PHOTOS
                GridView.count(
                  crossAxisCount: 3,
                  padding: const EdgeInsets.all(8),
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  children: List.generate(
                    9,
                    (index) => Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1501785888041-af3ef285b470',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),

                // AMIS
                ListView(
                  children: const [
                    FriendTile('Binta'),
                    FriendTile('Kindi'),
                    FriendTile('Mariame'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FriendTile extends StatelessWidget {
  final String name;
  const FriendTile(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e',
        ),
      ),
      title: Text(name),
      trailing: const Icon(Icons.more_horiz),
    );
  }
}
