// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SessionAdapter extends TypeAdapter<SessionEntity> {
  @override
  final int typeId = 0;

  @override
  SessionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SessionEntity(
      accessToken: fields[0] as String?,
      refreshToken: fields[1] as String?,
      expiresIn: fields[2] as int?,
      hasOnboarding: fields[3] as bool?,
      pin: fields[4] as String?,
      isPinSet: fields[5] as bool?,
      isBiometricsEnabled: fields[6] as bool?,
    )..showNotification = fields[7] as bool?;
  }

  @override
  void write(BinaryWriter writer, SessionEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.expiresIn)
      ..writeByte(3)
      ..write(obj.hasOnboarding)
      ..writeByte(4)
      ..write(obj.pin)
      ..writeByte(5)
      ..write(obj.isPinSet)
      ..writeByte(6)
      ..write(obj.isBiometricsEnabled)
      ..writeByte(7)
      ..write(obj.showNotification);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
