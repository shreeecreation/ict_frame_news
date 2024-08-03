class PaginationParam {
  final int page;
  String? query;
  int? category;
  int? city;

  PaginationParam({
    required this.page,
    this.query,
    this.category,
    this.city,
  });

  toMap() => {
        if (city != null) 'city': city,
        'p': page,
        if (query != ' ') 'search': query,
        if (category != null) 'category': category,
      };
}
