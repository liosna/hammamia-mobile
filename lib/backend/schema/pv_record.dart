import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pv_record.g.dart';

abstract class PvRecord implements Built<PvRecord, PvRecordBuilder> {
  static Serializer<PvRecord> get serializer => _$pvRecordSerializer;

  @nullable
  String get titre;

  @nullable
  @BuiltValueField(wireName: 'pdf_url')
  String get pdfUrl;

  @nullable
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PvRecordBuilder builder) => builder
    ..titre = ''
    ..pdfUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PV');

  static Stream<PvRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PvRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PvRecord._();
  factory PvRecord([void Function(PvRecordBuilder) updates]) = _$PvRecord;

  static PvRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPvRecordData({
  String titre,
  String pdfUrl,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        PvRecord.serializer,
        PvRecord((p) => p
          ..titre = titre
          ..pdfUrl = pdfUrl
          ..createdTime = createdTime));
