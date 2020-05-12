import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import 'partial_build_viewmodel.dart';

class PartialBuildView extends StatelessWidget {
  const PartialBuildView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildViewModel>.nonReactive(
      builder: (context, model, child) {
        print("PartialBuildView rebuild");
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Partial Build View",
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _StringForm(),
              _TitleAndValue(),
            ],
          ),
        );
      },
      viewModelBuilder: () => PartialBuildViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildViewModel> {
  _StringForm({Key key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
      BuildContext context, PartialBuildViewModel model) {
    print("_StringForm rebuild");
    var text = useTextEditingController();
    return TextField(
      controller: text,
      onChanged: model.updateString,
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildViewModel> {
  const _TitleAndValue({Key key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildViewModel model) {
    print("_TitleAndValue rebuild");
    return Column(
      children: <Widget>[
        Text(
          model.title ?? '',
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
      ],
    );
  }
}
