import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motion_toast/motion_toast.dart';

import '../../../constant/color.dart';
import '../../../helpers/internet/internet_cubit.dart';
import '../bloc/home_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommentModification extends StatelessWidget {
  final bool isUpdate;
  final String taskId;
  final String commentId;
  final String initialComment;
  final HomeBloc homeBloc;
  final Function onComplete;

  const CommentModification({super.key,
    required this.isUpdate,
    required this.taskId,
    this.initialComment = "",
    this.commentId = "",
    required this.homeBloc,
    required this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = TextEditingController(text: initialComment);
    FocusNode commentFocusNode = FocusNode();

    return BlocBuilder<InternetCubit, InternetState>(

        builder: (context,internetState) {
        return BlocBuilder<HomeBloc, HomeState>(
          builder: (context, bottomState) {
            return StatefulBuilder(
              builder: (context, bottomSetState) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        focusNode: commentFocusNode,
                        autofocus: true,
                        cursorColor: AppColors.primaryColor,
                        controller: commentController,
                        onChanged: (text) {
                          bottomSetState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: isUpdate ? AppLocalizations.of(context)!.update_comment : AppLocalizations.of(context)!.add_comment,
                          suffixIconConstraints: const BoxConstraints(),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: bottomState.addHomeLoadingBlocStatus != AddHomeLoadingBlocStatus.isLoading
                                    ? Icon(
                                  Icons.send,
                                  color: commentController.text.isNotEmpty ? AppColors.primaryColor : null,
                                )
                                    : const CupertinoActivityIndicator(),
                                padding: EdgeInsets.zero,
                                visualDensity: const VisualDensity(horizontal: -2, vertical: -4),
                                onPressed: bottomState.addHomeLoadingBlocStatus != AddHomeLoadingBlocStatus.isLoading && commentController.text.isNotEmpty ? () {
                                  if(internetState is InternetDisconnected){
                                    MotionToast.warning(
                                      title:  Text(AppLocalizations.of(context)!.error),
                                      description:  Text(AppLocalizations.of(context)!.check_internet),
                                    ).show(context);
                                  }
                                  else{
                                    if (isUpdate) {
                                      homeBloc.add(
                                        HomeEvent.updateComment(
                                          taskId: taskId,
                                          commentId: commentId,
                                          appLocalization: AppLocalizations.of(context)!,
                                          content: commentController.text,
                                          onComplete: () {
                                            Navigator.pop(context);
                                            homeBloc.add(HomeEvent.syncData(context: context));
                                            onComplete();
                                          },
                                        ),
                                      );
                                    }
                                    else {
                                      homeBloc.add(
                                        HomeEvent.addNewComment(
                                          taskId: taskId,
                                          appLocalization: AppLocalizations.of(context)!,
                                          content: commentController.text,
                                          onComplete: () {
                                            Navigator.pop(context);
                                            homeBloc.add(HomeEvent.syncData(context: context));
                                            onComplete();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                } : null,
                              ),
                            ],
                          ),
                          border: const UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      }
    );
  }
}
