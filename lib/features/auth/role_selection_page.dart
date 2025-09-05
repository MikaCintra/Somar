import 'package:flutter/material.dart';

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  void _goToLogin(BuildContext context, String role) {
    Navigator.pushNamed(context, '/login', arguments: role);
  }

  @override
  Widget build(BuildContext context) {
    final roles = [
      {'label': 'ONG', 'icon': Icons.apartment},
      {'label': 'Doador', 'icon': Icons.volunteer_activism},
      {'label': 'Voluntário', 'icon': Icons.groups},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Somar - Escolha seu perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: roles.map((r) {
            return Card(
              child: ListTile(
                leading: Icon(r['icon'] as IconData, color: Colors.green),
                title: Text(r['label'] as String),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _goToLogin(context, r['label'] as String),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
