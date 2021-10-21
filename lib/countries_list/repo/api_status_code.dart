
class Success {
  int? code;
  Object? response;

  Success({this.code, this.response,});
}

class Failure {
  int? code;
  Object? erresponse;

  Failure({this.erresponse, this.code});
}
