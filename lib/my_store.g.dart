// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyStore on _MyStore, Store {
  Computed<String>? _$fullNameComputed;

  @override
  String get fullName => (_$fullNameComputed ??=
          Computed<String>(() => super.fullName, name: '_MyStore.fullName'))
      .value;

  late final _$nameAtom = Atom(name: '_MyStore.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$lastNameAtom = Atom(name: '_MyStore.lastName', context: context);

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  late final _$_MyStoreActionController =
      ActionController(name: '_MyStore', context: context);

  @override
  void changeName(String newValue) {
    final _$actionInfo =
        _$_MyStoreActionController.startAction(name: '_MyStore.changeName');
    try {
      return super.changeName(newValue);
    } finally {
      _$_MyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLastName(String newValue) {
    final _$actionInfo =
        _$_MyStoreActionController.startAction(name: '_MyStore.changeLastName');
    try {
      return super.changeLastName(newValue);
    } finally {
      _$_MyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
lastName: ${lastName},
fullName: ${fullName}
    ''';
  }
}
