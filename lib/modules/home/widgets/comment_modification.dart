import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constant/color.dart';
import '../bloc/home_bloc.dart';

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
                      hintText: isUpdate ? 'Update comment' : 'Add a comment',
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
                            onPressed: bottomState.addHomeLoadingBlocStatus != AddHomeLoadingBlocStatus.isLoading &&
                                commentController.text.isNotEmpty
                                ? () {
                              if (isUpdate) {
                                // Update comment logic
                                homeBloc.add(
                                  HomeEvent.updateComment(
                                    taskId: taskId,
                                    commentId: commentId,
                                    content: commentController.text,
                                    onComplete: () {
                                      Navigator.pop(context);
                                      homeBloc.add(HomeEvent.syncData(context: context));
                                      onComplete();
                                    },
                                  ),
                                );
                              } else {
                                // Add new comment logic
                                homeBloc.add(
                                  HomeEvent.addNewComment(
                                    taskId: taskId,
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
                                : null,
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
}
