import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'suggestions_record.g.dart';

abstract class SuggestionsRecord
    implements Built<SuggestionsRecord, SuggestionsRecordBuilder> {
  static Serializer<SuggestionsRecord> get serializer =>
      _$suggestionsRecordSerializer;

  @nullable
  DateTime get createdTime;

  @nullable
  String get description;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @nullable
  String get suggestion;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SuggestionsRecordBuilder builder) => builder
    ..description = ''
    ..email = ''
    ..imageUrl = ''
    ..suggestion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('suggestions');

  static Stream<SuggestionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SuggestionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SuggestionsRecord._();
  factory SuggestionsRecord([void Function(SuggestionsRecordBuilder) updates]) =
      _$SuggestionsRecord;

  static SuggestionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSuggestionsRecordData({
  DateTime createdTime,
  String description,
  String email,
  String imageUrl,
  String suggestion,
  DocumentReference user,
}) =>
    serializers.toFirestore(
        SuggestionsRecord.serializer,
        SuggestionsRecord((s) => s
          ..createdTime = createdTime
          ..description = description
          ..email = email
          ..imageUrl = imageUrl
          ..suggestion = suggestion
          ..user = user));
