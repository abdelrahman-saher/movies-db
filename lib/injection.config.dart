// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/API/api_client.dart' as _i6;
import 'core/API/api_consumer.dart' as _i5;
import 'core/API/app_interceptiors.dart' as _i3;
import 'core/injection/injectable_modules.dart' as _i13;
import 'features/popular_people/data/data/remote/people_remote_data_source.dart'
    as _i7;
import 'features/popular_people/data/data/remote/people_remote_data_source_impl.dart'
    as _i8;
import 'features/popular_people/data/repository/people_repository.dart' as _i10;
import 'features/popular_people/domain/repository/people_repository.dart'
    as _i9;
import 'features/popular_people/domain/usecases/get_people_usecase.dart'
    as _i11;
import 'features/popular_people/presentation/bloc/bloc/get_people_data_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.AppIntercepters>(() => _i3.AppIntercepters());
  gh.singleton<_i4.Dio>(injectableModule.dio);
  gh.factory<_i5.ApiConsumer>(() => _i6.DioConsumer(client: get<_i4.Dio>()));
  gh.factory<_i7.PeopleRemoteDataSource>(
      () => _i8.PeopleRemoteDataSourceImpl(get<_i5.ApiConsumer>()));
  gh.factory<_i9.PepoleRepository>(
      () => _i10.PepoleRepositoryImpl(get<_i7.PeopleRemoteDataSource>()));
  gh.factory<_i11.GetPeopleUseCase>(
      () => _i11.GetPeopleUseCase(get<_i9.PepoleRepository>()));
  gh.factory<_i12.GetPeopleDataBloc>(
      () => _i12.GetPeopleDataBloc(get<_i11.GetPeopleUseCase>()));
  return get;
}

class _$InjectableModule extends _i13.InjectableModule {}
