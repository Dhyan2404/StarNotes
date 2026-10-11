package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.MessageLite;

/* loaded from: classes6.dex */
public abstract class Extension<ContainingType extends MessageLite, Type> extends ExtensionLite<ContainingType, Type> {

    /* loaded from: classes6.dex */
    public enum ExtensionType {
        IMMUTABLE,
        MUTABLE,
        PROTO1
    }

    /* loaded from: classes6.dex */
    public enum MessageType {
        PROTO1,
        PROTO2
    }

    @Override // com.google.protobuf.ExtensionLite
    /* renamed from: a */
    public final boolean mo29071a() {
        return false;
    }

    public abstract Object fromReflectionType(Object value);

    public abstract Descriptors.FieldDescriptor getDescriptor();

    public abstract ExtensionType getExtensionType();

    @Override // com.google.protobuf.ExtensionLite
    public abstract Message getMessageDefaultInstance();

    public MessageType getMessageType() {
        return MessageType.PROTO2;
    }

    public abstract Object singularFromReflectionType(Object value);

    public abstract Object singularToReflectionType(Object value);

    public abstract Object toReflectionType(Object value);
}
