import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_record.g.dart';

abstract class EventRecord implements Built<EventRecord, EventRecordBuilder> {
  static Serializer<EventRecord> get serializer => _$eventRecordSerializer;

  @nullable
  String get titre;

  @nullable
  DateTime get date;

  @nullable
  DateTime get heure;

  @nullable
  DocumentReference get user;

  @nullable
  String get lieu;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventRecordBuilder builder) => builder
    ..titre = ''
    ..lieu = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event');

  static Stream<EventRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EventRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventRecord._();
  factory EventRecord([void Function(EventRecordBuilder) updates]) =
      _$EventRecord;

  static EventRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEventRecordData({
  String titre,
  DateTime date,
  DateTime heure,
  DocumentReference user,
  String lieu,
}) =>
    serializers.toFirestore(
        EventRecord.serializer,
        EventRecord((e) => e
          ..titre = titre
          ..date = date
          ..heure = heure
          ..user = user
          ..lieu = lieu));
