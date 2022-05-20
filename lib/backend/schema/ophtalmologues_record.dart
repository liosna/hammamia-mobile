import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ophtalmologues_record.g.dart';

abstract class OphtalmologuesRecord
    implements Built<OphtalmologuesRecord, OphtalmologuesRecordBuilder> {
  static Serializer<OphtalmologuesRecord> get serializer =>
      _$ophtalmologuesRecordSerializer;

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

  static void _initializeBuilder(OphtalmologuesRecordBuilder builder) => builder
    ..nom = ''
    ..tel1 = ''
    ..tel2 = ''
    ..tel3 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ophtalmologues');

  static Stream<OphtalmologuesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OphtalmologuesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  OphtalmologuesRecord._();
  factory OphtalmologuesRecord(
          [void Function(OphtalmologuesRecordBuilder) updates]) =
      _$OphtalmologuesRecord;

  static OphtalmologuesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOphtalmologuesRecordData({
  String nom,
  String tel1,
  String tel2,
  String tel3,
}) =>
    serializers.toFirestore(
        OphtalmologuesRecord.serializer,
        OphtalmologuesRecord((o) => o
          ..nom = nom
          ..tel1 = tel1
          ..tel2 = tel2
          ..tel3 = tel3));
