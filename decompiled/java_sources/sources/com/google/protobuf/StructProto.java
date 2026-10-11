package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;

/* loaded from: classes6.dex */
public final class StructProto {

    /* renamed from: a */
    public static final Descriptors.Descriptor f37814a;

    /* renamed from: b */
    public static final GeneratedMessageV3.FieldAccessorTable f37815b;

    /* renamed from: c */
    public static final Descriptors.Descriptor f37816c;

    /* renamed from: d */
    public static final GeneratedMessageV3.FieldAccessorTable f37817d;

    /* renamed from: e */
    public static final Descriptors.Descriptor f37818e;

    /* renamed from: f */
    public static final GeneratedMessageV3.FieldAccessorTable f37819f;

    /* renamed from: g */
    public static final Descriptors.Descriptor f37820g;

    /* renamed from: h */
    public static final GeneratedMessageV3.FieldAccessorTable f37821h;

    /* renamed from: i */
    public static Descriptors.FileDescriptor f37822i = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001cgoogle/protobuf/struct.proto\u0012\u000fgoogle.protobuf\"\u0098\u0001\n\u0006Struct\u0012;\n\u0006fields\u0018\u0001 \u0003(\u000b2#.google.protobuf.Struct.FieldsEntryR\u0006fields\u001aQ\n\u000bFieldsEntry\u0012\u0010\n\u0003key\u0018\u0001 \u0001(\tR\u0003key\u0012,\n\u0005value\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.ValueR\u0005value:\u00028\u0001\"²\u0002\n\u0005Value\u0012;\n\nnull_value\u0018\u0001 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000R\tnullValue\u0012#\n\fnumber_value\u0018\u0002 \u0001(\u0001H\u0000R\u000bnumberValue\u0012#\n\fstring_value\u0018\u0003 \u0001(\tH\u0000R\u000bstringValue\u0012\u001f\n\nbool_value\u0018\u0004 \u0001(\bH\u0000R\tboolValue\u0012<\n\fstruct_value\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.StructH\u0000R\u000bstructValue\u0012;\n\nlist_value\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.ListValueH\u0000R\tlistValueB\u0006\n\u0004kind\";\n\tListValue\u0012.\n\u0006values\u0018\u0001 \u0003(\u000b2\u0016.google.protobuf.ValueR\u0006values*\u001b\n\tNullValue\u0012\u000e\n\nNULL_VALUE\u0010\u0000B\u007f\n\u0013com.google.protobufB\u000bStructProtoP\u0001Z/google.golang.org/protobuf/types/known/structpbø\u0001\u0001¢\u0002\u0003GPBª\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.Descriptor descriptor = getDescriptor().getMessageTypes().get(0);
        f37814a = descriptor;
        f37815b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Fields"});
        Descriptors.Descriptor descriptor2 = descriptor.getNestedTypes().get(0);
        f37816c = descriptor2;
        f37817d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        f37818e = descriptor3;
        f37819f = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"NullValue", "NumberValue", "StringValue", "BoolValue", "StructValue", "ListValue", "Kind"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        f37820g = descriptor4;
        f37821h = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Values"});
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return f37822i;
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    public static void registerAllExtensions(ExtensionRegistry registry) {
        registerAllExtensions((ExtensionRegistryLite) registry);
    }
}
