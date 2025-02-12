import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'drive_profile_state.dart';

class DriveProfileCubit extends Cubit<DriveProfileState> {
  DriveProfileCubit() : super(DriveProfileInitial());
}
