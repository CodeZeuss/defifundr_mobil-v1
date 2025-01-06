import 'package:dartz/dartz.dart';
import 'package:defifundr_mobile/core/network/api_error.dart';
import 'package:defifundr_mobile/core/usecases/usecases.dart';
import 'package:defifundr_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defifundr_mobile/features/home/domain/repositories/campaign_repository.dart';

class CurrentEthPriceUsecase implements UseCase<BaseEntity, NoParams> {
  final CampaignRepository campaignRepository;

  CurrentEthPriceUsecase(this.campaignRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(NoParams params) async {
    return await campaignRepository.getCurrentEthPrice();
  }
}
