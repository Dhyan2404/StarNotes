package com.google.protobuf;

import com.google.protobuf.Descriptors;

/* loaded from: classes6.dex */
public final class LegacyDescriptorsUtil {

    /* loaded from: classes6.dex */
    public static final class LegacyFileDescriptor {

        /* loaded from: classes6.dex */
        public enum Syntax {
            UNKNOWN("unknown"),
            PROTO2("proto2"),
            PROTO3("proto3");

            final String name;

            Syntax(String name) {
                this.name = name;
            }
        }

        public static Syntax getSyntax(Descriptors.FileDescriptor descriptor) {
            int i = C6790a.f37693a[descriptor.getSyntax().ordinal()];
            if (i == 1) {
                return Syntax.UNKNOWN;
            }
            if (i == 2) {
                return Syntax.PROTO2;
            }
            if (i == 3) {
                return Syntax.PROTO3;
            }
            throw new IllegalArgumentException("Unexpected syntax");
        }
    }

    /* loaded from: classes6.dex */
    public static final class LegacyOneofDescriptor {
        public static boolean isSynthetic(Descriptors.OneofDescriptor descriptor) {
            return descriptor.isSynthetic();
        }
    }

    /* renamed from: com.google.protobuf.LegacyDescriptorsUtil$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6790a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37693a;

        static {
            int[] iArr = new int[Descriptors.FileDescriptor.Syntax.values().length];
            f37693a = iArr;
            try {
                iArr[Descriptors.FileDescriptor.Syntax.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37693a[Descriptors.FileDescriptor.Syntax.PROTO2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37693a[Descriptors.FileDescriptor.Syntax.PROTO3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
