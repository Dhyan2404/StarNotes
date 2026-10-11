package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.sunia.HTREnginev2.htd;
import java.util.List;
import java.util.Map;

@htd
/* loaded from: classes6.dex */
public interface MessageOrBuilder extends MessageLiteOrBuilder {
    List<String> findInitializationErrors();

    Map<Descriptors.FieldDescriptor, Object> getAllFields();

    Message getDefaultInstanceForType();

    Descriptors.Descriptor getDescriptorForType();

    Object getField(Descriptors.FieldDescriptor field);

    String getInitializationErrorString();

    Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneof);

    Object getRepeatedField(Descriptors.FieldDescriptor field, int index);

    int getRepeatedFieldCount(Descriptors.FieldDescriptor field);

    UnknownFieldSet getUnknownFields();

    boolean hasField(Descriptors.FieldDescriptor field);

    boolean hasOneof(Descriptors.OneofDescriptor oneof);
}
