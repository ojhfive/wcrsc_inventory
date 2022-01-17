// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemListRecord> _$itemListRecordSerializer =
    new _$ItemListRecordSerializer();

class _$ItemListRecordSerializer
    implements StructuredSerializer<ItemListRecord> {
  @override
  final Iterable<Type> types = const [ItemListRecord, _$ItemListRecord];
  @override
  final String wireName = 'ItemListRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ItemListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.lotNumber;
    if (value != null) {
      result
        ..add('lot_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.manufacturer;
    if (value != null) {
      result
        ..add('manufacturer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.testType;
    if (value != null) {
      result
        ..add('test_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.controlTested;
    if (value != null) {
      result
        ..add('control_tested')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ItemListRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'lot_number':
          result.lotNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturer':
          result.manufacturer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'test_type':
          result.testType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'control_tested':
          result.controlTested = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemListRecord extends ItemListRecord {
  @override
  final String lotNumber;
  @override
  final String manufacturer;
  @override
  final String testType;
  @override
  final bool controlTested;
  @override
  final DocumentReference<Object> reference;

  factory _$ItemListRecord([void Function(ItemListRecordBuilder) updates]) =>
      (new ItemListRecordBuilder()..update(updates)).build();

  _$ItemListRecord._(
      {this.lotNumber,
      this.manufacturer,
      this.testType,
      this.controlTested,
      this.reference})
      : super._();

  @override
  ItemListRecord rebuild(void Function(ItemListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemListRecordBuilder toBuilder() =>
      new ItemListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemListRecord &&
        lotNumber == other.lotNumber &&
        manufacturer == other.manufacturer &&
        testType == other.testType &&
        controlTested == other.controlTested &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, lotNumber.hashCode), manufacturer.hashCode),
                testType.hashCode),
            controlTested.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemListRecord')
          ..add('lotNumber', lotNumber)
          ..add('manufacturer', manufacturer)
          ..add('testType', testType)
          ..add('controlTested', controlTested)
          ..add('reference', reference))
        .toString();
  }
}

class ItemListRecordBuilder
    implements Builder<ItemListRecord, ItemListRecordBuilder> {
  _$ItemListRecord _$v;

  String _lotNumber;
  String get lotNumber => _$this._lotNumber;
  set lotNumber(String lotNumber) => _$this._lotNumber = lotNumber;

  String _manufacturer;
  String get manufacturer => _$this._manufacturer;
  set manufacturer(String manufacturer) => _$this._manufacturer = manufacturer;

  String _testType;
  String get testType => _$this._testType;
  set testType(String testType) => _$this._testType = testType;

  bool _controlTested;
  bool get controlTested => _$this._controlTested;
  set controlTested(bool controlTested) =>
      _$this._controlTested = controlTested;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ItemListRecordBuilder() {
    ItemListRecord._initializeBuilder(this);
  }

  ItemListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lotNumber = $v.lotNumber;
      _manufacturer = $v.manufacturer;
      _testType = $v.testType;
      _controlTested = $v.controlTested;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemListRecord;
  }

  @override
  void update(void Function(ItemListRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ItemListRecord build() {
    final _$result = _$v ??
        new _$ItemListRecord._(
            lotNumber: lotNumber,
            manufacturer: manufacturer,
            testType: testType,
            controlTested: controlTested,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
