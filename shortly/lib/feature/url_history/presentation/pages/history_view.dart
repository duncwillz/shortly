import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortly/core/platform/locale/intl/app_localization.dart';
import 'package:shortly/core/presentation/widgets/history_card.dart';
import 'package:shortly/feature/url_history/presentation/state/history_cubit.dart';

class HistoryView extends StatefulWidget {
  @override
  _HistoryViewState createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Center(
                child: Text(
                  AppLocale.linkHistory,
                  style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                      fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<HistoryCubit, HistoryState>(
              builder: (_, state) => state.maybeWhen(
                  loadedHistory: (payload) => Expanded(
                        child: payload.history.isNotEmpty
                            ? ListView(
                                children: payload.history
                                    .map((history) => HistoryCard(
                                          isLast:
                                              payload.history.last == history,
                                          history: history,
                                        ))
                                    .toList(),
                              )
                            : Center(child: Text(AppLocale.noHistory ?? "")),
                      ),
                  loadingHistory: (payload) =>
                      const CircularProgressIndicator(),
                  error: (payload) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text(payload.errorMessage ?? "")),
                        ],
                      ),
                  orElse: () => const SizedBox()),
            ),
          ],
        ),
      );
}
