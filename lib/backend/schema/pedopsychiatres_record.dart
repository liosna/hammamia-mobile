import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pedopsychiatres_record.g.dart';

abstract class PedopsychiatresRecord
    implements Built<PedopsychiatresRecord, PedopsychiatresRecordBuilder> {
  static Serializer<PedopsychiatresRecord> get serializer =>
      _$pedopsychiatresRecordSerializer;

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

  static void _initializeBuilder(PedopsychiatresRecordBuilder builder) =>
      builder
        ..nom = ''
        ..tel1 = ''
        ..tel2 = ''
        ..tel3 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedopsychiatres');

  static Stream<PedopsychiatresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PedopsychiatresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PedopsychiatresRecord._();
  factory PedopsychiatresRecord(
          [void Function(PedopsychiatresRecordBuilder) updates]) =
      _$PedopsychiatresRecord;

  static PedopsychiatresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPedopsychiatresRecordData({
  String nom,
  String tel1,
  String tel2,
  String tel3,
}) =>
    serializers.toFirestore(
        PedopsychiatresRecord.serializer,
        PedopsychiatresRecord((p) => p
          ..nom = nom
          ..tel1 = tel1
          ..tel2 = tel2
          ..tel3 = tel3));
