package com.google.protobuf;

import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@htd
/* loaded from: classes6.dex */
public interface MessageLite extends MessageLiteOrBuilder {

    /* loaded from: classes6.dex */
    public interface Builder extends MessageLiteOrBuilder, Cloneable {
        MessageLite build();

        MessageLite buildPartial();

        @bnd
        Builder clear();

        /* renamed from: clone */
        Builder mo72165clone();

        boolean mergeDelimitedFrom(InputStream input) throws IOException;

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
        Builder mergeFrom(MessageLite other);

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
    }

    Parser<? extends MessageLite> getParserForType();

    int getSerializedSize();

    Builder newBuilderForType();

    Builder toBuilder();

    byte[] toByteArray();

    ByteString toByteString();

    void writeDelimitedTo(OutputStream output) throws IOException;

    void writeTo(CodedOutputStream output) throws IOException;

    void writeTo(OutputStream output) throws IOException;
}
