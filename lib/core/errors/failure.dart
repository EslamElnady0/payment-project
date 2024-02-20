abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServiceFailure extends Failure {
  ServiceFailure({required super.errMessage});
}
