package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;

/* loaded from: classes6.dex */
public final class FieldMaskProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f37467a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f37468b;

    /* renamed from: c */
    public static Descriptors.FileDescriptor f37469c = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n google/protobuf/field_mask.proto\u0012\u000fgoogle.protobuf\"!\n\tFieldMask\u0012\u0014\n\u0005paths\u0018\u0001 \u0003(\tR\u0005pathsB\u0085\u0001\n\u0013com.google.protobufB\u000eFieldMaskProtoP\u0001Z2google.golang.org/protobuf/types/known/fieldmaskpbø\u0001\u0001¢\u0002\u0003GPBª\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f37467a = descriptor;
        f37468b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Paths"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f37469c;
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    public static void registerAllExtensions(ExtensionRegistry registry) {
        registerAllExtensions((ExtensionRegistryLite) registry);
    }
}
