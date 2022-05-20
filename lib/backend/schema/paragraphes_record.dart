import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'paragraphes_record.g.dart';

abstract class ParagraphesRecord
    implements Built<ParagraphesRecord, ParagraphesRecordBuilder> {
  static Serializer<ParagraphesRecord> get serializer =>
      _$paragraphesRecordSerializer;

  @nullable
  String get hammamsousse;

  @nullable
  String get economie;

  @nullable
  String get geographie;

  @nullable
  String get politique;

  @nullable
  String get administratifs1;

  @nullable
  String get administratifs2;

  @nullable
  String get civil1;

  @nullable
  String get civil2;

  @nullable
  String get civil3;

  @nullable
  String get eco1;

  @nullable
  String get eco2;

  @nullable
  String get eco3;

  @nullable
  String get eco4;

  @nullable
  String get urbains1;

  @nullable
  String get urbains2;

  @nullable
  String get urbains3;

  @nullable
  String get urbains4;

  @nullable
  String get urbains5;

  @nullable
  String get urbains6;

  @nullable
  String get urbains7;

  @nullable
  String get tax1;

  @nullable
  String get tax2;

  @nullable
  String get tax3;

  @nullable
  String get tax4;

  @nullable
  String get economie1;

  @nullable
  String get economie2;

  @nullable
  String get conseil;

  @nullable
  String get histo1;

  @nullable
  String get histo2;

  @nullable
  String get histo3;

  @nullable
  String get histo4;

  @nullable
  String get histo5;

  @nullable
  String get jci1;

  @nullable
  String get jci2;

  @nullable
  String get jci3;

  @nullable
  String get jci4;

  @nullable
  String get jci5;

  @nullable
  String get jci6;

  @nullable
  String get jci7;

  @nullable
  String get carte;

  @nullable
  String get nb;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ParagraphesRecordBuilder builder) => builder
    ..hammamsousse = ''
    ..economie = ''
    ..geographie = ''
    ..politique = ''
    ..administratifs1 = ''
    ..administratifs2 = ''
    ..civil1 = ''
    ..civil2 = ''
    ..civil3 = ''
    ..eco1 = ''
    ..eco2 = ''
    ..eco3 = ''
    ..eco4 = ''
    ..urbains1 = ''
    ..urbains2 = ''
    ..urbains3 = ''
    ..urbains4 = ''
    ..urbains5 = ''
    ..urbains6 = ''
    ..urbains7 = ''
    ..tax1 = ''
    ..tax2 = ''
    ..tax3 = ''
    ..tax4 = ''
    ..economie1 = ''
    ..economie2 = ''
    ..conseil = ''
    ..histo1 = ''
    ..histo2 = ''
    ..histo3 = ''
    ..histo4 = ''
    ..histo5 = ''
    ..jci1 = ''
    ..jci2 = ''
    ..jci3 = ''
    ..jci4 = ''
    ..jci5 = ''
    ..jci6 = ''
    ..jci7 = ''
    ..carte = ''
    ..nb = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paragraphes');

  static Stream<ParagraphesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ParagraphesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ParagraphesRecord._();
  factory ParagraphesRecord([void Function(ParagraphesRecordBuilder) updates]) =
      _$ParagraphesRecord;

  static ParagraphesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createParagraphesRecordData({
  String hammamsousse,
  String economie,
  String geographie,
  String politique,
  String administratifs1,
  String administratifs2,
  String civil1,
  String civil2,
  String civil3,
  String eco1,
  String eco2,
  String eco3,
  String eco4,
  String urbains1,
  String urbains2,
  String urbains3,
  String urbains4,
  String urbains5,
  String urbains6,
  String urbains7,
  String tax1,
  String tax2,
  String tax3,
  String tax4,
  String economie1,
  String economie2,
  String conseil,
  String histo1,
  String histo2,
  String histo3,
  String histo4,
  String histo5,
  String jci1,
  String jci2,
  String jci3,
  String jci4,
  String jci5,
  String jci6,
  String jci7,
  String carte,
  String nb,
}) =>
    serializers.toFirestore(
        ParagraphesRecord.serializer,
        ParagraphesRecord((p) => p
          ..hammamsousse = hammamsousse
          ..economie = economie
          ..geographie = geographie
          ..politique = politique
          ..administratifs1 = administratifs1
          ..administratifs2 = administratifs2
          ..civil1 = civil1
          ..civil2 = civil2
          ..civil3 = civil3
          ..eco1 = eco1
          ..eco2 = eco2
          ..eco3 = eco3
          ..eco4 = eco4
          ..urbains1 = urbains1
          ..urbains2 = urbains2
          ..urbains3 = urbains3
          ..urbains4 = urbains4
          ..urbains5 = urbains5
          ..urbains6 = urbains6
          ..urbains7 = urbains7
          ..tax1 = tax1
          ..tax2 = tax2
          ..tax3 = tax3
          ..tax4 = tax4
          ..economie1 = economie1
          ..economie2 = economie2
          ..conseil = conseil
          ..histo1 = histo1
          ..histo2 = histo2
          ..histo3 = histo3
          ..histo4 = histo4
          ..histo5 = histo5
          ..jci1 = jci1
          ..jci2 = jci2
          ..jci3 = jci3
          ..jci4 = jci4
          ..jci5 = jci5
          ..jci6 = jci6
          ..jci7 = jci7
          ..carte = carte
          ..nb = nb));
