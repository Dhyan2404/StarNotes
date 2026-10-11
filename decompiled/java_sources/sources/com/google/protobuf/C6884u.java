package com.google.protobuf;

import com.caverock.androidsvg.SVG;
import com.google.protobuf.ByteString;
import com.google.protobuf.C6855b;
import com.google.protobuf.Internal;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.dun;
import com.sunia.HTREnginev2.htd;
import com.sunia.HTREnginev2.ucl;
import com.sunia.HTREnginev2.vtj;
import com.sunia.HTREnginev2.xmj;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

@htd
/* renamed from: com.google.protobuf.u */
/* loaded from: classes6.dex */
public final class C6884u<T> implements InterfaceC6889z<T> {

    /* renamed from: A */
    public static final int f38152A = 256;

    /* renamed from: B */
    public static final int f38153B = 512;

    /* renamed from: C */
    public static final int f38154C = 1024;

    /* renamed from: D */
    public static final int f38155D = 2048;

    /* renamed from: E */
    public static final int f38156E = 4096;

    /* renamed from: F */
    public static final int f38157F = 51;

    /* renamed from: r */
    public static final int f38159r = 3;

    /* renamed from: s */
    public static final int f38160s = 20;

    /* renamed from: t */
    public static final int f38161t = 1048575;

    /* renamed from: u */
    public static final int f38162u = 267386880;

    /* renamed from: v */
    public static final int f38163v = 268435456;

    /* renamed from: w */
    public static final int f38164w = 536870912;

    /* renamed from: x */
    public static final int f38165x = Integer.MIN_VALUE;

    /* renamed from: y */
    public static final int f38166y = 1048575;

    /* renamed from: a */
    public final int[] f38168a;

    /* renamed from: b */
    public final Object[] f38169b;

    /* renamed from: c */
    public final int f38170c;

    /* renamed from: d */
    public final int f38171d;

    /* renamed from: e */
    public final MessageLite f38172e;

    /* renamed from: f */
    public final boolean f38173f;

    /* renamed from: g */
    public final boolean f38174g;

    /* renamed from: h */
    public final ProtoSyntax f38175h;

    /* renamed from: i */
    public final boolean f38176i;

    /* renamed from: j */
    public final int[] f38177j;

    /* renamed from: k */
    public final int f38178k;

    /* renamed from: l */
    public final int f38179l;

    /* renamed from: m */
    public final vtj f38180m;

    /* renamed from: n */
    public final AbstractC6878o f38181n;

    /* renamed from: o */
    public final AbstractC6858c0<?, ?> f38182o;

    /* renamed from: p */
    public final AbstractC6873j<?> f38183p;

    /* renamed from: q */
    public final InterfaceC6880q f38184q;

    /* renamed from: z */
    public static final int[] f38167z = new int[0];

    /* renamed from: G */
    public static final Unsafe f38158G = dun.m53729T();

