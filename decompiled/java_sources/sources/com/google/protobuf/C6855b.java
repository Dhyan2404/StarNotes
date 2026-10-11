package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.WireFormat;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;

@htd
/* renamed from: com.google.protobuf.b */
/* loaded from: classes6.dex */
public final class C6855b {

    /* renamed from: com.google.protobuf.b$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37997a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f37997a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37997a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37997a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37997a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37997a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37997a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f37997a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f37997a[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f37997a[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f37997a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f37997a[WireFormat.FieldType.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f37997a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f37997a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f37997a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f37997a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f37997a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f37997a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f37997a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: A */
    public static int m29836A(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6877n c6877n = (C6877n) list;
        int m29844I = m29844I(data, position, registers);
        c6877n.addInt(CodedInputStream.decodeZigZag32(registers.f37998a));
        while (m29844I < limit) {
            int m29844I2 = m29844I(data, m29844I, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29844I = m29844I(data, m29844I2, registers);
            c6877n.addInt(CodedInputStream.decodeZigZag32(registers.f37998a));
        }
        return m29844I;
    }

    /* renamed from: B */
    public static int m29837B(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6879p c6879p = (C6879p) list;
        int m29847L = m29847L(data, position, registers);
        c6879p.addLong(CodedInputStream.decodeZigZag64(registers.f37999b));
        while (m29847L < limit) {
            int m29844I = m29844I(data, m29847L, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29847L = m29847L(data, m29844I, registers);
            c6879p.addLong(CodedInputStream.decodeZigZag64(registers.f37999b));
        }
        return m29847L;
    }

    /* renamed from: C */
    public static int m29838C(byte[] data, int position, b registers) throws InvalidProtocolBufferException {
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a;
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i == 0) {
            registers.f38000c = "";
            return m29844I;
        }
        registers.f38000c = new String(data, m29844I, i, Internal.f37667b);
        return m29844I + i;
    }

    /* renamed from: D */
    public static int m29839D(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) throws InvalidProtocolBufferException {
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a;
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i == 0) {
            list.add("");
        } else {
            list.add(new String(data, m29844I, i, Internal.f37667b));
            m29844I += i;
        }
        while (m29844I < limit) {
            int m29844I2 = m29844I(data, m29844I, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29844I = m29844I(data, m29844I2, registers);
            int i2 = registers.f37998a;
            if (i2 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i2 == 0) {
                list.add("");
            } else {
                list.add(new String(data, m29844I, i2, Internal.f37667b));
                m29844I += i2;
            }
        }
        return m29844I;
    }

    /* renamed from: E */
    public static int m29840E(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) throws InvalidProtocolBufferException {
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a;
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i == 0) {
            list.add("");
        } else {
            int i2 = m29844I + i;
            if (!Utf8.m29672u(data, m29844I, i2)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            list.add(new String(data, m29844I, i, Internal.f37667b));
            m29844I = i2;
        }
        while (m29844I < limit) {
            int m29844I2 = m29844I(data, m29844I, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29844I = m29844I(data, m29844I2, registers);
            int i3 = registers.f37998a;
            if (i3 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i3 == 0) {
                list.add("");
            } else {
                int i4 = m29844I + i3;
                if (!Utf8.m29672u(data, m29844I, i4)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
                list.add(new String(data, m29844I, i3, Internal.f37667b));
                m29844I = i4;
            }
        }
        return m29844I;
    }

    /* renamed from: F */
    public static int m29841F(byte[] data, int position, b registers) throws InvalidProtocolBufferException {
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a;
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i == 0) {
            registers.f38000c = "";
            return m29844I;
        }
        registers.f38000c = Utf8.m29659h(data, m29844I, i);
        return m29844I + i;
    }

    /* renamed from: G */
    public static int m29842G(int tag, byte[] data, int position, int limit, UnknownFieldSetLite unknownFields, b registers) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(tag) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            int m29847L = m29847L(data, position, registers);
            unknownFields.m29644n(tag, Long.valueOf(registers.f37999b));
            return m29847L;
        }
        if (tagWireType == 1) {
            unknownFields.m29644n(tag, Long.valueOf(m29861j(data, position)));
            return position + 8;
        }
        if (tagWireType == 2) {
            int m29844I = m29844I(data, position, registers);
            int i = registers.f37998a;
            if (i < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i > data.length - m29844I) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i == 0) {
                unknownFields.m29644n(tag, ByteString.EMPTY);
            } else {
                unknownFields.m29644n(tag, ByteString.copyFrom(data, m29844I, i));
            }
            return m29844I + i;
        }
        if (tagWireType != 3) {
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            unknownFields.m29644n(tag, Integer.valueOf(m29859h(data, position)));
            return position + 4;
        }
        UnknownFieldSetLite m29632k = UnknownFieldSetLite.m29632k();
        int i2 = (tag & (-8)) | 4;
        int i3 = 0;
        while (true) {
            if (position >= limit) {
                break;
            }
            int m29844I2 = m29844I(data, position, registers);
            int i4 = registers.f37998a;
            if (i4 == i2) {
                i3 = i4;
                position = m29844I2;
                break;
            }
            i3 = i4;
            position = m29842G(i4, data, m29844I2, limit, m29632k, registers);
        }
        if (position > limit || i3 != i2) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        unknownFields.m29644n(tag, m29632k);
        return position;
    }

    /* renamed from: H */
    public static int m29843H(int firstByte, byte[] data, int position, b registers) {
        int i = firstByte & 127;
        int i2 = position + 1;
        byte b2 = data[position];
        if (b2 >= 0) {
            registers.f37998a = i | (b2 << 7);
            return i2;
        }
        int i3 = i | ((b2 & Byte.MAX_VALUE) << 7);
        int i4 = i2 + 1;
        byte b3 = data[i2];
        if (b3 >= 0) {
            registers.f37998a = i3 | (b3 << 14);
            return i4;
        }
        int i5 = i3 | ((b3 & Byte.MAX_VALUE) << 14);
        int i6 = i4 + 1;
        byte b4 = data[i4];
        if (b4 >= 0) {
            registers.f37998a = i5 | (b4 << 21);
            return i6;
        }
        int i7 = i5 | ((b4 & Byte.MAX_VALUE) << 21);
        int i8 = i6 + 1;
        byte b5 = data[i6];
        if (b5 >= 0) {
            registers.f37998a = i7 | (b5 << 28);
            return i8;
        }
        int i9 = i7 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i10 = i8 + 1;
            if (data[i8] >= 0) {
                registers.f37998a = i9;
                return i10;
            }
            i8 = i10;
        }
    }

    /* renamed from: I */
    public static int m29844I(byte[] data, int position, b registers) {
        int i = position + 1;
        byte b2 = data[position];
        if (b2 < 0) {
            return m29843H(b2, data, i, registers);
        }
        registers.f37998a = b2;
        return i;
    }

    /* renamed from: J */
    public static int m29845J(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6877n c6877n = (C6877n) list;
        int m29844I = m29844I(data, position, registers);
        c6877n.addInt(registers.f37998a);
        while (m29844I < limit) {
            int m29844I2 = m29844I(data, m29844I, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29844I = m29844I(data, m29844I2, registers);
            c6877n.addInt(registers.f37998a);
        }
        return m29844I;
    }

    /* renamed from: K */
    public static int m29846K(long firstByte, byte[] data, int position, b registers) {
        int i = position + 1;
        byte b2 = data[position];
        long j = (firstByte & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i2 = 7;
        while (b2 < 0) {
            int i3 = i + 1;
            byte b3 = data[i];
            i2 += 7;
            j |= (b3 & Byte.MAX_VALUE) << i2;
            i = i3;
            b2 = b3;
        }
        registers.f37999b = j;
        return i;
    }

    /* renamed from: L */
    public static int m29847L(byte[] data, int position, b registers) {
        int i = position + 1;
        long j = data[position];
        if (j < 0) {
            return m29846K(j, data, i, registers);
        }
        registers.f37999b = j;
        return i;
    }

    /* renamed from: M */
    public static int m29848M(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6879p c6879p = (C6879p) list;
        int m29847L = m29847L(data, position, registers);
        c6879p.addLong(registers.f37999b);
        while (m29847L < limit) {
            int m29844I = m29844I(data, m29847L, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29847L = m29847L(data, m29844I, registers);
            c6879p.addLong(registers.f37999b);
        }
        return m29847L;
    }

    /* renamed from: N */
    public static int m29849N(Object msg, InterfaceC6889z schema, byte[] data, int position, int limit, int endGroup, b registers) throws IOException {
        int m30372e0 = ((C6884u) schema).m30372e0(msg, data, position, limit, endGroup, registers);
        registers.f38000c = msg;
        return m30372e0;
    }

    /* renamed from: O */
    public static int m29850O(Object msg, InterfaceC6889z schema, byte[] data, int position, int limit, b registers) throws IOException {
        int i = position + 1;
        int i2 = data[position];
        if (i2 < 0) {
            i = m29843H(i2, data, i, registers);
            i2 = registers.f37998a;
        }
        int i3 = i;
        if (i2 < 0 || i2 > limit - i3) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i4 = i2 + i3;
        schema.mo30373f(msg, data, i3, i4, registers);
        registers.f38000c = msg;
        return i4;
    }

    /* renamed from: P */
    public static int m29851P(int tag, byte[] data, int position, int limit, b registers) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(tag) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            return m29847L(data, position, registers);
        }
        if (tagWireType == 1) {
            return position + 8;
        }
        if (tagWireType == 2) {
            return m29844I(data, position, registers) + registers.f37998a;
        }
        if (tagWireType != 3) {
            if (tagWireType == 5) {
                return position + 4;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }
        int i = (tag & (-8)) | 4;
        int i2 = 0;
        while (position < limit) {
            position = m29844I(data, position, registers);
            i2 = registers.f37998a;
            if (i2 == i) {
                break;
            }
            position = m29851P(i2, data, position, limit, registers);
        }
        if (position > limit || i2 != i) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return position;
    }

    /* renamed from: a */
    public static int m29852a(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6867e c6867e = (C6867e) list;
        int m29847L = m29847L(data, position, registers);
        c6867e.addBoolean(registers.f37999b != 0);
        while (m29847L < limit) {
            int m29844I = m29844I(data, m29847L, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29847L = m29847L(data, m29844I, registers);
            c6867e.addBoolean(registers.f37999b != 0);
        }
        return m29847L;
    }

    /* renamed from: b */
    public static int m29853b(byte[] data, int position, b registers) throws InvalidProtocolBufferException {
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a;
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i > data.length - m29844I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i == 0) {
            registers.f38000c = ByteString.EMPTY;
            return m29844I;
        }
        registers.f38000c = ByteString.copyFrom(data, m29844I, i);
        return m29844I + i;
    }

    /* renamed from: c */
    public static int m29854c(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) throws InvalidProtocolBufferException {
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a;
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i > data.length - m29844I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i == 0) {
            list.add(ByteString.EMPTY);
        } else {
            list.add(ByteString.copyFrom(data, m29844I, i));
            m29844I += i;
        }
        while (m29844I < limit) {
            int m29844I2 = m29844I(data, m29844I, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29844I = m29844I(data, m29844I2, registers);
            int i2 = registers.f37998a;
            if (i2 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i2 > data.length - m29844I) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i2 == 0) {
                list.add(ByteString.EMPTY);
            } else {
                list.add(ByteString.copyFrom(data, m29844I, i2));
                m29844I += i2;
            }
        }
        return m29844I;
    }

    /* renamed from: d */
    public static double m29855d(byte[] data, int position) {
        return Double.longBitsToDouble(m29861j(data, position));
    }

    /* renamed from: e */
    public static int m29856e(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6872i c6872i = (C6872i) list;
        c6872i.addDouble(m29855d(data, position));
        int i = position + 8;
        while (i < limit) {
            int m29844I = m29844I(data, i, registers);
            if (tag != registers.f37998a) {
                break;
            }
            c6872i.addDouble(m29855d(data, m29844I));
            i = m29844I + 8;
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x0122. Please report as an issue. */
    /* renamed from: f */
    public static int m29857f(int tag, byte[] data, int position, int limit, GeneratedMessageLite.ExtendableMessage<?, ?> message, GeneratedMessageLite.GeneratedExtension<?, ?> extension, AbstractC6858c0<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, b registers) throws IOException {
        FieldSet<GeneratedMessageLite.C6763b> fieldSet = message.extensions;
        int i = tag >>> 3;
        if (extension.f37585d.isRepeated() && extension.f37585d.isPacked()) {
            switch (a.f37997a[extension.getLiteType().ordinal()]) {
                case 1:
                    C6872i c6872i = new C6872i();
                    int m29870s = m29870s(data, position, c6872i, registers);
                    fieldSet.m29145P(extension.f37585d, c6872i);
                    return m29870s;
                case 2:
                    C6876m c6876m = new C6876m();
                    int m29873v = m29873v(data, position, c6876m, registers);
                    fieldSet.m29145P(extension.f37585d, c6876m);
                    return m29873v;
                case 3:
                case 4:
                    C6879p c6879p = new C6879p();
                    int m29877z = m29877z(data, position, c6879p, registers);
                    fieldSet.m29145P(extension.f37585d, c6879p);
                    return m29877z;
                case 5:
                case 6:
                    C6877n c6877n = new C6877n();
                    int m29876y = m29876y(data, position, c6877n, registers);
                    fieldSet.m29145P(extension.f37585d, c6877n);
                    return m29876y;
                case 7:
                case 8:
                    C6879p c6879p2 = new C6879p();
                    int m29872u = m29872u(data, position, c6879p2, registers);
                    fieldSet.m29145P(extension.f37585d, c6879p2);
                    return m29872u;
                case 9:
                case 10:
                    C6877n c6877n2 = new C6877n();
                    int m29871t = m29871t(data, position, c6877n2, registers);
                    fieldSet.m29145P(extension.f37585d, c6877n2);
                    return m29871t;
                case 11:
                    C6867e c6867e = new C6867e();
                    int m29869r = m29869r(data, position, c6867e, registers);
                    fieldSet.m29145P(extension.f37585d, c6867e);
                    return m29869r;
                case 12:
                    C6877n c6877n3 = new C6877n();
                    int m29874w = m29874w(data, position, c6877n3, registers);
                    fieldSet.m29145P(extension.f37585d, c6877n3);
                    return m29874w;
                case 13:
                    C6879p c6879p3 = new C6879p();
                    int m29875x = m29875x(data, position, c6879p3, registers);
                    fieldSet.m29145P(extension.f37585d, c6879p3);
                    return m29875x;
                case 14:
                    C6877n c6877n4 = new C6877n();
                    int m29876y2 = m29876y(data, position, c6877n4, registers);
                    C6854a0.m29755B(message, i, c6877n4, extension.f37585d.getEnumType(), null, unknownFieldSchema);
                    fieldSet.m29145P(extension.f37585d, c6877n4);
                    return m29876y2;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + extension.f37585d.getLiteType());
            }
        }
        Object obj = null;
        if (extension.getLiteType() == WireFormat.FieldType.ENUM) {
            position = m29844I(data, position, registers);
            if (extension.f37585d.getEnumType().findValueByNumber(registers.f37998a) == null) {
                C6854a0.m29772O(message, i, registers.f37998a, null, unknownFieldSchema);
                return position;
            }
            obj = Integer.valueOf(registers.f37998a);
        } else {
            switch (a.f37997a[extension.getLiteType().ordinal()]) {
                case 1:
                    obj = Double.valueOf(m29855d(data, position));
                    position += 8;
                    break;
                case 2:
                    obj = Float.valueOf(m29863l(data, position));
                    position += 4;
                    break;
                case 3:
                case 4:
                    position = m29847L(data, position, registers);
                    obj = Long.valueOf(registers.f37999b);
                    break;
                case 5:
                case 6:
                    position = m29844I(data, position, registers);
                    obj = Integer.valueOf(registers.f37998a);
                    break;
                case 7:
                case 8:
                    obj = Long.valueOf(m29861j(data, position));
                    position += 8;
                    break;
                case 9:
                case 10:
                    obj = Integer.valueOf(m29859h(data, position));
                    position += 4;
                    break;
                case 11:
                    position = m29847L(data, position, registers);
                    obj = Boolean.valueOf(registers.f37999b != 0);
                    break;
                case 12:
                    position = m29844I(data, position, registers);
                    obj = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.f37998a));
                    break;
                case 13:
                    position = m29847L(data, position, registers);
                    obj = Long.valueOf(CodedInputStream.decodeZigZag64(registers.f37999b));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    position = m29853b(data, position, registers);
                    obj = registers.f38000c;
                    break;
                case 16:
                    position = m29838C(data, position, registers);
                    obj = registers.f38000c;
                    break;
                case 17:
                    int i2 = (i << 3) | 4;
                    InterfaceC6889z m53624i = d9l.m53616a().m53624i(extension.getMessageDefaultInstance().getClass());
                    if (extension.isRepeated()) {
                        int m29865n = m29865n(m53624i, data, position, limit, i2, registers);
                        fieldSet.m29151h(extension.f37585d, registers.f38000c);
                        return m29865n;
                    }
                    Object m29157u = fieldSet.m29157u(extension.f37585d);
                    if (m29157u == null) {
                        m29157u = m53624i.newInstance();
                        fieldSet.m29145P(extension.f37585d, m29157u);
                    }
                    return m29849N(m29157u, m53624i, data, position, limit, i2, registers);
                case 18:
                    InterfaceC6889z m53624i2 = d9l.m53616a().m53624i(extension.getMessageDefaultInstance().getClass());
                    if (extension.isRepeated()) {
                        int m29867p = m29867p(m53624i2, data, position, limit, registers);
                        fieldSet.m29151h(extension.f37585d, registers.f38000c);
                        return m29867p;
                    }
                    Object m29157u2 = fieldSet.m29157u(extension.f37585d);
                    if (m29157u2 == null) {
                        m29157u2 = m53624i2.newInstance();
                        fieldSet.m29145P(extension.f37585d, m29157u2);
                    }
                    return m29850O(m29157u2, m53624i2, data, position, limit, registers);
            }
        }
        if (extension.isRepeated()) {
            fieldSet.m29151h(extension.f37585d, obj);
        } else {
            fieldSet.m29145P(extension.f37585d, obj);
        }
        return position;
    }

    /* renamed from: g */
    public static int m29858g(int tag, byte[] data, int position, int limit, Object message, MessageLite defaultInstance, AbstractC6858c0<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, b registers) throws IOException {
        GeneratedMessageLite.GeneratedExtension findLiteExtensionByNumber = registers.f38001d.findLiteExtensionByNumber(defaultInstance, tag >>> 3);
        if (findLiteExtensionByNumber == null) {
            return m29842G(tag, data, position, limit, C6884u.m30348w(message), registers);
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) message;
        extendableMessage.m29267x();
        return m29857f(tag, data, position, limit, extendableMessage, findLiteExtensionByNumber, unknownFieldSchema, registers);
    }

    /* renamed from: h */
    public static int m29859h(byte[] data, int position) {
        return ((data[position + 3] & 255) << 24) | (data[position] & 255) | ((data[position + 1] & 255) << 8) | ((data[position + 2] & 255) << 16);
    }

    /* renamed from: i */
    public static int m29860i(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6877n c6877n = (C6877n) list;
        c6877n.addInt(m29859h(data, position));
        int i = position + 4;
        while (i < limit) {
            int m29844I = m29844I(data, i, registers);
            if (tag != registers.f37998a) {
                break;
            }
            c6877n.addInt(m29859h(data, m29844I));
            i = m29844I + 4;
        }
        return i;
    }

    /* renamed from: j */
    public static long m29861j(byte[] data, int position) {
        return ((data[position + 7] & 255) << 56) | (data[position] & 255) | ((data[position + 1] & 255) << 8) | ((data[position + 2] & 255) << 16) | ((data[position + 3] & 255) << 24) | ((data[position + 4] & 255) << 32) | ((data[position + 5] & 255) << 40) | ((data[position + 6] & 255) << 48);
    }

    /* renamed from: k */
    public static int m29862k(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6879p c6879p = (C6879p) list;
        c6879p.addLong(m29861j(data, position));
        int i = position + 8;
        while (i < limit) {
            int m29844I = m29844I(data, i, registers);
            if (tag != registers.f37998a) {
                break;
            }
            c6879p.addLong(m29861j(data, m29844I));
            i = m29844I + 8;
        }
        return i;
    }

    /* renamed from: l */
    public static float m29863l(byte[] data, int position) {
        return Float.intBitsToFloat(m29859h(data, position));
    }

    /* renamed from: m */
    public static int m29864m(int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) {
        C6876m c6876m = (C6876m) list;
        c6876m.addFloat(m29863l(data, position));
        int i = position + 4;
        while (i < limit) {
            int m29844I = m29844I(data, i, registers);
            if (tag != registers.f37998a) {
                break;
            }
            c6876m.addFloat(m29863l(data, m29844I));
            i = m29844I + 4;
        }
        return i;
    }

    /* renamed from: n */
    public static int m29865n(InterfaceC6889z schema, byte[] data, int position, int limit, int endGroup, b registers) throws IOException {
        Object newInstance = schema.newInstance();
        int m29849N = m29849N(newInstance, schema, data, position, limit, endGroup, registers);
        schema.mo30375g(newInstance);
        registers.f38000c = newInstance;
        return m29849N;
    }

    /* renamed from: o */
    public static int m29866o(InterfaceC6889z schema, int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) throws IOException {
        int i = (tag & (-8)) | 4;
        int m29865n = m29865n(schema, data, position, limit, i, registers);
        list.add(registers.f38000c);
        while (m29865n < limit) {
            int m29844I = m29844I(data, m29865n, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29865n = m29865n(schema, data, m29844I, limit, i, registers);
            list.add(registers.f38000c);
        }
        return m29865n;
    }

    /* renamed from: p */
    public static int m29867p(InterfaceC6889z schema, byte[] data, int position, int limit, b registers) throws IOException {
        Object newInstance = schema.newInstance();
        int m29850O = m29850O(newInstance, schema, data, position, limit, registers);
        schema.mo30375g(newInstance);
        registers.f38000c = newInstance;
        return m29850O;
    }

    /* renamed from: q */
    public static int m29868q(InterfaceC6889z<?> schema, int tag, byte[] data, int position, int limit, Internal.ProtobufList<?> list, b registers) throws IOException {
        int m29867p = m29867p(schema, data, position, limit, registers);
        list.add(registers.f38000c);
        while (m29867p < limit) {
            int m29844I = m29844I(data, m29867p, registers);
            if (tag != registers.f37998a) {
                break;
            }
            m29867p = m29867p(schema, data, m29844I, limit, registers);
            list.add(registers.f38000c);
        }
        return m29867p;
    }

    /* renamed from: r */
    public static int m29869r(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6867e c6867e = (C6867e) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            m29844I = m29847L(data, m29844I, registers);
            c6867e.addBoolean(registers.f37999b != 0);
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: s */
    public static int m29870s(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6872i c6872i = (C6872i) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            c6872i.addDouble(m29855d(data, m29844I));
            m29844I += 8;
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: t */
    public static int m29871t(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6877n c6877n = (C6877n) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            c6877n.addInt(m29859h(data, m29844I));
            m29844I += 4;
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: u */
    public static int m29872u(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6879p c6879p = (C6879p) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            c6879p.addLong(m29861j(data, m29844I));
            m29844I += 8;
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: v */
    public static int m29873v(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6876m c6876m = (C6876m) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            c6876m.addFloat(m29863l(data, m29844I));
            m29844I += 4;
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: w */
    public static int m29874w(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6877n c6877n = (C6877n) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            m29844I = m29844I(data, m29844I, registers);
            c6877n.addInt(CodedInputStream.decodeZigZag32(registers.f37998a));
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: x */
    public static int m29875x(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6879p c6879p = (C6879p) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            m29844I = m29847L(data, m29844I, registers);
            c6879p.addLong(CodedInputStream.decodeZigZag64(registers.f37999b));
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: y */
    public static int m29876y(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6877n c6877n = (C6877n) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            m29844I = m29844I(data, m29844I, registers);
            c6877n.addInt(registers.f37998a);
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: z */
    public static int m29877z(byte[] data, int position, Internal.ProtobufList<?> list, b registers) throws IOException {
        C6879p c6879p = (C6879p) list;
        int m29844I = m29844I(data, position, registers);
        int i = registers.f37998a + m29844I;
        while (m29844I < i) {
            m29844I = m29847L(data, m29844I, registers);
            c6879p.addLong(registers.f37999b);
        }
        if (m29844I == i) {
            return m29844I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* renamed from: com.google.protobuf.b$b */
    /* loaded from: classes6.dex */
    public static final class b {

        /* renamed from: a */
        public int f37998a;

        /* renamed from: b */
        public long f37999b;

        /* renamed from: c */
        public Object f38000c;

        /* renamed from: d */
        public final ExtensionRegistryLite f38001d;

        public b() {
            this.f38001d = ExtensionRegistryLite.getEmptyRegistry();
        }

        public b(ExtensionRegistryLite extensionRegistry) {
            extensionRegistry.getClass();
            this.f38001d = extensionRegistry;
        }
    }
}
