import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');

      case DioErrorType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');

      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure(errMessage: 'Request to ApiServer was canceled');

      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFailure(errMessage: 'No Internet Connection');
        }
        return ServerFailure(errMessage: 'Unexpected Error, Please try again!');
      default:
        return ServerFailure(
            errMessage: 'Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal Server error, Please try later');
    } else {
      return ServerFailure(
          errMessage: 'Opps There was an Error, Please try again');
    }
  }
}
