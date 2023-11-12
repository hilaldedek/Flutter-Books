class Author {
  int id;
  String name;
  String birthYear;
  String? deathYear;
  Author(
      {required this.id,
      required this.name,
      required this.birthYear,
      this.deathYear});
}
