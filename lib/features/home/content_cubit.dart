import 'package:cva_app/features/home/content_entity.dart';
import 'package:cva_app/features/home/content_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_cubit.freezed.dart';

class ContentCubit extends Cubit<ContentState> {
  ContentCubit() : super(const ContentState.loadingState());

  void getContent() async {
    try {
      List<ContentEntity> content = await ContentService().getAllContent();
      emit(ContentState.loadedState(content));
    } catch (e) {
      emit(const ContentState.errorState());
    }
  }
}

@freezed
class ContentState with _$ContentState {
  const factory ContentState.loadingState() = _LoadingState;
  const factory ContentState.loadedState(List<ContentEntity> list) =
      _LoadedState;
  const factory ContentState.errorState() = _ErrorState;
}

extension ContentExtension on ContentState {
  bool get isLoadingState => this is _LoadingState;
  bool get isLoadedState => this is _LoadedState;
  bool get isErrorState => this is _ErrorState;

  List<ContentEntity>? get listContent =>
      mapOrNull(loadedState: (value) => value.list);
}
