package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.MessageLite;
import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.io.InputStream;

@htd
/* loaded from: classes6.dex */
public interface Message extends MessageLite, MessageOrBuilder {

    /* loaded from: classes6.dex */
    public interface Builder extends MessageLite.Builder, MessageOrBuilder {
        @bnd
        Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value);

        Message build();

        Message buildPartial();

        @bnd
        Builder clear();

        @bnd
        Builder clearField(Descriptors.FieldDescriptor field);

        @bnd
        Builder clearOneof(Descriptors.OneofDescriptor oneof);

        /* renamed from: clone */
        Builder mo72165clone();

        @Override // com.google.protobuf.MessageOrBuilder
        Descriptors.Descriptor getDescriptorForType();

        Builder getFieldBuilder(Descriptors.FieldDescriptor field);

        Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor field, int index);

        @Override // com.google.protobuf.MessageLite.Builder
        boolean mergeDelimitedFrom(InputStream input) throws IOException;

        @Override // com.google.protobuf.MessageLite.Builder
        boolean mergeDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        @bnd
        Builder mergeFrom(ByteString data) throws InvalidProtocolBufferException;

        @bnd
        Builder mergeFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

        @bnd
        Builder mergeFrom(CodedInputStream input) throws IOException;

        @bnd
        Builder mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        @bnd
        Builder mergeFrom(Message other);

        @bnd
        Builder mergeFrom(InputStream input) throws IOException;

        @bnd
        Builder mergeFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        @bnd
        Builder mergeFrom(byte[] data) throws InvalidProtocolBufferException;

        @bnd
        Builder mergeFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException;

        @bnd
        Builder mergeFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

        @bnd
        Builder mergeFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

        @bnd
        Builder mergeUnknownFields(UnknownFieldSet unknownFields);

        Builder newBuilderForField(Descriptors.FieldDescriptor field);

        @bnd
        Builder setField(Descriptors.FieldDescriptor field, Object value);

        @bnd
        Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value);

        @bnd
        Builder setUnknownFields(UnknownFieldSet unknownFields);
    }

    boolean equals(Object other);

    Parser<? extends Message> getParserForType();

    int hashCode();

    Builder newBuilderForType();

    Builder toBuilder();

    String toString();
}
