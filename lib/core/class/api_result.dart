class ApiResult {}

class ApiSuccess<T> extends ApiResult {
  final T data;
  ApiSuccess(this.data);
}

class ApiFailure extends ApiResult {
  final String message;
  ApiFailure(this.message);
}
