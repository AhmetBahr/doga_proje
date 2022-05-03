class Haber {
  static final String Category = "kategori";
  static final String Title = "başlık";
  static final String Content = "içerik";
  static List<String> getFields() => [Category, Title, Content];
}

class News {
  final String Category;
  final String Title;
  final String Content;

  const News({
    required this.Category,
    required this.Title,
    required this.Content,
  });

  News copy({
    String? Category,
    String? Baslik,
    String? Content,
  }) =>
      News(
        Category: Category ?? this.Category,
        Title: Title,
        Content: Content ?? this.Content,
      );
  static News fromJson(Map<String, dynamic> json) => News(
        Category: json[Haber.Category],
        Title: json[Haber.Title],
        Content: json[Haber.Content],
      );
  Map<String, dynamic> toJson() => {
        Haber.Category: Category,
        Haber.Title: Title,
        Haber.Content: Content,
      };
}
