import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_list_record.g.dart';

abstract class ItemListRecord
    implements Built<ItemListRecord, ItemListRecordBuilder> {
  static Serializer<ItemListRecord> get serializer =>
      _$itemListRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'lot_number')
  String get lotNumber;

  @nullable
  String get manufacturer;

  @nullable
  @BuiltValueField(wireName: 'test_type')
  String get testType;

  @nullable
  @BuiltValueField(wireName: 'control_tested')
  bool get controlTested;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ItemListRecordBuilder builder) => builder
    ..lotNumber = ''
    ..manufacturer = ''
    ..testType = ''
    ..controlTested = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('item_list');

  static Stream<ItemListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ItemListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ItemListRecord._();
  factory ItemListRecord([void Function(ItemListRecordBuilder) updates]) =
      _$ItemListRecord;

  static ItemListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createItemListRecordData({
  String lotNumber,
  String manufacturer,
  String testType,
  bool controlTested,
}) =>
    serializers.toFirestore(
        ItemListRecord.serializer,
        ItemListRecord((i) => i
          ..lotNumber = lotNumber
          ..manufacturer = manufacturer
          ..testType = testType
          ..controlTested = controlTested));
