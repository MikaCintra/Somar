import 'package:flutter/material.dart';
import 'campaign_mock.dart';
import '../profile/profile_page.dart';

class CampaignListPage extends StatelessWidget {
  const CampaignListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Campanhas')),
      body: ListView.separated(
        itemCount: mockCampaigns.length,
        separatorBuilder: (_, __) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final c = mockCampaigns[index];
          return ListTile(
            title: Text(c.title),
            subtitle: Text('${c.category} • ${c.city}'),
            trailing: Text(
              c.status,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Abrir detalhes de "${c.title}" (futuro)'),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Campanhas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        onTap: (i) {
          if (i == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfilePage()),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Para ONGs no futuro: criar campanha
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Criar campanha: implementar depois')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
