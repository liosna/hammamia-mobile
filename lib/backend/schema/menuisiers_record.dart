import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'menuisiers_record.g.dart';

abstract class MenuisiersRecord
    implements Built<MenuisiersRecord, MenuisiersRecordBuilder> {
  static Serializer<MenuisiersRecord> get serializer =>
      _$menuisiersRecordSerializer;

  @nullable
  String get nom;

  @nullable
  String get tel1;

  @nullable
  String get tel2;

  @nullable
  String get tel3;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MenuisiersRecordBuilder builder) => builder
    ..nom = ''
    ..tel1 = ''
    ..tel2 = ''
    ..tel3 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menuisiers');

  static Stream<MenuisiersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MenuisiersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MenuisiersRecord._();
  factory MenuisiersRecord([void Function(MenuisiersRecordBuilder) updates]) =
      _$MenuisiersRecord;

  static MenuisiersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMenuisiersRecordData({
  String nom,
  String tel1,
  String tel2,
  String tel3,
}) =>
    serializers.toFirestore(
        MenuisiersRecord.serializer,
        MenuisiersRecord((m) => m
          ..nom = nom
          ..tel1 = tel1
          ..tel2 = tel2
          ..tel3 = tel3));
