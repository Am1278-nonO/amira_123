import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures({required this.errMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        {
          print('err1');
          return ServerFailure(
              errMessage: 'Connection Timeout with Apiservice');
        }
      case DioExceptionType.sendTimeout:
        {
          print('err2');
          return ServerFailure(errMessage: 'Send timeout with ApiServer');
        }
      case DioExceptionType.receiveTimeout:
        {
          print('err3');
          return ServerFailure(errMessage: 'Receive timeout with ApiServer');
        }
      case DioExceptionType.badCertificate:
        {
          print('err4');
          return ServerFailure(errMessage: 'Bad Certificate.');
        }
      case DioExceptionType.badResponse:
        {
          print('err5');
          return ServerFailure.fromResponse(
              dioException.response!.statusCode, dioException.response!.data);
        }
      case DioExceptionType.cancel:
        {
          print('err6');
          return ServerFailure(errMessage: 'Your Request was canceld');
        }
      case DioExceptionType.connectionError:
        {
          print('err7');
          return ServerFailure(errMessage: 'Connection Error');
        }
      case DioExceptionType.unknown:
        {
          print("err8");
          return ServerFailure(errMessage: 'UnExpected Error Please Try Again');
        }
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      {
        print('err11');
        return ServerFailure(errMessage: response['err']);
      }
    } else if (statusCode == 404) {
      {
        print('err22');
        return ServerFailure(
            errMessage: 'Your request not found, Please try later!');
      }
    } else if (statusCode == 500) {
      {
        print('err33');
        return ServerFailure(errMessage: response['err']);
      }
    } else {
      {
        print('err44');
        return ServerFailure(
            errMessage: 'There was an Error, Please try again');
      }
    }
  }
}
