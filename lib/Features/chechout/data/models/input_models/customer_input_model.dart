class CustomerInputModel {
  final String name;

  CustomerInputModel({required this.name});
  toJson() {
    return {"name": name};
  }
}
