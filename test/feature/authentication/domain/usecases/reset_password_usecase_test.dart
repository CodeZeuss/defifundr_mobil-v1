import 'package:dartz/dartz.dart';
import 'package:defifundr_mobile/core/network/api_error.dart';
import 'package:defifundr_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defifundr_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defifundr_mobile/features/authentication/domain/usecases/reset_password_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'create_account_usecase_test.mocks.dart';

void main() {
  late ResetPasswordUsecase usecase;
  late MockAuthenticationRepository mockAuthenticationRepository;
  late String username;
  late BaseEntity tResponse;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    usecase = ResetPasswordUsecase(mockAuthenticationRepository);
    username = "test";
    tResponse = const BaseEntity(
      data: "Resent",
      message: "success",
      status: 200,
    );
  });

  final tFailedResponse = CreateAccountResponse(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockAuthenticationRepository.resetPassword(
      username: username,
    )).thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(Params(username: username));

    // assert
    expect(result, Right(tResponse));
    verify(mockAuthenticationRepository.resetPassword(
      username: username,
    ));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockAuthenticationRepository.resetPassword(username: username))
        .thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(Params(
      username: username,
    ));

    // assert
    expect(result, Left(failure));
    verify(mockAuthenticationRepository.resetPassword(
      username: username,
    ));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });
}
