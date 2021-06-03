import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shortly/core/platform/app_image.dart';
import 'package:shortly/core/platform/locale/intl/app_localization.dart';
import 'package:shortly/core/presentation/widgets/page_wrapper.dart';
import 'package:shortly/core/presentation/widgets/shortly_button.dart';
import 'package:shortly/core/presentation/widgets/shortly_dialog.dart';
import 'package:shortly/core/presentation/widgets/shortly_textfield.dart';
import 'package:shortly/feature/url_history/presentation/pages/history_view.dart';
import 'package:shortly/feature/url_history/presentation/state/history_cubit.dart';
import 'package:shortly/feature/url_shortener/presentation/pages/shortener_view.dart';
import 'package:shortly/feature/url_shortener/presentation/state/shortener_cubit.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool invalidField = false;
  String errorMessage;
  bool shortening = false;
  TextEditingController urlTextEditingController;

  @override
  void initState() {
    urlTextEditingController = TextEditingController();
    Future.microtask(() => context.read<HistoryCubit>().getHistory());
    super.initState();
  }

  @override
  void dispose() {
    urlTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          BlocBuilder<HistoryCubit, HistoryState>(
            builder: (_, state) => state.maybeWhen(
                loadingHistory: (payload) => Container(
                      color: Colors.white,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                loadedHistory: (payload) => PageWrapper(
                    showLogo: payload.history.isEmpty,
                    child: payload.history.isEmpty
                        ? ShortenerView()
                        : HistoryView()),
                orElse: () => const SizedBox()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .25,
              color: Theme.of(context).accentColor,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(AppImage.shape),
                  ),
                  Positioned.fill(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Material(
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShortlyTextField(
                            hint: AppLocale.shorten,
                            hasError: invalidField,
                            enabled: !shortening,
                            errorMessage: invalidField ? errorMessage : "",
                            controller: urlTextEditingController,
                            onChanged: (val) {
                              setState(() => invalidField = false);
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          BlocConsumer<ShortenerCubit, ShortenerState>(
                              listener: (_, state) => state.maybeWhen(
                                  error: (payload) {
                                    setState(() {
                                      invalidField = true;
                                      shortening = false;
                                      ShortlyDialogModal(
                                          context: context,
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .10,
                                                ),
                                                const SizedBox(
                                                  child: Icon(
                                                    Icons.cancel_outlined,
                                                    color: Colors.red,
                                                    size: 70,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  child: Text(
                                                    payload.errorMessage ?? "",
                                                    textAlign: TextAlign.center,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2
                                                        .copyWith(fontSize: 14),
                                                  ),
                                                ),
                                                Spacer(),
                                                ShortlyButton(
                                                  title: "Try again!",
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                )
                                              ],
                                            ),
                                          )).call();
                                    });
                                    return null;
                                  },
                                  loadedUrl: (payload) {
                                    context.read<HistoryCubit>().getHistory();
                                    setState(() => shortening = false);
                                    return null;
                                  },
                                  loadingUrl: (payload) {
                                    setState(() => shortening = true);
                                    return null;
                                  },
                                  orElse: () => const SizedBox()),
                              builder: (_, state) => state.maybeWhen(
                                  loadedUrl: (payload) => _shortenButton(),
                                  error: (payload) => _shortenButton(),
                                  loadingUrl: (payload) => Padding(
                                        padding:
                                            const EdgeInsets.only(top: 30.0),
                                        child: Container(
                                          height: 12,
                                          width: 12,
                                          child:
                                              const CircularProgressIndicator(
                                            backgroundColor: Colors.white,
                                            strokeWidth: 1.5,
                                          ),
                                        ),
                                      ),
                                  orElse: () => const SizedBox()))
                        ],
                      ),
                    ),
                  )),
                  urlTextEditingController.text.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 55),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                urlTextEditingController.clear();
                                setState(() {});
                              },
                              child: AspectRatio(
                                aspectRatio: 0.5 / 1,
                                child: Container(
                                  height: 14,
                                  width: 14,
                                  child: Icon(
                                    Icons.cancel,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          )
        ],
      );

  Widget _shortenButton() => ShortlyButton(
        title: AppLocale.shortenIt.toUpperCase(),
        onTap: () {
          if (urlTextEditingController.text.isEmpty) {
            setState(() {
              invalidField = true;
              errorMessage = AppLocale.pleaseAdd;
            });
          } else {
            setState(() => invalidField = false);
            context
                .read<ShortenerCubit>()
                .postUrl(url: urlTextEditingController.text.trim());
          }
        },
      );
}
