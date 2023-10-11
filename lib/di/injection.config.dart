// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:provider_template/commons/shared_pref/i_shared_pref.dart'
    as _i5;
import 'package:provider_template/commons/shared_pref/shared_pref.dart' as _i6;
import 'package:provider_template/infrastructure/auth/auth_repo.dart' as _i4;
import 'package:provider_template/infrastructure/auth/i_auth_repo.dart' as _i3;
import 'package:provider_template/provider/auth_provider.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IAuthRepo>(() => _i4.AuthRepo());
    gh.factory<_i5.ISharedPref>(() => _i6.SharedPref());
    gh.factory<_i7.AuthProvider>(() => _i7.AuthProvider(
          repo: gh<_i3.IAuthRepo>(),
          sharedPref: gh<_i5.ISharedPref>(),
        ));
    return this;
  }
}