    /* renamed from: com.google.protobuf.u$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38185a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f38185a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38185a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38185a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38185a[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38185a[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38185a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38185a[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38185a[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38185a[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38185a[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38185a[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38185a[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38185a[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f38185a[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f38185a[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f38185a[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38185a[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public C6884u(int[] buffer, Object[] objects, int minFieldNumber, int maxFieldNumber, MessageLite defaultInstance, ProtoSyntax syntax, boolean useCachedSizeField, int[] intArray, int checkInitialized, int mapFieldPositions, vtj newInstanceSchema, AbstractC6878o listFieldSchema, AbstractC6858c0<?, ?> unknownFieldSchema, AbstractC6873j<?> extensionSchema, InterfaceC6880q mapFieldSchema) {
        this.f38168a = buffer;
        this.f38169b = objects;
        this.f38170c = minFieldNumber;
        this.f38171d = maxFieldNumber;
        this.f38174g = defaultInstance instanceof GeneratedMessageLite;
        this.f38175h = syntax;
        this.f38173f = extensionSchema != null && extensionSchema.mo30265e(defaultInstance);
        this.f38176i = useCachedSizeField;
        this.f38177j = intArray;
        this.f38178k = checkInitialized;
        this.f38179l = mapFieldPositions;
        this.f38180m = newInstanceSchema;
        this.f38181n = listFieldSchema;
        this.f38182o = unknownFieldSchema;
        this.f38183p = extensionSchema;
        this.f38172e = defaultInstance;
        this.f38184q = mapFieldSchema;
    }

    /* renamed from: A */
    public static boolean m30326A(int value) {
        return (value & 536870912) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: D */
    public static boolean m30327D(Object message, int typeAndOffset, InterfaceC6889z schema) {
        return schema.mo30367b(dun.m53726Q(message, m30335X(typeAndOffset)));
    }

    /* renamed from: E */
    public static boolean m30328E(int value) {
        return (value & Integer.MIN_VALUE) != 0;
    }

    /* renamed from: H */
    public static boolean m30329H(Object message) {
        if (message == null) {
            return false;
        }
        if (message instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) message).m29255o();
        }
        return true;
    }

    /* renamed from: K */
    public static boolean m30330K(int value) {
        return (value & 268435456) != 0;
    }

    /* renamed from: L */
    public static <T> long m30331L(T message, long offset) {
        return dun.m53723N(message, offset);
    }

    /* renamed from: T */
    public static <T> C6884u<T> m30332T(Class<T> messageClass, xmj messageInfo, vtj newInstanceSchema, AbstractC6878o listFieldSchema, AbstractC6858c0<?, ?> unknownFieldSchema, AbstractC6873j<?> extensionSchema, InterfaceC6880q mapFieldSchema) {
        return messageInfo instanceof ucl ? m30334V((ucl) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema) : m30333U((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* renamed from: U */
    public static <T> C6884u<T> m30333U(StructuralMessageInfo messageInfo, vtj newInstanceSchema, AbstractC6878o listFieldSchema, AbstractC6858c0<?, ?> unknownFieldSchema, AbstractC6873j<?> extensionSchema, InterfaceC6880q mapFieldSchema) {
        int m29099o;
        int m29099o2;
        int i;
        FieldInfo[] m29496d = messageInfo.m29496d();
        if (m29496d.length == 0) {
            m29099o = 0;
            m29099o2 = 0;
        } else {
            m29099o = m29496d[0].m29099o();
            m29099o2 = m29496d[m29496d.length - 1].m29099o();
        }
        int length = m29496d.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i2 = 0;
        int i3 = 0;
        for (FieldInfo fieldInfo : m29496d) {
            if (fieldInfo.m29107w() == FieldType.MAP) {
                i2++;
            } else if (fieldInfo.m29107w().m29187id() >= 18 && fieldInfo.m29107w().m29187id() <= 49) {
                i3++;
            }
        }
        int[] iArr2 = i2 > 0 ? new int[i2] : null;
        int[] iArr3 = i3 > 0 ? new int[i3] : null;
        int[] m29495c = messageInfo.m29495c();
        if (m29495c == null) {
            m29495c = f38167z;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i4 < m29496d.length) {
            FieldInfo fieldInfo2 = m29496d[i4];
            int m29099o3 = fieldInfo2.m29099o();
            m30346s0(fieldInfo2, iArr, i5, objArr);
            if (i6 < m29495c.length && m29495c[i6] == m29099o3) {
                m29495c[i6] = i5;
                i6++;
            }
            if (fieldInfo2.m29107w() == FieldType.MAP) {
                iArr2[i7] = i5;
                i7++;
            } else if (fieldInfo2.m29107w().m29187id() >= 18 && fieldInfo2.m29107w().m29187id() <= 49) {
                i = i5;
                iArr3[i8] = (int) dun.m53735Z(fieldInfo2.m29098n());
                i8++;
                i4++;
                i5 = i + 3;
            }
            i = i5;
            i4++;
            i5 = i + 3;
        }
        if (iArr2 == null) {
            iArr2 = f38167z;
        }
        if (iArr3 == null) {
            iArr3 = f38167z;
        }
        int[] iArr4 = new int[m29495c.length + iArr2.length + iArr3.length];
        System.arraycopy(m29495c, 0, iArr4, 0, m29495c.length);
        System.arraycopy(iArr2, 0, iArr4, m29495c.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, m29495c.length + iArr2.length, iArr3.length);
        return new C6884u<>(iArr, objArr, m29099o, m29099o2, messageInfo.mo29494b(), messageInfo.getSyntax(), true, iArr4, m29495c.length, m29495c.length + iArr2.length, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x024b  */
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.protobuf.C6884u<T> m30334V(com.sunia.HTREnginev2.ucl r32, com.sunia.HTREnginev2.vtj r33, com.google.protobuf.AbstractC6878o r34, com.google.protobuf.AbstractC6858c0<?, ?> r35, com.google.protobuf.AbstractC6873j<?> r36, com.google.protobuf.InterfaceC6880q r37) {
        /*
            Method dump skipped, instructions count: 989
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C6884u.m30334V(com.sunia.HTREnginev2.ucl, com.sunia.HTREnginev2.vtj, com.google.protobuf.o, com.google.protobuf.c0, com.google.protobuf.j, com.google.protobuf.q):com.google.protobuf.u");
    }

    /* renamed from: X */
    public static long m30335X(int value) {
        return value & 1048575;
    }

    /* renamed from: Y */
    public static <T> boolean m30336Y(T message, long offset) {
        return ((Boolean) dun.m53726Q(message, offset)).booleanValue();
    }

    /* renamed from: Z */
    public static <T> double m30337Z(T message, long offset) {
        return ((Double) dun.m53726Q(message, offset)).doubleValue();
    }

    /* renamed from: a0 */
    public static <T> float m30338a0(T message, long offset) {
        return ((Float) dun.m53726Q(message, offset)).floatValue();
    }

    /* renamed from: b0 */
    public static <T> int m30339b0(T message, long offset) {
        return ((Integer) dun.m53726Q(message, offset)).intValue();
    }

    /* renamed from: c0 */
    public static <T> long m30340c0(T message, long offset) {
        return ((Long) dun.m53726Q(message, offset)).longValue();
    }

    /* renamed from: k */
    public static <T> boolean m30341k(T message, long offset) {
        return dun.m53780w(message, offset);
    }

    /* renamed from: l */
    public static void m30342l(Object message) {
        if (m30329H(message)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + message);
    }

    /* renamed from: o */
    public static <T> double m30343o(T message, long offset) {
        return dun.m53715F(message, offset);
    }

    /* renamed from: o0 */
    public static java.lang.reflect.Field m30344o0(Class<?> messageClass, String fieldName) {
        try {
            return messageClass.getDeclaredField(fieldName);
        } catch (NoSuchFieldException unused) {
            java.lang.reflect.Field[] declaredFields = messageClass.getDeclaredFields();
            for (java.lang.reflect.Field field : declaredFields) {
                if (fieldName.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + fieldName + " for " + messageClass.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* renamed from: s */
    public static <T> float m30345s(T message, long offset) {
        return dun.m53717H(message, offset);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x007a  */
    /* renamed from: s0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m30346s0(com.google.protobuf.FieldInfo r8, int[] r9, int r10, java.lang.Object[] r11) {
        /*
            com.sunia.HTREnginev2.kgk r0 = r8.m29103s()
            r1 = 0
            if (r0 == 0) goto L25
            com.google.protobuf.FieldType r2 = r8.m29107w()
            int r2 = r2.m29187id()
            int r2 = r2 + 51
            java.lang.reflect.Field r3 = r0.m55216c()
            long r3 = com.sunia.HTREnginev2.dun.m53735Z(r3)
            int r3 = (int) r3
            java.lang.reflect.Field r0 = r0.m55214a()
            long r4 = com.sunia.HTREnginev2.dun.m53735Z(r0)
        L22:
            int r0 = (int) r4
            r4 = r1
            goto L6c
        L25:
            com.google.protobuf.FieldType r0 = r8.m29107w()
            java.lang.reflect.Field r2 = r8.m29098n()
            long r2 = com.sunia.HTREnginev2.dun.m53735Z(r2)
            int r3 = (int) r2
            int r2 = r0.m29187id()
            boolean r4 = r0.isList()
            if (r4 != 0) goto L5a
            boolean r0 = r0.isMap()
            if (r0 != 0) goto L5a
            java.lang.reflect.Field r0 = r8.m29105u()
            if (r0 != 0) goto L4c
            r0 = 1048575(0xfffff, float:1.469367E-39)
            goto L51
        L4c:
            long r4 = com.sunia.HTREnginev2.dun.m53735Z(r0)
            int r0 = (int) r4
        L51:
            int r4 = r8.m29106v()
            int r4 = java.lang.Integer.numberOfTrailingZeros(r4)
            goto L6c
        L5a:
            java.lang.reflect.Field r0 = r8.m29096l()
            if (r0 != 0) goto L63
            r0 = r1
            r4 = r0
            goto L6c
        L63:
            java.lang.reflect.Field r0 = r8.m29096l()
            long r4 = com.sunia.HTREnginev2.dun.m53735Z(r0)
            goto L22
        L6c:
            int r5 = r8.m29099o()
            r9[r10] = r5
            int r5 = r10 + 1
            boolean r6 = r8.m29108x()
            if (r6 == 0) goto L7d
            r6 = 536870912(0x20000000, float:1.0842022E-19)
            goto L7e
        L7d:
            r6 = r1
        L7e:
            boolean r7 = r8.m29109z()
            if (r7 == 0) goto L86
            r1 = 268435456(0x10000000, float:2.5243549E-29)
        L86:
            r1 = r1 | r6
            int r2 = r2 << 20
            r1 = r1 | r2
            r1 = r1 | r3
            r9[r5] = r1
            int r1 = r10 + 2
            int r2 = r4 << 20
            r0 = r0 | r2
            r9[r1] = r0
            java.lang.Class r9 = r8.m29102r()
            java.lang.Object r0 = r8.m29101q()
            if (r0 == 0) goto Lbe
            int r10 = r10 / 3
            int r10 = r10 * 2
            java.lang.Object r0 = r8.m29101q()
            r11[r10] = r0
            if (r9 == 0) goto Laf
            int r10 = r10 + 1
            r11[r10] = r9
            goto Ldb
        Laf:
            com.google.protobuf.Internal$EnumVerifier r9 = r8.m29097m()
            if (r9 == 0) goto Ldb
            int r10 = r10 + 1
            com.google.protobuf.Internal$EnumVerifier r8 = r8.m29097m()
            r11[r10] = r8
            goto Ldb
        Lbe:
            if (r9 == 0) goto Lc9
            int r10 = r10 / 3
            int r10 = r10 * 2
            int r10 = r10 + 1
            r11[r10] = r9
            goto Ldb
        Lc9:
            com.google.protobuf.Internal$EnumVerifier r9 = r8.m29097m()
            if (r9 == 0) goto Ldb
            int r10 = r10 / 3
            int r10 = r10 * 2
            int r10 = r10 + 1
            com.google.protobuf.Internal$EnumVerifier r8 = r8.m29097m()
            r11[r10] = r8
        Ldb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C6884u.m30346s0(com.google.protobuf.FieldInfo, int[], int, java.lang.Object[]):void");
    }

    /* renamed from: v0 */
    public static int m30347v0(int value) {
        return (value & f38162u) >>> 20;
    }

    /* renamed from: w */
    public static UnknownFieldSetLite m30348w(Object message) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) message;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite != UnknownFieldSetLite.getDefaultInstance()) {
            return unknownFieldSetLite;
        }
        UnknownFieldSetLite m29632k = UnknownFieldSetLite.m29632k();
        generatedMessageLite.unknownFields = m29632k;
        return m29632k;
    }

    /* renamed from: z */
    public static <T> int m30349z(T message, long offset) {
        return dun.m53720K(message, offset);
    }

    /* renamed from: A0 */
    public final void m30350A0(int fieldNumber, Object value, Writer writer) throws IOException {
        if (value instanceof String) {
            writer.writeString(fieldNumber, (String) value);
        } else {
            writer.writeBytes(fieldNumber, (ByteString) value);
        }
    }

    /* renamed from: B */
    public final boolean m30351B(T message, int pos) {
        int m30382j0 = m30382j0(pos);
        long j = 1048575 & m30382j0;
        if (j != 1048575) {
            return ((1 << (m30382j0 >>> 20)) & dun.m53720K(message, j)) != 0;
        }
        int m30400w0 = m30400w0(pos);
        long m30335X = m30335X(m30400w0);
        switch (m30347v0(m30400w0)) {
            case 0:
                return Double.doubleToRawLongBits(dun.m53715F(message, m30335X)) != 0;
            case 1:
                return Float.floatToRawIntBits(dun.m53717H(message, m30335X)) != 0;
            case 2:
                return dun.m53723N(message, m30335X) != 0;
            case 3:
                return dun.m53723N(message, m30335X) != 0;
            case 4:
                return dun.m53720K(message, m30335X) != 0;
            case 5:
                return dun.m53723N(message, m30335X) != 0;
            case 6:
                return dun.m53720K(message, m30335X) != 0;
            case 7:
                return dun.m53780w(message, m30335X);
            case 8:
                Object m53726Q = dun.m53726Q(message, m30335X);
                if (m53726Q instanceof String) {
                    return !((String) m53726Q).isEmpty();
                }
                if (m53726Q instanceof ByteString) {
                    return !ByteString.EMPTY.equals(m53726Q);
                }
                throw new IllegalArgumentException();
            case 9:
                return dun.m53726Q(message, m30335X) != null;
            case 10:
                return !ByteString.EMPTY.equals(dun.m53726Q(message, m30335X));
            case 11:
                return dun.m53720K(message, m30335X) != 0;
            case 12:
                return dun.m53720K(message, m30335X) != 0;
            case 13:
                return dun.m53720K(message, m30335X) != 0;
            case 14:
                return dun.m53723N(message, m30335X) != 0;
            case 15:
                return dun.m53720K(message, m30335X) != 0;
            case 16:
                return dun.m53723N(message, m30335X) != 0;
            case 17:
                return dun.m53726Q(message, m30335X) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: B0 */
    public final <UT, UB> void m30352B0(AbstractC6858c0<UT, UB> schema, T message, Writer writer) throws IOException {
        schema.mo29999t(schema.mo29986g(message), writer);
    }

    /* renamed from: C */
    public final boolean m30353C(T message, int pos, int presenceFieldOffset, int presenceField, int presenceMask) {
        return presenceFieldOffset == 1048575 ? m30351B(message, pos) : (presenceField & presenceMask) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: F */
    public final <N> boolean m30354F(Object message, int typeAndOffset, int pos) {
        List list = (List) dun.m53726Q(message, m30335X(typeAndOffset));
        if (list.isEmpty()) {
            return true;
        }
        InterfaceC6889z m30399v = m30399v(pos);
        for (int i = 0; i < list.size(); i++) {
            if (!m30399v.mo30367b(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.protobuf.z] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* renamed from: G */
    public final boolean m30355G(T t, int i, int i2) {
        Map<?, ?> mo30313f = this.f38184q.mo30313f(dun.m53726Q(t, m30335X(i)));
        if (mo30313f.isEmpty()) {
            return true;
        }
        if (this.f38184q.mo30309b(m30397u(i2)).f37717c.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        ?? r4 = 0;
        for (Object obj : mo30313f.values()) {
            r4 = r4;
            if (r4 == 0) {
                r4 = d9l.m53616a().m53624i(obj.getClass());
            }
            if (!r4.mo30367b(obj)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: I */
    public final boolean m30356I(T message, T other, int pos) {
        long m30382j0 = m30382j0(pos) & 1048575;
        return dun.m53720K(message, m30382j0) == dun.m53720K(other, m30382j0);
    }

    /* renamed from: J */
    public final boolean m30357J(T message, int fieldNumber, int pos) {
        return dun.m53720K(message, (long) (m30382j0(pos) & 1048575)) == fieldNumber;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x00c4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:37:0x06b3 A[LOOP:2: B:35:0x06af->B:37:0x06b3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x06c8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0649 A[Catch: all -> 0x06a1, TRY_LEAVE, TryCatch #0 {all -> 0x06a1, blocks: (B:16:0x061a, B:43:0x0643, B:45:0x0649, B:58:0x0671, B:59:0x0676), top: B:15:0x061a }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x066f  */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <UT, UB, ET extends com.google.protobuf.FieldSet.FieldDescriptorLite<ET>> void m30358M(com.google.protobuf.AbstractC6858c0<UT, UB> r19, com.google.protobuf.AbstractC6873j<ET> r20, T r21, com.google.protobuf.InterfaceC6888y r22, com.google.protobuf.ExtensionRegistryLite r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C6884u.m30358M(com.google.protobuf.c0, com.google.protobuf.j, java.lang.Object, com.google.protobuf.y, com.google.protobuf.ExtensionRegistryLite):void");
    }

    /* renamed from: N */
    public final <K, V> void m30359N(Object message, int pos, Object mapDefaultEntry, ExtensionRegistryLite extensionRegistry, InterfaceC6888y reader) throws IOException {
        long m30335X = m30335X(m30400w0(pos));
        Object m53726Q = dun.m53726Q(message, m30335X);
        if (m53726Q == null) {
            m53726Q = this.f38184q.mo30312e(mapDefaultEntry);
            dun.m53775t0(message, m30335X, m53726Q);
        } else if (this.f38184q.mo30315h(m53726Q)) {
            Object mo30312e = this.f38184q.mo30312e(mapDefaultEntry);
            this.f38184q.mo30308a(mo30312e, m53726Q);
            dun.m53775t0(message, m30335X, mo30312e);
            m53726Q = mo30312e;
        }
        reader.mo29912A(this.f38184q.mo30311d(m53726Q), this.f38184q.mo30309b(mapDefaultEntry), extensionRegistry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: O */
    public final void m30360O(T targetParent, T sourceParent, int pos) {
        if (m30351B(sourceParent, pos)) {
            long m30335X = m30335X(m30400w0(pos));
            Unsafe unsafe = f38158G;
            Object object = unsafe.getObject(sourceParent, m30335X);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + m30365W(pos) + " is present but null: " + sourceParent);
            }
            InterfaceC6889z m30399v = m30399v(pos);
            if (!m30351B(targetParent, pos)) {
                if (m30329H(object)) {
                    Object newInstance = m30399v.newInstance();
                    m30399v.mo30366a(newInstance, object);
                    unsafe.putObject(targetParent, m30335X, newInstance);
                } else {
                    unsafe.putObject(targetParent, m30335X, object);
                }
                m30390p0(targetParent, pos);
                return;
            }
            Object object2 = unsafe.getObject(targetParent, m30335X);
            if (!m30329H(object2)) {
                Object newInstance2 = m30399v.newInstance();
                m30399v.mo30366a(newInstance2, object2);
                unsafe.putObject(targetParent, m30335X, newInstance2);
                object2 = newInstance2;
            }
            m30399v.mo30366a(object2, object);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: P */
    public final void m30361P(T targetParent, T sourceParent, int pos) {
        int m30365W = m30365W(pos);
        if (m30357J(sourceParent, m30365W, pos)) {
            long m30335X = m30335X(m30400w0(pos));
            Unsafe unsafe = f38158G;
            Object object = unsafe.getObject(sourceParent, m30335X);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + m30365W(pos) + " is present but null: " + sourceParent);
            }
            InterfaceC6889z m30399v = m30399v(pos);
            if (!m30357J(targetParent, m30365W, pos)) {
                if (m30329H(object)) {
                    Object newInstance = m30399v.newInstance();
                    m30399v.mo30366a(newInstance, object);
                    unsafe.putObject(targetParent, m30335X, newInstance);
                } else {
                    unsafe.putObject(targetParent, m30335X, object);
                }
                m30392q0(targetParent, m30365W, pos);
                return;
            }
            Object object2 = unsafe.getObject(targetParent, m30335X);
            if (!m30329H(object2)) {
                Object newInstance2 = m30399v.newInstance();
                m30399v.mo30366a(newInstance2, object2);
                unsafe.putObject(targetParent, m30335X, newInstance2);
                object2 = newInstance2;
            }
            m30399v.mo30366a(object2, object);
        }
    }

    /* renamed from: Q */
    public final void m30362Q(T message, T other, int pos) {
        int m30400w0 = m30400w0(pos);
        long m30335X = m30335X(m30400w0);
        int m30365W = m30365W(pos);
        switch (m30347v0(m30400w0)) {
            case 0:
                if (m30351B(other, pos)) {
                    dun.m53755j0(message, m30335X, dun.m53715F(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 1:
                if (m30351B(other, pos)) {
                    dun.m53759l0(message, m30335X, dun.m53717H(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 2:
                if (m30351B(other, pos)) {
                    dun.m53771r0(message, m30335X, dun.m53723N(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 3:
                if (m30351B(other, pos)) {
                    dun.m53771r0(message, m30335X, dun.m53723N(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 4:
                if (m30351B(other, pos)) {
                    dun.m53765o0(message, m30335X, dun.m53720K(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 5:
                if (m30351B(other, pos)) {
                    dun.m53771r0(message, m30335X, dun.m53723N(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 6:
                if (m30351B(other, pos)) {
                    dun.m53765o0(message, m30335X, dun.m53720K(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 7:
                if (m30351B(other, pos)) {
                    dun.m53737a0(message, m30335X, dun.m53780w(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 8:
                if (m30351B(other, pos)) {
                    dun.m53775t0(message, m30335X, dun.m53726Q(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 9:
                m30360O(message, other, pos);
                return;
            case 10:
                if (m30351B(other, pos)) {
                    dun.m53775t0(message, m30335X, dun.m53726Q(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 11:
                if (m30351B(other, pos)) {
                    dun.m53765o0(message, m30335X, dun.m53720K(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 12:
                if (m30351B(other, pos)) {
                    dun.m53765o0(message, m30335X, dun.m53720K(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 13:
                if (m30351B(other, pos)) {
                    dun.m53765o0(message, m30335X, dun.m53720K(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 14:
                if (m30351B(other, pos)) {
                    dun.m53771r0(message, m30335X, dun.m53723N(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 15:
                if (m30351B(other, pos)) {
                    dun.m53765o0(message, m30335X, dun.m53720K(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 16:
                if (m30351B(other, pos)) {
                    dun.m53771r0(message, m30335X, dun.m53723N(other, m30335X));
                    m30390p0(message, pos);
                    return;
                }
                return;
            case 17:
                m30360O(message, other, pos);
                return;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.f38181n.mo30294d(message, other, m30335X);
                return;
            case 50:
                C6854a0.m29766I(this.f38184q, message, other, m30335X);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (m30357J(other, m30365W, pos)) {
                    dun.m53775t0(message, m30335X, dun.m53726Q(other, m30335X));
                    m30392q0(message, m30365W, pos);
                    return;
                }
                return;
            case 60:
                m30361P(message, other, pos);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (m30357J(other, m30365W, pos)) {
                    dun.m53775t0(message, m30335X, dun.m53726Q(other, m30335X));
                    m30392q0(message, m30365W, pos);
                    return;
                }
                return;
            case 68:
                m30361P(message, other, pos);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: R */
    public final Object m30363R(T message, int pos) {
        InterfaceC6889z m30399v = m30399v(pos);
        long m30335X = m30335X(m30400w0(pos));
        if (!m30351B(message, pos)) {
            return m30399v.newInstance();
        }
        Object object = f38158G.getObject(message, m30335X);
        if (m30329H(object)) {
            return object;
        }
        Object newInstance = m30399v.newInstance();
        if (object != null) {
            m30399v.mo30366a(newInstance, object);
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: S */
    public final Object m30364S(T message, int fieldNumber, int pos) {
        InterfaceC6889z m30399v = m30399v(pos);
        if (!m30357J(message, fieldNumber, pos)) {
            return m30399v.newInstance();
        }
        Object object = f38158G.getObject(message, m30335X(m30400w0(pos)));
        if (m30329H(object)) {
            return object;
        }
        Object newInstance = m30399v.newInstance();
        if (object != null) {
            m30399v.mo30366a(newInstance, object);
        }
        return newInstance;
    }

    /* renamed from: W */
    public final int m30365W(int pos) {
        return this.f38168a[pos];
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: a */
    public void mo30366a(T message, T other) {
        m30342l(message);
        other.getClass();
        for (int i = 0; i < this.f38168a.length; i += 3) {
            m30362Q(message, other, i);
        }
        C6854a0.m29767J(this.f38182o, message, other);
        if (this.f38173f) {
            C6854a0.m29765H(this.f38183p, message, other);
        }
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: b */
    public final boolean mo30367b(T message) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.f38178k) {
            int i6 = this.f38177j[i5];
            int m30365W = m30365W(i6);
            int m30400w0 = m30400w0(i6);
            int i7 = this.f38168a[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i3) {
                if (i8 != 1048575) {
                    i4 = f38158G.getInt(message, i8);
                }
                i2 = i4;
                i = i8;
            } else {
                i = i3;
                i2 = i4;
            }
            if (m30330K(m30400w0) && !m30353C(message, i6, i, i2, i9)) {
                return false;
            }
            int m30347v0 = m30347v0(m30400w0);
            if (m30347v0 != 9 && m30347v0 != 17) {
                if (m30347v0 != 27) {
                    if (m30347v0 == 60 || m30347v0 == 68) {
                        if (m30357J(message, m30365W, i6) && !m30327D(message, m30400w0, m30399v(i6))) {
                            return false;
                        }
                    } else if (m30347v0 != 49) {
                        if (m30347v0 == 50 && !m30355G(message, m30400w0, i6)) {
                            return false;
                        }
                    }
                }
                if (!m30354F(message, m30400w0, i6)) {
                    return false;
                }
            } else if (m30353C(message, i6, i, i2, i9) && !m30327D(message, m30400w0, m30399v(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.f38173f || this.f38183p.mo30263c(message).m29140E();
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: c */
    public boolean mo30368c(T message, T other) {
        int length = this.f38168a.length;
        for (int i = 0; i < length; i += 3) {
            if (!m30389p(message, other, i)) {
                return false;
            }
        }
        if (!this.f38182o.mo29986g(message).equals(this.f38182o.mo29986g(other))) {
            return false;
        }
        if (this.f38173f) {
            return this.f38183p.mo30263c(message).equals(this.f38183p.mo30263c(other));
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0019. Please report as an issue. */
    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: d */
    public int mo30369d(T message) {
        int i;
        int hashLong;
        int length = this.f38168a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int m30400w0 = m30400w0(i3);
            int m30365W = m30365W(i3);
            long m30335X = m30335X(m30400w0);
            int i4 = 37;
            switch (m30347v0(m30400w0)) {
                case 0:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(Double.doubleToLongBits(dun.m53715F(message, m30335X)));
                    i2 = i + hashLong;
                    break;
                case 1:
                    i = i2 * 53;
                    hashLong = Float.floatToIntBits(dun.m53717H(message, m30335X));
                    i2 = i + hashLong;
                    break;
                case 2:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(dun.m53723N(message, m30335X));
                    i2 = i + hashLong;
                    break;
                case 3:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(dun.m53723N(message, m30335X));
                    i2 = i + hashLong;
                    break;
                case 4:
                    i = i2 * 53;
                    hashLong = dun.m53720K(message, m30335X);
                    i2 = i + hashLong;
                    break;
                case 5:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(dun.m53723N(message, m30335X));
                    i2 = i + hashLong;
                    break;
                case 6:
                    i = i2 * 53;
                    hashLong = dun.m53720K(message, m30335X);
                    i2 = i + hashLong;
                    break;
                case 7:
                    i = i2 * 53;
                    hashLong = Internal.hashBoolean(dun.m53780w(message, m30335X));
                    i2 = i + hashLong;
                    break;
                case 8:
                    i = i2 * 53;
                    hashLong = ((String) dun.m53726Q(message, m30335X)).hashCode();
                    i2 = i + hashLong;
                    break;
                case 9:
                    Object m53726Q = dun.m53726Q(message, m30335X);
                    if (m53726Q != null) {
                        i4 = m53726Q.hashCode();
                    }
                    i2 = (i2 * 53) + i4;
                    break;
                case 10:
                    i = i2 * 53;
                    hashLong = dun.m53726Q(message, m30335X).hashCode();
                    i2 = i + hashLong;
                    break;
                case 11:
                    i = i2 * 53;
                    hashLong = dun.m53720K(message, m30335X);
                    i2 = i + hashLong;
                    break;
                case 12:
                    i = i2 * 53;
                    hashLong = dun.m53720K(message, m30335X);
                    i2 = i + hashLong;
                    break;
                case 13:
                    i = i2 * 53;
                    hashLong = dun.m53720K(message, m30335X);
                    i2 = i + hashLong;
                    break;
                case 14:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(dun.m53723N(message, m30335X));
                    i2 = i + hashLong;
                    break;
                case 15:
                    i = i2 * 53;
                    hashLong = dun.m53720K(message, m30335X);
                    i2 = i + hashLong;
                    break;
                case 16:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(dun.m53723N(message, m30335X));
                    i2 = i + hashLong;
                    break;
                case 17:
                    Object m53726Q2 = dun.m53726Q(message, m30335X);
                    if (m53726Q2 != null) {
                        i4 = m53726Q2.hashCode();
                    }
                    i2 = (i2 * 53) + i4;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    hashLong = dun.m53726Q(message, m30335X).hashCode();
                    i2 = i + hashLong;
                    break;
                case 50:
                    i = i2 * 53;
                    hashLong = dun.m53726Q(message, m30335X).hashCode();
                    i2 = i + hashLong;
                    break;
                case 51:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(Double.doubleToLongBits(m30337Z(message, m30335X)));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = Float.floatToIntBits(m30338a0(message, m30335X));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(m30340c0(message, m30335X));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(m30340c0(message, m30335X));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = m30339b0(message, m30335X);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(m30340c0(message, m30335X));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = m30339b0(message, m30335X);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashBoolean(m30336Y(message, m30335X));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = ((String) dun.m53726Q(message, m30335X)).hashCode();
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = dun.m53726Q(message, m30335X).hashCode();
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = dun.m53726Q(message, m30335X).hashCode();
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = m30339b0(message, m30335X);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = m30339b0(message, m30335X);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = m30339b0(message, m30335X);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(m30340c0(message, m30335X));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = m30339b0(message, m30335X);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(m30340c0(message, m30335X));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m30357J(message, m30365W, i3)) {
                        i = i2 * 53;
                        hashLong = dun.m53726Q(message, m30335X).hashCode();
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.f38182o.mo29986g(message).hashCode();
        return this.f38173f ? (hashCode * 53) + this.f38183p.mo30263c(message).hashCode() : hashCode;
    }

    /* renamed from: d0 */
    public final <K, V> int m30370d0(T message, byte[] data, int position, int limit, int bufferPosition, long fieldOffset, C6855b.b registers) throws IOException {
        Unsafe unsafe = f38158G;
        Object m30397u = m30397u(bufferPosition);
        Object object = unsafe.getObject(message, fieldOffset);
        if (this.f38184q.mo30315h(object)) {
            Object mo30312e = this.f38184q.mo30312e(m30397u);
            this.f38184q.mo30308a(mo30312e, object);
            unsafe.putObject(message, fieldOffset, mo30312e);
            object = mo30312e;
        }
        return m30385m(data, position, limit, this.f38184q.mo30309b(m30397u), this.f38184q.mo30311d(object), registers);
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: e */
    public void mo30371e(T message, Writer writer) throws IOException {
        if (writer.mo29738l() == Writer.FieldOrder.DESCENDING) {
            m30404y0(message, writer);
        } else {
            m30402x0(message, writer);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:101:0x0099. Please report as an issue. */
    @bnd
    /* renamed from: e0 */
    public int m30372e0(T message, byte[] data, int position, int limit, int endDelimited, C6855b.b registers) throws IOException {
        Unsafe unsafe;
        int i;
        C6884u<T> c6884u;
        int i2;
        int i3;
        int i4;
        int i5;
        T t;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        byte[] bArr;
        int i13;
        int i14;
        char c;
        byte[] bArr2;
        int m29847L;
        int i15;
        int i16;
        C6884u<T> c6884u2 = this;
        T t2 = message;
        byte[] bArr3 = data;
        int i17 = limit;
        int i18 = endDelimited;
        C6855b.b bVar = registers;
        m30342l(message);
        Unsafe unsafe2 = f38158G;
        int i19 = position;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = -1;
        int i24 = 1048575;
        while (true) {
            if (i19 < i17) {
                int i25 = i19 + 1;
                byte b = bArr3[i19];
                if (b < 0) {
                    int m29843H = C6855b.m29843H(b, bArr3, i25, bVar);
                    i6 = bVar.f37998a;
                    i25 = m29843H;
                } else {
                    i6 = b;
                }
                int i26 = i6 >>> 3;
                int i27 = i6 & 7;
                int m30380i0 = i26 > i23 ? c6884u2.m30380i0(i26, i20 / 3) : c6884u2.m30378h0(i26);
                if (m30380i0 == -1) {
                    i7 = i26;
                    i8 = i25;
                    i3 = i6;
                    i9 = i22;
                    i10 = i24;
                    unsafe = unsafe2;
                    i = i18;
                    i11 = 0;
                } else {
                    int i28 = c6884u2.f38168a[m30380i0 + 1];
                    int m30347v0 = m30347v0(i28);
                    long m30335X = m30335X(i28);
                    int i29 = i6;
                    if (m30347v0 <= 17) {
                        int i30 = c6884u2.f38168a[m30380i0 + 2];
                        int i31 = 1 << (i30 >>> 20);
                        int i32 = 1048575;
                        int i33 = i30 & 1048575;
                        if (i33 != i24) {
                            if (i24 != 1048575) {
                                unsafe2.putInt(t2, i24, i22);
                                i32 = 1048575;
                            }
                            i10 = i33;
                            i12 = i33 == i32 ? 0 : unsafe2.getInt(t2, i33);
                        } else {
                            i12 = i22;
                            i10 = i24;
                        }
                        switch (m30347v0) {
                            case 0:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 1) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    dun.m53755j0(t2, m30335X, C6855b.m29855d(bArr, i25));
                                    i19 = i25 + 8;
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 1:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 5) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    dun.m53759l0(t2, m30335X, C6855b.m29863l(bArr, i25));
                                    i19 = i25 + 4;
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 2:
                            case 3:
                                bArr2 = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 0) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    m29847L = C6855b.m29847L(bArr2, i25, bVar);
                                    unsafe2.putLong(message, m30335X, bVar.f37999b);
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr2;
                                    i19 = m29847L;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 4:
                            case 11:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 0) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    i19 = C6855b.m29844I(bArr, i25, bVar);
                                    unsafe2.putInt(t2, m30335X, bVar.f37998a);
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 5:
                            case 14:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 1) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    unsafe2.putLong(message, m30335X, C6855b.m29861j(bArr, i25));
                                    i19 = i25 + 8;
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 6:
                            case 13:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 5) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    unsafe2.putInt(t2, m30335X, C6855b.m29859h(bArr, i25));
                                    i19 = i25 + 4;
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 7:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 0) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    i19 = C6855b.m29847L(bArr, i25, bVar);
                                    dun.m53737a0(t2, m30335X, bVar.f37999b != 0);
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 8:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 2) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    i19 = m30326A(i28) ? C6855b.m29841F(bArr, i25, bVar) : C6855b.m29838C(bArr, i25, bVar);
                                    unsafe2.putObject(t2, m30335X, bVar.f38000c);
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 9:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 2) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    Object m30363R = c6884u2.m30363R(t2, i13);
                                    i19 = C6855b.m29850O(m30363R, c6884u2.m30399v(i13), data, i25, limit, registers);
                                    c6884u2.m30396t0(t2, i13, m30363R);
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 10:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 2) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    i19 = C6855b.m29853b(bArr, i25, bVar);
                                    unsafe2.putObject(t2, m30335X, bVar.f38000c);
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 12:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 0) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    i19 = C6855b.m29844I(bArr, i25, bVar);
                                    int i34 = bVar.f37998a;
                                    Internal.EnumVerifier m30395t = c6884u2.m30395t(i13);
                                    if (!m30328E(i28) || m30395t == null || m30395t.isInRange(i34)) {
                                        unsafe2.putInt(t2, m30335X, i34);
                                        i22 = i12 | i31;
                                        i18 = endDelimited;
                                        i20 = i13;
                                        bArr3 = bArr;
                                        i21 = i14;
                                        i24 = i10;
                                        i23 = i7;
                                        i17 = limit;
                                    } else {
                                        m30348w(message).m29644n(i14, Long.valueOf(i34));
                                        i18 = endDelimited;
                                        i20 = i13;
                                        i22 = i12;
                                        i21 = i14;
                                        i24 = i10;
                                        i23 = i7;
                                        i17 = limit;
                                        bArr3 = bArr;
                                    }
                                }
                                break;
                            case 15:
                                bArr = data;
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                if (i27 != 0) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    i19 = C6855b.m29844I(bArr, i25, bVar);
                                    unsafe2.putInt(t2, m30335X, CodedInputStream.decodeZigZag32(bVar.f37998a));
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 16:
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                bArr2 = data;
                                if (i27 != 0) {
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    m29847L = C6855b.m29847L(bArr2, i25, bVar);
                                    unsafe2.putLong(message, m30335X, CodedInputStream.decodeZigZag64(bVar.f37999b));
                                    i22 = i12 | i31;
                                    i18 = endDelimited;
                                    i20 = i13;
                                    bArr3 = bArr2;
                                    i19 = m29847L;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            case 17:
                                if (i27 != 3) {
                                    i7 = i26;
                                    i14 = i29;
                                    c = 65535;
                                    i13 = m30380i0;
                                    i = endDelimited;
                                    i8 = i25;
                                    i11 = i13;
                                    unsafe = unsafe2;
                                    i9 = i12;
                                    i3 = i14;
                                    break;
                                } else {
                                    Object m30363R2 = c6884u2.m30363R(t2, m30380i0);
                                    i7 = i26;
                                    i14 = i29;
                                    i19 = C6855b.m29849N(m30363R2, c6884u2.m30399v(m30380i0), data, i25, limit, (i26 << 3) | 4, registers);
                                    c6884u2.m30396t0(t2, m30380i0, m30363R2);
                                    i22 = i12 | i31;
                                    bArr3 = data;
                                    i18 = endDelimited;
                                    i20 = m30380i0;
                                    i21 = i14;
                                    i24 = i10;
                                    i23 = i7;
                                    i17 = limit;
                                }
                            default:
                                i7 = i26;
                                i13 = m30380i0;
                                i14 = i29;
                                c = 65535;
                                i = endDelimited;
                                i8 = i25;
                                i11 = i13;
                                unsafe = unsafe2;
                                i9 = i12;
                                i3 = i14;
                                break;
                        }
                    } else {
                        i7 = i26;
                        int i35 = i24;
                        i9 = i22;
                        if (m30347v0 != 27) {
                            i10 = i35;
                            if (m30347v0 <= 49) {
                                int i36 = i25;
                                unsafe = unsafe2;
                                i11 = m30380i0;
                                i16 = i29;
                                i19 = m30376g0(message, data, i25, limit, i29, i7, i27, m30380i0, i28, m30347v0, m30335X, registers);
                                if (i19 != i36) {
                                    c6884u2 = this;
                                    t2 = message;
                                    bArr3 = data;
                                    i17 = limit;
                                    i18 = endDelimited;
                                    bVar = registers;
                                    i21 = i16;
                                    i22 = i9;
                                    i20 = i11;
                                    i24 = i10;
                                    i23 = i7;
                                    unsafe2 = unsafe;
                                } else {
                                    i = endDelimited;
                                    i8 = i19;
                                    i3 = i16;
                                }
                            } else {
                                i15 = i25;
                                unsafe = unsafe2;
                                i11 = m30380i0;
                                i16 = i29;
                                if (m30347v0 != 50) {
                                    i19 = m30374f0(message, data, i15, limit, i16, i7, i27, i28, m30347v0, m30335X, i11, registers);
                                    if (i19 != i15) {
                                        c6884u2 = this;
                                        t2 = message;
                                        bArr3 = data;
                                        i17 = limit;
                                        i18 = endDelimited;
                                        bVar = registers;
                                        i21 = i16;
                                        i22 = i9;
                                        i20 = i11;
                                        i24 = i10;
                                        i23 = i7;
                                        unsafe2 = unsafe;
                                    } else {
                                        i = endDelimited;
                                        i8 = i19;
                                        i3 = i16;
                                    }
                                } else if (i27 == 2) {
                                    i19 = m30370d0(message, data, i15, limit, i11, m30335X, registers);
                                    if (i19 != i15) {
                                        c6884u2 = this;
                                        t2 = message;
                                        bArr3 = data;
                                        i17 = limit;
                                        i18 = endDelimited;
                                        bVar = registers;
                                        i21 = i16;
                                        i22 = i9;
                                        i20 = i11;
                                        i24 = i10;
                                        i23 = i7;
                                        unsafe2 = unsafe;
                                    } else {
                                        i = endDelimited;
                                        i8 = i19;
                                        i3 = i16;
                                    }
                                }
                            }
                        } else if (i27 == 2) {
                            Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe2.getObject(t2, m30335X);
                            if (!protobufList.isModifiable()) {
                                int size = protobufList.size();
                                protobufList = protobufList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                                unsafe2.putObject(t2, m30335X, protobufList);
                            }
                            i19 = C6855b.m29868q(c6884u2.m30399v(m30380i0), i29, data, i25, limit, protobufList, registers);
                            i18 = endDelimited;
                            i20 = m30380i0;
                            i21 = i29;
                            i22 = i9;
                            i24 = i35;
                            i23 = i7;
                            bArr3 = data;
                            i17 = limit;
                        } else {
                            i10 = i35;
                            i15 = i25;
                            unsafe = unsafe2;
                            i11 = m30380i0;
                            i16 = i29;
                        }
                        i = endDelimited;
                        i8 = i15;
                        i3 = i16;
                    }
                }
                if (i3 != i || i == 0) {
                    i19 = (!this.f38173f || registers.f38001d == ExtensionRegistryLite.getEmptyRegistry()) ? C6855b.m29842G(i3, data, i8, limit, m30348w(message), registers) : C6855b.m29858g(i3, data, i8, limit, message, this.f38172e, this.f38182o, registers);
                    t2 = message;
                    bArr3 = data;
                    i17 = limit;
                    i21 = i3;
                    c6884u2 = this;
                    bVar = registers;
                    i22 = i9;
                    i20 = i11;
                    i24 = i10;
                    i23 = i7;
                    unsafe2 = unsafe;
                    i18 = i;
                } else {
                    i5 = 1048575;
                    c6884u = this;
                    i2 = i8;
                    i22 = i9;
                    i4 = i10;
                }
            } else {
                int i37 = i24;
                unsafe = unsafe2;
                i = i18;
                c6884u = c6884u2;
                i2 = i19;
                i3 = i21;
                i4 = i37;
                i5 = 1048575;
            }
        }
        if (i4 != i5) {
            t = message;
            unsafe.putInt(t, i4, i22);
        } else {
            t = message;
        }
        UnknownFieldSetLite unknownFieldSetLite = null;
        for (int i38 = c6884u.f38178k; i38 < c6884u.f38179l; i38++) {
            unknownFieldSetLite = (UnknownFieldSetLite) m30391q(message, c6884u.f38177j[i38], unknownFieldSetLite, c6884u.f38182o, message);
        }
        if (unknownFieldSetLite != null) {
            c6884u.f38182o.mo29994o(t, unknownFieldSetLite);
        }
        if (i == 0) {
            if (i2 != limit) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i2 > limit || i3 != i) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i2;
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: f */
    public void mo30373f(T message, byte[] data, int position, int limit, C6855b.b registers) throws IOException {
        m30372e0(message, data, position, limit, 0, registers);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: f0 */
    public final int m30374f0(T message, byte[] data, int position, int limit, int tag, int number, int wireType, int typeAndOffset, int fieldType, long fieldOffset, int bufferPosition, C6855b.b registers) throws IOException {
        int m29850O;
        Unsafe unsafe = f38158G;
        long j = this.f38168a[bufferPosition + 2] & 1048575;
        switch (fieldType) {
            case 51:
                if (wireType == 1) {
                    unsafe.putObject(message, fieldOffset, Double.valueOf(C6855b.m29855d(data, position)));
                    int i = position + 8;
                    unsafe.putInt(message, j, number);
                    return i;
                }
                return position;
            case 52:
                if (wireType == 5) {
                    unsafe.putObject(message, fieldOffset, Float.valueOf(C6855b.m29863l(data, position)));
                    int i2 = position + 4;
                    unsafe.putInt(message, j, number);
                    return i2;
                }
                return position;
            case 53:
            case 54:
                if (wireType == 0) {
                    int m29847L = C6855b.m29847L(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Long.valueOf(registers.f37999b));
                    unsafe.putInt(message, j, number);
                    return m29847L;
                }
                return position;
            case 55:
            case 62:
                if (wireType == 0) {
                    int m29844I = C6855b.m29844I(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Integer.valueOf(registers.f37998a));
                    unsafe.putInt(message, j, number);
                    return m29844I;
                }
                return position;
            case 56:
            case 65:
                if (wireType == 1) {
                    unsafe.putObject(message, fieldOffset, Long.valueOf(C6855b.m29861j(data, position)));
                    int i3 = position + 8;
                    unsafe.putInt(message, j, number);
                    return i3;
                }
                return position;
            case 57:
            case 64:
                if (wireType == 5) {
                    unsafe.putObject(message, fieldOffset, Integer.valueOf(C6855b.m29859h(data, position)));
                    int i4 = position + 4;
                    unsafe.putInt(message, j, number);
                    return i4;
                }
                return position;
            case 58:
                if (wireType == 0) {
                    int m29847L2 = C6855b.m29847L(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Boolean.valueOf(registers.f37999b != 0));
                    unsafe.putInt(message, j, number);
                    return m29847L2;
                }
                return position;
            case 59:
                if (wireType == 2) {
                    int m29844I2 = C6855b.m29844I(data, position, registers);
                    int i5 = registers.f37998a;
                    if (i5 == 0) {
                        unsafe.putObject(message, fieldOffset, "");
                    } else {
                        if ((typeAndOffset & 536870912) != 0 && !Utf8.m29672u(data, m29844I2, m29844I2 + i5)) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        unsafe.putObject(message, fieldOffset, new String(data, m29844I2, i5, Internal.f37667b));
                        m29844I2 += i5;
                    }
                    unsafe.putInt(message, j, number);
                    return m29844I2;
                }
                return position;
            case 60:
                if (wireType == 2) {
                    Object m30364S = m30364S(message, number, bufferPosition);
                    m29850O = C6855b.m29850O(m30364S, m30399v(bufferPosition), data, position, limit, registers);
                    m30398u0(message, number, bufferPosition, m30364S);
                    break;
                }
                return position;
            case 61:
                if (wireType == 2) {
                    int m29853b = C6855b.m29853b(data, position, registers);
                    unsafe.putObject(message, fieldOffset, registers.f38000c);
                    unsafe.putInt(message, j, number);
                    return m29853b;
                }
                return position;
            case 63:
                if (wireType == 0) {
                    int m29844I3 = C6855b.m29844I(data, position, registers);
                    int i6 = registers.f37998a;
                    Internal.EnumVerifier m30395t = m30395t(bufferPosition);
                    if (m30395t == null || m30395t.isInRange(i6)) {
                        unsafe.putObject(message, fieldOffset, Integer.valueOf(i6));
                        unsafe.putInt(message, j, number);
                    } else {
                        m30348w(message).m29644n(tag, Long.valueOf(i6));
                    }
                    return m29844I3;
                }
                return position;
            case 66:
                if (wireType == 0) {
                    int m29844I4 = C6855b.m29844I(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Integer.valueOf(CodedInputStream.decodeZigZag32(registers.f37998a)));
                    unsafe.putInt(message, j, number);
                    return m29844I4;
                }
                return position;
            case 67:
                if (wireType == 0) {
                    int m29847L3 = C6855b.m29847L(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Long.valueOf(CodedInputStream.decodeZigZag64(registers.f37999b)));
                    unsafe.putInt(message, j, number);
                    return m29847L3;
                }
                return position;
            case 68:
                if (wireType == 3) {
                    Object m30364S2 = m30364S(message, number, bufferPosition);
                    m29850O = C6855b.m29849N(m30364S2, m30399v(bufferPosition), data, position, limit, (tag & (-8)) | 4, registers);
                    m30398u0(message, number, bufferPosition, m30364S2);
                    break;
                }
                return position;
            default:
                return position;
        }
        return m29850O;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: g */
    public void mo30375g(T message) {
        if (m30329H(message)) {
            if (message instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) message;
                generatedMessageLite.m29249h();
                generatedMessageLite.m29248g();
                generatedMessageLite.m29256p();
            }
            int length = this.f38168a.length;
            for (int i = 0; i < length; i += 3) {
                int m30400w0 = m30400w0(i);
                long m30335X = m30335X(m30400w0);
                int m30347v0 = m30347v0(m30400w0);
                if (m30347v0 != 9) {
                    if (m30347v0 != 60 && m30347v0 != 68) {
                        switch (m30347v0) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.f38181n.mo30293c(message, m30335X);
                                break;
                            case 50:
                                Unsafe unsafe = f38158G;
                                Object object = unsafe.getObject(message, m30335X);
                                if (object != null) {
                                    unsafe.putObject(message, m30335X, this.f38184q.mo30310c(object));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (m30357J(message, m30365W(i), i)) {
                        m30399v(i).mo30375g(f38158G.getObject(message, m30335X));
                    }
                }
                if (m30351B(message, i)) {
                    m30399v(i).mo30375g(f38158G.getObject(message, m30335X));
                }
            }
            this.f38182o.mo29989j(message);
            if (this.f38173f) {
                this.f38183p.mo30266f(message);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002f. Please report as an issue. */
    /* renamed from: g0 */
    public final int m30376g0(T message, byte[] data, int position, int limit, int tag, int number, int wireType, int bufferPosition, long typeAndOffset, int fieldType, long fieldOffset, C6855b.b registers) throws IOException {
        int m29845J;
        Unsafe unsafe = f38158G;
        Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(message, fieldOffset);
        if (!protobufList.isModifiable()) {
            int size = protobufList.size();
            protobufList = protobufList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            unsafe.putObject(message, fieldOffset, protobufList);
        }
        switch (fieldType) {
            case 18:
            case 35:
                if (wireType == 2) {
                    return C6855b.m29870s(data, position, protobufList, registers);
                }
                if (wireType == 1) {
                    return C6855b.m29856e(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 19:
            case 36:
                if (wireType == 2) {
                    return C6855b.m29873v(data, position, protobufList, registers);
                }
                if (wireType == 5) {
                    return C6855b.m29864m(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 20:
            case 21:
            case 37:
            case 38:
                if (wireType == 2) {
                    return C6855b.m29877z(data, position, protobufList, registers);
                }
                if (wireType == 0) {
                    return C6855b.m29848M(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 22:
            case 29:
            case 39:
            case 43:
                if (wireType == 2) {
                    return C6855b.m29876y(data, position, protobufList, registers);
                }
                if (wireType == 0) {
                    return C6855b.m29845J(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 23:
            case 32:
            case 40:
            case 46:
                if (wireType == 2) {
                    return C6855b.m29872u(data, position, protobufList, registers);
                }
                if (wireType == 1) {
                    return C6855b.m29862k(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 24:
            case 31:
            case 41:
            case 45:
                if (wireType == 2) {
                    return C6855b.m29871t(data, position, protobufList, registers);
                }
                if (wireType == 5) {
                    return C6855b.m29860i(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 25:
            case 42:
                if (wireType == 2) {
                    return C6855b.m29869r(data, position, protobufList, registers);
                }
                if (wireType == 0) {
                    return C6855b.m29852a(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 26:
                if (wireType == 2) {
                    return (typeAndOffset & SVG.f15808P) == 0 ? C6855b.m29839D(tag, data, position, limit, protobufList, registers) : C6855b.m29840E(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 27:
                if (wireType == 2) {
                    return C6855b.m29868q(m30399v(bufferPosition), tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 28:
                if (wireType == 2) {
                    return C6855b.m29854c(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 30:
            case 44:
                if (wireType != 2) {
                    if (wireType == 0) {
                        m29845J = C6855b.m29845J(tag, data, position, limit, protobufList, registers);
                    }
                    return position;
                }
                m29845J = C6855b.m29876y(data, position, protobufList, registers);
                C6854a0.m29757C(message, number, protobufList, m30395t(bufferPosition), null, this.f38182o);
                return m29845J;
            case 33:
            case 47:
                if (wireType == 2) {
                    return C6855b.m29874w(data, position, protobufList, registers);
                }
                if (wireType == 0) {
                    return C6855b.m29836A(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 34:
            case 48:
                if (wireType == 2) {
                    return C6855b.m29875x(data, position, protobufList, registers);
                }
                if (wireType == 0) {
                    return C6855b.m29837B(tag, data, position, limit, protobufList, registers);
                }
                return position;
            case 49:
                if (wireType == 3) {
                    return C6855b.m29866o(m30399v(bufferPosition), tag, data, position, limit, protobufList, registers);
                }
                return position;
            default:
                return position;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0061. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v16 */
    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: h */
    public int mo30377h(T message) {
        int i;
        int i2;
        int i3;
        boolean z;
        int computeDoubleSize;
        int computeBoolSize;
        int m29798h;
        int m29800i;
        int computeTagSize;
        int computeUInt32SizeNoTag;
        Unsafe unsafe = f38158G;
        ?? r9 = 0;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1048575;
        while (i6 < this.f38168a.length) {
            int m30400w0 = m30400w0(i6);
            int m30347v0 = m30347v0(m30400w0);
            int m30365W = m30365W(i6);
            int i9 = this.f38168a[i6 + 2];
            int i10 = i9 & i4;
            if (m30347v0 <= 17) {
                if (i10 != i8) {
                    i5 = i10 == i4 ? r9 : unsafe.getInt(message, i10);
                    i8 = i10;
                }
                i = i8;
                i2 = i5;
                i3 = 1 << (i9 >>> 20);
            } else {
                i = i8;
                i2 = i5;
                i3 = r9;
            }
            long m30335X = m30335X(m30400w0);
            if (m30347v0 < FieldType.DOUBLE_LIST_PACKED.m29187id() || m30347v0 > FieldType.SINT64_LIST_PACKED.m29187id()) {
                i10 = r9;
            }
            int i11 = i10;
            switch (m30347v0) {
                case 0:
                    z = r9;
                    if (!m30353C(message, i6, i, i2, i3)) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeDoubleSize(m30365W, 0.0d);
                        i7 += computeDoubleSize;
                        break;
                    }
                case 1:
                    z = r9;
                    if (!m30353C(message, i6, i, i2, i3)) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeFloatSize(m30365W, 0.0f);
                        i7 += computeDoubleSize;
                        break;
                    }
                case 2:
                    z = r9;
                    if (!m30353C(message, i6, i, i2, i3)) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeInt64Size(m30365W, unsafe.getLong(message, m30335X));
                        i7 += computeDoubleSize;
                        break;
                    }
                case 3:
                    z = r9;
                    if (!m30353C(message, i6, i, i2, i3)) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeUInt64Size(m30365W, unsafe.getLong(message, m30335X));
                        i7 += computeDoubleSize;
                        break;
                    }
                case 4:
                    z = r9;
                    if (!m30353C(message, i6, i, i2, i3)) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeInt32Size(m30365W, unsafe.getInt(message, m30335X));
                        i7 += computeDoubleSize;
                        break;
                    }
                case 5:
                    z = r9;
                    if (!m30353C(message, i6, i, i2, i3)) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeFixed64Size(m30365W, 0L);
                        i7 += computeDoubleSize;
                        break;
                    }
                case 6:
                    if (m30353C(message, i6, i, i2, i3)) {
                        z = false;
                        computeDoubleSize = CodedOutputStream.computeFixed32Size(m30365W, 0);
                        i7 += computeDoubleSize;
                        break;
                    }
                    z = false;
                    break;
                case 7:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = CodedOutputStream.computeBoolSize(m30365W, true);
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 8:
                    if (m30353C(message, i6, i, i2, i3)) {
                        Object object = unsafe.getObject(message, m30335X);
                        computeBoolSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(m30365W, (ByteString) object) : CodedOutputStream.computeStringSize(m30365W, (String) object);
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 9:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = C6854a0.m29814p(m30365W, unsafe.getObject(message, m30335X), m30399v(i6));
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 10:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = CodedOutputStream.computeBytesSize(m30365W, (ByteString) unsafe.getObject(message, m30335X));
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 11:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = CodedOutputStream.computeUInt32Size(m30365W, unsafe.getInt(message, m30335X));
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 12:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = CodedOutputStream.computeEnumSize(m30365W, unsafe.getInt(message, m30335X));
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 13:
                    if (m30353C(message, i6, i, i2, i3)) {
                        i7 += CodedOutputStream.computeSFixed32Size(m30365W, 0);
                    }
                    z = false;
                    break;
                case 14:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = CodedOutputStream.computeSFixed64Size(m30365W, 0L);
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 15:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = CodedOutputStream.computeSInt32Size(m30365W, unsafe.getInt(message, m30335X));
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 16:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = CodedOutputStream.computeSInt64Size(m30365W, unsafe.getLong(message, m30335X));
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 17:
                    if (m30353C(message, i6, i, i2, i3)) {
                        computeBoolSize = CodedOutputStream.m28682E(m30365W, (MessageLite) unsafe.getObject(message, m30335X), m30399v(i6));
                        i7 += computeBoolSize;
                    }
                    z = false;
                    break;
                case 18:
                    m29798h = C6854a0.m29798h(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 19:
                    m29798h = C6854a0.m29794f(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 20:
                    m29798h = C6854a0.m29810n(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 21:
                    m29798h = C6854a0.m29834z(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 22:
                    m29798h = C6854a0.m29806l(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 23:
                    m29798h = C6854a0.m29798h(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 24:
                    m29798h = C6854a0.m29794f(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 25:
                    m29798h = C6854a0.m29784a(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 26:
                    m29798h = C6854a0.m29828w(m30365W, (List) unsafe.getObject(message, m30335X));
                    i7 += m29798h;
                    z = r9;
                    break;
                case 27:
                    m29798h = C6854a0.m29818r(m30365W, (List) unsafe.getObject(message, m30335X), m30399v(i6));
                    i7 += m29798h;
                    z = r9;
                    break;
                case 28:
                    m29798h = C6854a0.m29788c(m30365W, (List) unsafe.getObject(message, m30335X));
                    i7 += m29798h;
                    z = r9;
                    break;
                case 29:
                    m29798h = C6854a0.m29830x(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 30:
                    m29798h = C6854a0.m29790d(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 31:
                    m29798h = C6854a0.m29794f(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 32:
                    m29798h = C6854a0.m29798h(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 33:
                    m29798h = C6854a0.m29820s(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 34:
                    m29798h = C6854a0.m29824u(m30365W, (List) unsafe.getObject(message, m30335X), r9);
                    i7 += m29798h;
                    z = r9;
                    break;
                case 35:
                    m29800i = C6854a0.m29800i((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 36:
                    m29800i = C6854a0.m29796g((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 37:
                    m29800i = C6854a0.m29812o((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 38:
                    m29800i = C6854a0.m29753A((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 39:
                    m29800i = C6854a0.m29808m((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 40:
                    m29800i = C6854a0.m29800i((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 41:
                    m29800i = C6854a0.m29796g((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 42:
                    m29800i = C6854a0.m29786b((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 43:
                    m29800i = C6854a0.m29832y((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 44:
                    m29800i = C6854a0.m29792e((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 45:
                    m29800i = C6854a0.m29796g((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 46:
                    m29800i = C6854a0.m29800i((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 47:
                    m29800i = C6854a0.m29822t((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 48:
                    m29800i = C6854a0.m29826v((List) unsafe.getObject(message, m30335X));
                    if (m29800i > 0) {
                        if (this.f38176i) {
                            unsafe.putInt(message, i11, m29800i);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(m30365W);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(m29800i);
                        m29798h = computeTagSize + computeUInt32SizeNoTag + m29800i;
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 49:
                    m29798h = C6854a0.m29804k(m30365W, (List) unsafe.getObject(message, m30335X), m30399v(i6));
                    i7 += m29798h;
                    z = r9;
                    break;
                case 50:
                    m29798h = this.f38184q.mo30314g(m30365W, unsafe.getObject(message, m30335X), m30397u(i6));
                    i7 += m29798h;
                    z = r9;
                    break;
                case 51:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeDoubleSize(m30365W, 0.0d);
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 52:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeFloatSize(m30365W, 0.0f);
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 53:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeInt64Size(m30365W, m30340c0(message, m30335X));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 54:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeUInt64Size(m30365W, m30340c0(message, m30335X));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 55:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeInt32Size(m30365W, m30339b0(message, m30335X));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 56:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeFixed64Size(m30365W, 0L);
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 57:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeFixed32Size(m30365W, r9);
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 58:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeBoolSize(m30365W, true);
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 59:
                    if (m30357J(message, m30365W, i6)) {
                        Object object2 = unsafe.getObject(message, m30335X);
                        m29798h = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(m30365W, (ByteString) object2) : CodedOutputStream.computeStringSize(m30365W, (String) object2);
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 60:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = C6854a0.m29814p(m30365W, unsafe.getObject(message, m30335X), m30399v(i6));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 61:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeBytesSize(m30365W, (ByteString) unsafe.getObject(message, m30335X));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 62:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeUInt32Size(m30365W, m30339b0(message, m30335X));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 63:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeEnumSize(m30365W, m30339b0(message, m30335X));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 64:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeSFixed32Size(m30365W, r9);
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 65:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeSFixed64Size(m30365W, 0L);
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 66:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeSInt32Size(m30365W, m30339b0(message, m30335X));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 67:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.computeSInt64Size(m30365W, m30340c0(message, m30335X));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                case 68:
                    if (m30357J(message, m30365W, i6)) {
                        m29798h = CodedOutputStream.m28682E(m30365W, (MessageLite) unsafe.getObject(message, m30335X), m30399v(i6));
                        i7 += m29798h;
                    }
                    z = r9;
                    break;
                default:
                    z = r9;
                    break;
            }
            i6 += 3;
            i8 = i;
            r9 = z;
            i5 = i2;
            i4 = 1048575;
        }
        int m30403y = i7 + m30403y(this.f38182o, message);
        return this.f38173f ? m30403y + this.f38183p.mo30263c(message).m29162z() : m30403y;
    }

    /* renamed from: h0 */
    public final int m30378h0(final int number) {
        if (number < this.f38170c || number > this.f38171d) {
            return -1;
        }
        return m30394r0(number, 0);
    }

    @Override // com.google.protobuf.InterfaceC6889z
    /* renamed from: i */
    public void mo30379i(T message, InterfaceC6888y reader, ExtensionRegistryLite extensionRegistry) throws IOException {
        extensionRegistry.getClass();
        m30342l(message);
        m30358M(this.f38182o, this.f38183p, message, reader, extensionRegistry);
    }

    /* renamed from: i0 */
    public final int m30380i0(final int number, final int min) {
        if (number < this.f38170c || number > this.f38171d) {
            return -1;
        }
        return m30394r0(number, min);
    }

    /* renamed from: j */
    public final boolean m30381j(T message, T other, int pos) {
        return m30351B(message, pos) == m30351B(other, pos);
    }

    /* renamed from: j0 */
    public final int m30382j0(int pos) {
        return this.f38168a[pos + 2];
    }

    /* renamed from: k0 */
    public final <E> void m30383k0(Object message, long offset, InterfaceC6888y reader, InterfaceC6889z<E> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        reader.mo29924M(this.f38181n.mo30295e(message, offset), schema, extensionRegistry);
    }

    /* renamed from: l0 */
    public final <E> void m30384l0(Object message, int typeAndOffset, InterfaceC6888y reader, InterfaceC6889z<E> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        reader.mo29961n(this.f38181n.mo30295e(message, m30335X(typeAndOffset)), schema, extensionRegistry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.util.Map, java.util.Map<K, V>] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* renamed from: m */
    public final <K, V> int m30385m(byte[] data, int position, int limit, MapEntryLite.C6795b<K, V> metadata, Map<K, V> target, C6855b.b registers) throws IOException {
        int i;
        int m29844I = C6855b.m29844I(data, position, registers);
        int i2 = registers.f37998a;
        if (i2 < 0 || i2 > limit - m29844I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i3 = m29844I + i2;
        Object obj = metadata.f37716b;
        Object obj2 = metadata.f37718d;
        while (m29844I < i3) {
            int i4 = m29844I + 1;
            byte b = data[m29844I];
            if (b < 0) {
                i = C6855b.m29843H(b, data, i4, registers);
                b = registers.f37998a;
            } else {
                i = i4;
            }
            int i5 = b >>> 3;
            int i6 = b & 7;
            if (i5 != 1) {
                if (i5 == 2 && i6 == metadata.f37717c.getWireType()) {
                    m29844I = m30387n(data, i, limit, metadata.f37717c, metadata.f37718d.getClass(), registers);
                    obj2 = registers.f38000c;
                }
                m29844I = C6855b.m29851P(b, data, i, limit, registers);
            } else if (i6 == metadata.f37715a.getWireType()) {
                m29844I = m30387n(data, i, limit, metadata.f37715a, null, registers);
                obj = registers.f38000c;
            } else {
                m29844I = C6855b.m29851P(b, data, i, limit, registers);
            }
        }
        if (m29844I != i3) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        target.put(obj, obj2);
        return i3;
    }

    /* renamed from: m0 */
    public final void m30386m0(Object message, int typeAndOffset, InterfaceC6888y reader) throws IOException {
        if (m30326A(typeAndOffset)) {
            dun.m53775t0(message, m30335X(typeAndOffset), reader.mo29931T());
        } else if (this.f38174g) {
            dun.m53775t0(message, m30335X(typeAndOffset), reader.mo29975v());
        } else {
            dun.m53775t0(message, m30335X(typeAndOffset), reader.mo29913B());
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* renamed from: n */
    public final int m30387n(byte[] data, int position, int limit, WireFormat.FieldType fieldType, Class<?> messageType, C6855b.b registers) throws IOException {
        switch (a.f38185a[fieldType.ordinal()]) {
            case 1:
                int m29847L = C6855b.m29847L(data, position, registers);
                registers.f38000c = Boolean.valueOf(registers.f37999b != 0);
                return m29847L;
            case 2:
                return C6855b.m29853b(data, position, registers);
            case 3:
                registers.f38000c = Double.valueOf(C6855b.m29855d(data, position));
                return position + 8;
            case 4:
            case 5:
                registers.f38000c = Integer.valueOf(C6855b.m29859h(data, position));
                return position + 4;
            case 6:
            case 7:
                registers.f38000c = Long.valueOf(C6855b.m29861j(data, position));
                return position + 8;
            case 8:
                registers.f38000c = Float.valueOf(C6855b.m29863l(data, position));
                return position + 4;
            case 9:
            case 10:
            case 11:
                int m29844I = C6855b.m29844I(data, position, registers);
                registers.f38000c = Integer.valueOf(registers.f37998a);
                return m29844I;
            case 12:
            case 13:
                int m29847L2 = C6855b.m29847L(data, position, registers);
                registers.f38000c = Long.valueOf(registers.f37999b);
                return m29847L2;
            case 14:
                return C6855b.m29867p(d9l.m53616a().m53624i(messageType), data, position, limit, registers);
            case 15:
                int m29844I2 = C6855b.m29844I(data, position, registers);
                registers.f38000c = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.f37998a));
                return m29844I2;
            case 16:
                int m29847L3 = C6855b.m29847L(data, position, registers);
                registers.f38000c = Long.valueOf(CodedInputStream.decodeZigZag64(registers.f37999b));
                return m29847L3;
            case 17:
                return C6855b.m29841F(data, position, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* renamed from: n0 */
    public final void m30388n0(Object message, int typeAndOffset, InterfaceC6888y reader) throws IOException {
        if (m30326A(typeAndOffset)) {
            reader.mo29967q(this.f38181n.mo30295e(message, m30335X(typeAndOffset)));
        } else {
            reader.mo29918G(this.f38181n.mo30295e(message, m30335X(typeAndOffset)));
        }
    }

    @Override // com.google.protobuf.InterfaceC6889z
    public T newInstance() {
        return (T) this.f38180m.mo30411a(this.f38172e);
    }

    /* renamed from: p */
    public final boolean m30389p(T message, T other, int pos) {
        int m30400w0 = m30400w0(pos);
        long m30335X = m30335X(m30400w0);
        switch (m30347v0(m30400w0)) {
            case 0:
                return m30381j(message, other, pos) && Double.doubleToLongBits(dun.m53715F(message, m30335X)) == Double.doubleToLongBits(dun.m53715F(other, m30335X));
            case 1:
                return m30381j(message, other, pos) && Float.floatToIntBits(dun.m53717H(message, m30335X)) == Float.floatToIntBits(dun.m53717H(other, m30335X));
            case 2:
                return m30381j(message, other, pos) && dun.m53723N(message, m30335X) == dun.m53723N(other, m30335X);
            case 3:
                return m30381j(message, other, pos) && dun.m53723N(message, m30335X) == dun.m53723N(other, m30335X);
            case 4:
                return m30381j(message, other, pos) && dun.m53720K(message, m30335X) == dun.m53720K(other, m30335X);
            case 5:
                return m30381j(message, other, pos) && dun.m53723N(message, m30335X) == dun.m53723N(other, m30335X);
            case 6:
                return m30381j(message, other, pos) && dun.m53720K(message, m30335X) == dun.m53720K(other, m30335X);
            case 7:
                return m30381j(message, other, pos) && dun.m53780w(message, m30335X) == dun.m53780w(other, m30335X);
            case 8:
                return m30381j(message, other, pos) && C6854a0.m29769L(dun.m53726Q(message, m30335X), dun.m53726Q(other, m30335X));
            case 9:
                return m30381j(message, other, pos) && C6854a0.m29769L(dun.m53726Q(message, m30335X), dun.m53726Q(other, m30335X));
            case 10:
                return m30381j(message, other, pos) && C6854a0.m29769L(dun.m53726Q(message, m30335X), dun.m53726Q(other, m30335X));
            case 11:
                return m30381j(message, other, pos) && dun.m53720K(message, m30335X) == dun.m53720K(other, m30335X);
            case 12:
                return m30381j(message, other, pos) && dun.m53720K(message, m30335X) == dun.m53720K(other, m30335X);
            case 13:
                return m30381j(message, other, pos) && dun.m53720K(message, m30335X) == dun.m53720K(other, m30335X);
            case 14:
                return m30381j(message, other, pos) && dun.m53723N(message, m30335X) == dun.m53723N(other, m30335X);
            case 15:
                return m30381j(message, other, pos) && dun.m53720K(message, m30335X) == dun.m53720K(other, m30335X);
            case 16:
                return m30381j(message, other, pos) && dun.m53723N(message, m30335X) == dun.m53723N(other, m30335X);
            case 17:
                return m30381j(message, other, pos) && C6854a0.m29769L(dun.m53726Q(message, m30335X), dun.m53726Q(other, m30335X));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return C6854a0.m29769L(dun.m53726Q(message, m30335X), dun.m53726Q(other, m30335X));
            case 50:
                return C6854a0.m29769L(dun.m53726Q(message, m30335X), dun.m53726Q(other, m30335X));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return m30356I(message, other, pos) && C6854a0.m29769L(dun.m53726Q(message, m30335X), dun.m53726Q(other, m30335X));
            default:
                return true;
        }
    }

    /* renamed from: p0 */
    public final void m30390p0(T message, int pos) {
        int m30382j0 = m30382j0(pos);
        long j = 1048575 & m30382j0;
        if (j == 1048575) {
            return;
        }
        dun.m53765o0(message, j, (1 << (m30382j0 >>> 20)) | dun.m53720K(message, j));
    }

    /* renamed from: q */
    public final <UT, UB> UB m30391q(Object obj, int i, UB ub, AbstractC6858c0<UT, UB> abstractC6858c0, Object obj2) {
        Internal.EnumVerifier m30395t;
        int m30365W = m30365W(i);
        Object m53726Q = dun.m53726Q(obj, m30335X(m30400w0(i)));
        return (m53726Q == null || (m30395t = m30395t(i)) == null) ? ub : (UB) m30393r(i, m30365W, this.f38184q.mo30311d(m53726Q), m30395t, ub, abstractC6858c0, obj2);
    }

    /* renamed from: q0 */
    public final void m30392q0(T message, int fieldNumber, int pos) {
        dun.m53765o0(message, m30382j0(pos) & 1048575, fieldNumber);
    }

    /* renamed from: r */
    public final <K, V, UT, UB> UB m30393r(int i, int i2, Map<K, V> map, Internal.EnumVerifier enumVerifier, UB ub, AbstractC6858c0<UT, UB> abstractC6858c0, Object obj) {
        MapEntryLite.C6795b<?, ?> mo30309b = this.f38184q.mo30309b(m30397u(i));
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = abstractC6858c0.mo29985f(obj);
                }
                ByteString.C6651f newCodedBuilder = ByteString.newCodedBuilder(MapEntryLite.m29391a(mo30309b, next.getKey(), next.getValue()));
                try {
                    MapEntryLite.m29394e(newCodedBuilder.m28632b(), mo30309b, next.getKey(), next.getValue());
                    abstractC6858c0.mo29983d(ub, i2, newCodedBuilder.m28631a());
                    it2.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* renamed from: r0 */
    public final int m30394r0(final int number, int min) {
        int length = (this.f38168a.length / 3) - 1;
        while (min <= length) {
            int i = (length + min) >>> 1;
            int i2 = i * 3;
            int m30365W = m30365W(i2);
            if (number == m30365W) {
                return i2;
            }
            if (number < m30365W) {
                length = i - 1;
            } else {
                min = i + 1;
            }
        }
        return -1;
    }

    /* renamed from: t */
    public final Internal.EnumVerifier m30395t(int pos) {
        return (Internal.EnumVerifier) this.f38169b[((pos / 3) * 2) + 1];
    }

    /* renamed from: t0 */
    public final void m30396t0(T message, int pos, Object field) {
        f38158G.putObject(message, m30335X(m30400w0(pos)), field);
        m30390p0(message, pos);
    }

    /* renamed from: u */
    public final Object m30397u(int pos) {
        return this.f38169b[(pos / 3) * 2];
    }

    /* renamed from: u0 */
    public final void m30398u0(T message, int fieldNumber, int pos, Object field) {
        f38158G.putObject(message, m30335X(m30400w0(pos)), field);
        m30392q0(message, fieldNumber, pos);
    }

    /* renamed from: v */
    public final InterfaceC6889z m30399v(int pos) {
        int i = (pos / 3) * 2;
        InterfaceC6889z interfaceC6889z = (InterfaceC6889z) this.f38169b[i];
        if (interfaceC6889z != null) {
            return interfaceC6889z;
        }
        InterfaceC6889z<T> m53624i = d9l.m53616a().m53624i((Class) this.f38169b[i + 1]);
        this.f38169b[i] = m53624i;
        return m53624i;
    }

    /* renamed from: w0 */
    public final int m30400w0(int pos) {
        return this.f38168a[pos + 1];
    }

    /* renamed from: x */
    public int m30401x() {
        return this.f38168a.length * 3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x0094. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /* renamed from: x0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30402x0(T r22, com.google.protobuf.Writer r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C6884u.m30402x0(java.lang.Object, com.google.protobuf.Writer):void");
    }

    /* renamed from: y */
    public final <UT, UB> int m30403y(AbstractC6858c0<UT, UB> schema, T message) {
        return schema.mo29987h(schema.mo29986g(message));
    }

    /* JADX WARN: Removed duplicated region for block: B:275:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* renamed from: y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30404y0(T r11, com.google.protobuf.Writer r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C6884u.m30404y0(java.lang.Object, com.google.protobuf.Writer):void");
    }

    /* renamed from: z0 */
    public final <K, V> void m30405z0(Writer writer, int number, Object mapField, int pos) throws IOException {
        if (mapField != null) {
            writer.mo29746t(number, this.f38184q.mo30309b(m30397u(pos)), this.f38184q.mo30313f(mapField));
        }
    }
}
