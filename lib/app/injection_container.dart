import 'package:abanoub_flutter_task/data/data_source/remote_data_source.dart';
import 'package:abanoub_flutter_task/data/network/app_api.dart';
import 'package:abanoub_flutter_task/data/network/dio_factory.dart';
import 'package:abanoub_flutter_task/data/network/network_info.dart';
import 'package:abanoub_flutter_task/data/repository/repository_impl.dart';
import 'package:abanoub_flutter_task/domain/repository.dart';
import 'package:abanoub_flutter_task/domain/usecases/notes_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  //network info
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()));

  // dio factory
  instance.registerLazySingleton<DioFactory>(() => DioFactory());
  Dio dio = await instance<DioFactory>().getDio();

  //appServiseClient
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  //remoteDataSourse
  instance.registerLazySingleton<ReomteDataSource>(
      () => ReomteDataSourceImpl(instance()));

  //repository
  instance.registerFactory<Repository>(
      () => RepositoryImpl(instance(), instance()));
  Repository repositorImpl = instance();

  instance.registerLazySingleton<NotesUseCase>(
      () => NotesUseCase(repositorImpl as RepositoryImpl));
}
