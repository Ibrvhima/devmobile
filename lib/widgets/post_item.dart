import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
              ),
            ),
            title: const Text(
              'Ibrahima Diallo',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: const Text('Il y a 2 jours · 🌍'),
            trailing: const Icon(Icons.more_horiz),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'La discipline bat le talent quand le talent manque de discipline.',
            ),
          ),
          const SizedBox(height: 8),
          Image.network(
            'https://images.unsplash.com/photo-1501785888041-af3ef285b470',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('👍 28'),
                Text('4 commentaires'),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _PostAction(Icons.thumb_up_alt_outlined, 'J’aime'),
                _PostAction(Icons.comment_outlined, 'Commenter'),
                _PostAction(Icons.share_outlined, 'Partager'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PostAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const _PostAction(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey),
        const SizedBox(width: 6),
        Text(label),
      ],
    );
  }
}
