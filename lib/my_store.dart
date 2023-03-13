import 'package:mobx/mobx.dart';
part 'my_store.g.dart';

class MyStore = _MyStore with _$MyStore;

abstract class _MyStore with Store {

  @observable
  String name = "";

  @observable
  String lastName = "";

  @action
  void changeName(String newValue) {
    name = newValue;
  }

  @action
  void changeLastName(String newValue) {
    lastName = newValue;
  }

  @computed
  String get fullName => "$name $lastName";

}