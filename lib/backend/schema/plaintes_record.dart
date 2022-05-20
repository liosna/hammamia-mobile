import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plaintes_record.g.dart';

abstract class PlaintesRecord
    implements Built<PlaintesRecord, PlaintesRecordBuilder> {
  static Serializer<PlaintesRecord> get serializer =>
      _$plaintesRecordSerializer;

  @nullable
  String get lieu;

  @nullable
  String get description;

  @nullable
  String get solution;

  @nullable
  DocumentReference get user;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @nullable
  DateTime get createdTime;

  @nullable
  bool get resolved;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PlaintesRecordBuilder builder) => builder
    ..lieu = ''
    ..description = ''
    ..solution = ''
    ..email = ''
    ..imageUrl = ''
    ..resolved = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plaintes');

  static Stream<PlaintesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PlaintesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PlaintesRecord._();
  factory PlaintesRecord([void Function(PlaintesRecordBuilder) updates]) =
      _$PlaintesRecord;

  static PlaintesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPlaintesRecordData({
  String lieu,
  String description,
  String solution,
  DocumentReference user,
  String email,
  String imageUrl,
  DateTime createdTime,
  bool resolved,
}) =>
    serializers.toFirestore(
        PlaintesRecord.serializer,
        PlaintesRecord((p) => p
          ..lieu = lieu
          ..description = description
          ..solution = solution
          ..user = user
          ..email = email
          ..imageUrl = imageUrl
          ..createdTime = createdTime
          ..resolved = resolved));
