import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shortly/feature/onboarding/data/model/model.dart';

class WalkThroughView extends StatelessWidget {
  WalkThroughModel walkThroughModel;
  WalkThroughView({Key key, this.walkThroughModel}) : super(key: key);
  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width * .95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Theme.of(context).cardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Text(
                        walkThroughModel.title ?? "",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        walkThroughModel.content ?? "",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: 88,
              width: 88,
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor, shape: BoxShape.circle),
              child: SvgPicture.asset(walkThroughModel.imagePath),
            ),
          ),
        ],
      );
}
