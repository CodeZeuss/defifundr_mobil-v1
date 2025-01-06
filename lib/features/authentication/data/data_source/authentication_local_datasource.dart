import 'package:defifundr_mobile/core/cache/app_cache.dart';
import 'package:defifundr_mobile/core/di/injector.dart';
import 'package:defifundr_mobile/core/secure/secure.dart';
import 'package:defifundr_mobile/core/secure/secure_key.dart';
import 'package:defifundr_mobile/features/authentication/domain/entities/last_user_cache_details/last_user_cache_details.dart';
import 'package:defifundr_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';

abstract class AuthLocalDataSource {
  Future<LastUserCachedDetails> getLastUserData();

  cacheUserLoginData({
    required LastUserCachedDetails lastUserCachedDetails,
  });

  cacheUserDetails({
    required UserResponse user,
  });

  clearUserCache();

  Future<String> getAccessToken();

  saveAccessToken({
    required String token,
  });
}

class IAuthLocalDataSource implements AuthLocalDataSource {
  @override
  cacheUserLoginData(
      {required LastUserCachedDetails lastUserCachedDetails}) async {
    final cache = sl<SecureStorage>();
    await cache.saveAuth(lastUserCachedDetails, SecureStorageKey().userLogin);
  }

  @override
  Future<void> clearUserCache() async {
    final cache = sl<SecureStorage>();

    await cache.clearAuthCredentials(SecureStorageKey().userLogin);
  }

  @override
  Future<LastUserCachedDetails> getLastUserData() async {
    final cache = sl<SecureStorage>();

    final saveDetails =
        await cache.getAuthCredentials(SecureStorageKey().userLogin);

    return saveDetails!;
  }

  @override
  saveAccessToken({required String token}) async {
    final cache = sl<SecureStorage>();

    final saveDetails =
        await cache.saveAccessToken(token, SecureStorageKey().token);

    return saveDetails;
  }

  @override
  Future<String> getAccessToken() async {
    final cache = sl<SecureStorage>();

    final saveDetails = await cache.getAccessToken(SecureStorageKey().token);

    return saveDetails!;
  }

  @override
  cacheUserDetails({required UserResponse user}) {
    final cache = sl<AppCache>();

    final saveDetails = cache.saveUser(user);

    return saveDetails!;
  }
}
