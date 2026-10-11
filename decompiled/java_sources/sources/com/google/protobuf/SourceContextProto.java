package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;

/* loaded from: classes6.dex */
public final class SourceContextProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f37806a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f37807b;

    /* renamed from: c */
    public static Descriptors.FileDescriptor f37808c = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n$google/protobuf/source_context.proto\u0012\u000fgoogle.protobuf\",\n\rSourceContext\u0012\u001b\n\tfile_name\u0018\u0001 \u0001(\tR\bfileNameB\u008a\u0001\n\u0013com.google.protobufB\u0012SourceContextProtoP\u0001Z6google.golang.org/protobuf/types/known/sourcecontextpb¢\u0002\u0003GPBª\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f37806a = descriptor;
        f37807b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"FileName"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f37808c;
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    public static void registerAllExtensions(ExtensionRegistry registry) {
        registerAllExtensions((ExtensionRegistryLite) registry);
    }
}
