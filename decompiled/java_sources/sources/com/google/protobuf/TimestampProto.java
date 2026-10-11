package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;

/* loaded from: classes6.dex */
public final class TimestampProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f37888a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f37889b;

    /* renamed from: c */
    public static Descriptors.FileDescriptor f37890c = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001fgoogle/protobuf/timestamp.proto\u0012\u000fgoogle.protobuf\";\n\tTimestamp\u0012\u0018\n\u0007seconds\u0018\u0001 \u0001(\u0003R\u0007seconds\u0012\u0014\n\u0005nanos\u0018\u0002 \u0001(\u0005R\u0005nanosB\u0085\u0001\n\u0013com.google.protobufB\u000eTimestampProtoP\u0001Z2google.golang.org/protobuf/types/known/timestamppbø\u0001\u0001¢\u0002\u0003GPBª\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f37888a = descriptor;
        f37889b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Seconds", "Nanos"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f37890c;
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    public static void registerAllExtensions(ExtensionRegistry registry) {
        registerAllExtensions((ExtensionRegistryLite) registry);
    }
}
