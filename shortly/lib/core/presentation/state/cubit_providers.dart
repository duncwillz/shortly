import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortly/core/di/di_config.dart';
import 'package:shortly/feature/url_history/presentation/state/history_cubit.dart';
import 'package:shortly/feature/url_shortener/domain/usecases/post_url.dart';
import 'package:shortly/feature/url_shortener/presentation/state/shortener_cubit.dart';

final cubitProviders = [
  BlocProvider<ShortenerCubit>(
    create: (_) => ShortenerCubit(inject<PostUrl>()),
  ),
  BlocProvider<HistoryCubit>(
    create: (_) => HistoryCubit(inject(), inject()),
  ),
];
