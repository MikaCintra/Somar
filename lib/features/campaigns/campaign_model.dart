class Campaign {
  final String title;
  final String category; // alimentos, roupas, etc.
  final String city;
  final String status; // pendente, em andamento, concluído

  Campaign({
    required this.title,
    required this.category,
    required this.city,
    required this.status,
  });
}
