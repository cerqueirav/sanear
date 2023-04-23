import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:sanear/app/data/datasources/remote_data_source.dart';
import 'package:sanear/app/data/exception.dart';
import 'package:sanear/app//domain/entities/weather.dart';
import 'package:sanear/app//data/failure.dart';
import 'package:sanear/app//domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final RemoteDataSource remoteDataSource;
  const WeatherRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(String cityName) async {
    try {
      final result = await remoteDataSource.getCurrentWeather(cityName);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure('Server failure'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
