import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'À propos de moi',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.location_on, size: 18),
              SizedBox(width: 6),
              Text('Conakry, Guinée , Sonfonia'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.work, size: 18),
              SizedBox(width: 6),
              Text('Développeur Web & Mobil'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.favorite, size: 18),
              SizedBox(width: 6),
              Text('En couple depuis 3 ans'),
            ],
          ),
        ],
      ),
    );
  }
}
