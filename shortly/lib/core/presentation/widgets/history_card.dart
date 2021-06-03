import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortly/core/data/database/db_config.dart';
import 'package:shortly/core/platform/app_image.dart';
import 'package:shortly/core/platform/locale/intl/app_localization.dart';
import 'package:shortly/core/presentation/widgets/shortly_button.dart';
import 'package:shortly/core/presentation/widgets/shortly_icon_button.dart';
import 'package:shortly/feature/url_history/presentation/state/history_cubit.dart';

class HistoryCard extends StatefulWidget {
  HistoryData history;
  bool isLast;
  HistoryCard({this.history, this.isLast = false});
  @override
  _HistoryCardState createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  bool copied = false;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
            bottom:
                widget.isLast ? MediaQuery.of(context).size.height * .3 : 20),
        child: Container(
          height: 176,
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 6),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.68,
                      child: Text(
                        widget.history.originalLink ?? "",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 17),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Spacer(),
                    ShortlyIconButton(
                      onTap: () {
                        context
                            .read<HistoryCubit>()
                            .deleteHistory(widget.history.shortLink);
                      },
                      iconPath: AppImage.delete,
                    )
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 22, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.history.shortLink ?? "",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 17,
                            color: Theme.of(context).primaryColor)),
                    const SizedBox(
                      height: 22,
                    ),
                    ShortlyButton(
                      title: copied
                          ? AppLocale.copied.toUpperCase()
                          : AppLocale.copy.toUpperCase(),
                      buttonColor:
                          copied ? Theme.of(context).accentColor : null,
                      height: 39,
                      onTap: () {
                        Clipboard.setData(
                            ClipboardData(text: widget.history.shortLink));
                        setState(() => copied = true);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
