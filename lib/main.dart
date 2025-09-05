import 'package:flutter/material.dart';

// Importa as telas diretamente (garanta que esses arquivos existem)
import 'features/auth/role_selection_page.dart';
import 'features/auth/login_page.dart';
import 'features/campaigns/campaign_list_page.dart';
import 'features/profile/profile_page.dart';
import 'core/app_theme.dart';

void main() {
  runApp(const SomarApp());
}

class SomarApp extends StatelessWidget {
  const SomarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Somar',
      theme: AppTheme.light,
      // Em vez de AppRoutes, usamos home + rotas locais
      home: const RoleSelectionPage(),
      routes: {
        '/login': (_) => const LoginPage(),
        '/campaigns': (_) => const CampaignListPage(),
        '/profile': (_) => const ProfilePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
