import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WishesRecord extends FirestoreRecord {
  WishesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "cooldown_period" field.
  int? _cooldownPeriod;
  int get cooldownPeriod => _cooldownPeriod ?? 0;
  bool hasCooldownPeriod() => _cooldownPeriod != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _reason = snapshotData['reason'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _cooldownPeriod = castToType<int>(snapshotData['cooldown_period']);
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wishes');

  static Stream<WishesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WishesRecord.fromSnapshot(s));

  static Future<WishesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WishesRecord.fromSnapshot(s));

  static WishesRecord fromSnapshot(DocumentSnapshot snapshot) => WishesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WishesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WishesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WishesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WishesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWishesRecordData({
  String? name,
  String? reason,
  double? price,
  int? cooldownPeriod,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'reason': reason,
      'price': price,
      'cooldown_period': cooldownPeriod,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class WishesRecordDocumentEquality implements Equality<WishesRecord> {
  const WishesRecordDocumentEquality();

  @override
  bool equals(WishesRecord? e1, WishesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.reason == e2?.reason &&
        e1?.price == e2?.price &&
        e1?.cooldownPeriod == e2?.cooldownPeriod &&
        e1?.status == e2?.status;
  }

  @override
  int hash(WishesRecord? e) => const ListEquality()
      .hash([e?.name, e?.reason, e?.price, e?.cooldownPeriod, e?.status]);

  @override
  bool isValidKey(Object? o) => o is WishesRecord;
}
