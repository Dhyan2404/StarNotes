package com.google.protobuf;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.WireFormat;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

@htd
/* renamed from: com.google.protobuf.c */
/* loaded from: classes6.dex */
public abstract class AbstractC6857c implements InterfaceC6888y {

    /* renamed from: c */
    public static final int f38023c = 3;

    /* renamed from: d */
    public static final int f38024d = 7;

    /* renamed from: com.google.protobuf.c$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38025a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f38025a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38025a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38025a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38025a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38025a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38025a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38025a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38025a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38025a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38025a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38025a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38025a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38025a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f38025a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f38025a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f38025a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38025a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* renamed from: com.google.protobuf.c$b */
    /* loaded from: classes6.dex */
    public static final class b extends AbstractC6857c {

        /* renamed from: e */
        public final boolean f38026e;

        /* renamed from: f */
        public final byte[] f38027f;

        /* renamed from: g */
        public int f38028g;

        /* renamed from: h */
        public final int f38029h;

        /* renamed from: i */
        public int f38030i;

        /* renamed from: j */
        public int f38031j;

        /* renamed from: k */
        public int f38032k;

        public b(ByteBuffer bytebuf, boolean bufferIsImmutable) {
            super(null);
            this.f38026e = bufferIsImmutable;
            this.f38027f = bytebuf.array();
            int arrayOffset = bytebuf.arrayOffset() + bytebuf.position();
            this.f38028g = arrayOffset;
            this.f38029h = arrayOffset;
            this.f38030i = bytebuf.arrayOffset() + bytebuf.limit();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: A */
        public <K, V> void mo29912A(Map<K, V> target, MapEntryLite.C6795b<K, V> metadata, ExtensionRegistryLite extensionRegistry) throws IOException {
            m29960m0(2);
            int m29951h0 = m29951h0();
            m29956k0(m29951h0);
            int i = this.f38030i;
            this.f38030i = this.f38028g + m29951h0;
            try {
                Object obj = metadata.f37716b;
                Object obj2 = metadata.f37718d;
                while (true) {
                    int mo29917F = mo29917F();
                    if (mo29917F == Integer.MAX_VALUE) {
                        target.put(obj, obj2);
                        return;
                    }
                    if (mo29917F == 1) {
                        obj = m29934Y(metadata.f37715a, null, null);
                    } else if (mo29917F != 2) {
                        try {
                            if (!mo29955k()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                            if (!mo29955k()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        }
                    } else {
                        obj2 = m29934Y(metadata.f37717c, metadata.f37718d.getClass(), extensionRegistry);
                    }
                }
            } finally {
                this.f38030i = i;
            }
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: B */
        public ByteString mo29913B() throws IOException {
            m29960m0(2);
            int m29951h0 = m29951h0();
            if (m29951h0 == 0) {
                return ByteString.EMPTY;
            }
            m29956k0(m29951h0);
            ByteString wrap = this.f38026e ? ByteString.wrap(this.f38027f, this.f38028g, m29951h0) : ByteString.copyFrom(this.f38027f, this.f38028g, m29951h0);
            this.f38028g += m29951h0;
            return wrap;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: C */
        public long mo29914C() throws IOException {
            m29960m0(0);
            return m29953i0();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: D */
        public <T> void mo29915D(T target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
            int i = this.f38032k;
            this.f38032k = WireFormat.m29722a(WireFormat.getTagFieldNumber(this.f38031j), 4);
            try {
                schema.mo30379i(target, this, extensionRegistry);
                if (this.f38031j == this.f38032k) {
                } else {
                    throw InvalidProtocolBufferException.parseFailure();
                }
            } finally {
                this.f38032k = i;
            }
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: E */
        public void mo29916E(List<Integer> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6877n)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType == 2) {
                    int m29951h0 = m29951h0();
                    m29970r0(m29951h0);
                    int i3 = this.f38028g + m29951h0;
                    while (this.f38028g < i3) {
                        target.add(Integer.valueOf(m29939b0()));
                    }
                    return;
                }
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    target.add(Integer.valueOf(mo29974u()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6877n c6877n = (C6877n) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 == 2) {
                int m29951h02 = m29951h0();
                m29970r0(m29951h02);
                int i4 = this.f38028g + m29951h02;
                while (this.f38028g < i4) {
                    c6877n.addInt(m29939b0());
                }
                return;
            }
            if (tagWireType2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                c6877n.addInt(mo29974u());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: F */
        public int mo29917F() throws IOException {
            if (m29932W()) {
                return Integer.MAX_VALUE;
            }
            int m29951h0 = m29951h0();
            this.f38031j = m29951h0;
            if (m29951h0 == this.f38032k) {
                return Integer.MAX_VALUE;
            }
            return WireFormat.getTagFieldNumber(m29951h0);
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: G */
        public void mo29918G(List<String> target) throws IOException {
            m29949g0(target, false);
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: H */
        public void mo29919H(List<Float> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6876m)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType == 2) {
                    int m29951h0 = m29951h0();
                    m29970r0(m29951h0);
                    int i3 = this.f38028g + m29951h0;
                    while (this.f38028g < i3) {
                        target.add(Float.valueOf(Float.intBitsToFloat(m29939b0())));
                    }
                    return;
                }
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    target.add(Float.valueOf(readFloat()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6876m c6876m = (C6876m) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 == 2) {
                int m29951h02 = m29951h0();
                m29970r0(m29951h02);
                int i4 = this.f38028g + m29951h02;
                while (this.f38028g < i4) {
                    c6876m.addFloat(Float.intBitsToFloat(m29939b0()));
                }
                return;
            }
            if (tagWireType2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                c6876m.addFloat(readFloat());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: I */
        public void mo29920I(List<ByteString> target) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.f38031j) != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                target.add(mo29913B());
                if (m29932W()) {
                    return;
                } else {
                    i = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: J */
        public void mo29921J(List<Double> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6872i)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 1) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = m29951h0();
                    m29972s0(m29951h0);
                    int i3 = this.f38028g + m29951h0;
                    while (this.f38028g < i3) {
                        target.add(Double.valueOf(Double.longBitsToDouble(m29943d0())));
                    }
                    return;
                }
                do {
                    target.add(Double.valueOf(readDouble()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6872i c6872i = (C6872i) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 1) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = m29951h0();
                m29972s0(m29951h02);
                int i4 = this.f38028g + m29951h02;
                while (this.f38028g < i4) {
                    c6872i.addDouble(Double.longBitsToDouble(m29943d0()));
                }
                return;
            }
            do {
                c6872i.addDouble(readDouble());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: K */
        public long mo29922K() throws IOException {
            m29960m0(1);
            return m29941c0();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: L */
        public void mo29923L(List<Integer> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6877n)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType == 2) {
                    int m29951h0 = m29951h0();
                    m29970r0(m29951h0);
                    int i3 = this.f38028g + m29951h0;
                    while (this.f38028g < i3) {
                        target.add(Integer.valueOf(m29939b0()));
                    }
                    return;
                }
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    target.add(Integer.valueOf(mo29930S()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6877n c6877n = (C6877n) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 == 2) {
                int m29951h02 = m29951h0();
                m29970r0(m29951h02);
                int i4 = this.f38028g + m29951h02;
                while (this.f38028g < i4) {
                    c6877n.addInt(m29939b0());
                }
                return;
            }
            if (tagWireType2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                c6877n.addInt(mo29930S());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.InterfaceC6888y
        @Deprecated
        /* renamed from: M */
        public <T> void mo29924M(List<T> target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.f38031j) != 3) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i2 = this.f38031j;
            do {
                target.add(m29935Z(schema, extensionRegistry));
                if (m29932W()) {
                    return;
                } else {
                    i = this.f38028g;
                }
            } while (m29951h0() == i2);
            this.f38028g = i;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: N */
        public void mo29925N(List<Long> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6879p)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = this.f38028g + m29951h0();
                    while (this.f38028g < m29951h0) {
                        target.add(Long.valueOf(m29953i0()));
                    }
                    m29958l0(m29951h0);
                    return;
                }
                do {
                    target.add(Long.valueOf(mo29957l()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6879p c6879p = (C6879p) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = this.f38028g + m29951h0();
                while (this.f38028g < m29951h02) {
                    c6879p.addLong(m29953i0());
                }
                m29958l0(m29951h02);
                return;
            }
            do {
                c6879p.addLong(mo29957l());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: O */
        public void mo29926O(List<Integer> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6877n)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = this.f38028g + m29951h0();
                    while (this.f38028g < m29951h0) {
                        target.add(Integer.valueOf(m29951h0()));
                    }
                    return;
                }
                do {
                    target.add(Integer.valueOf(mo29938b()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6877n c6877n = (C6877n) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = this.f38028g + m29951h0();
                while (this.f38028g < m29951h02) {
                    c6877n.addInt(m29951h0());
                }
                return;
            }
            do {
                c6877n.addInt(mo29938b());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: P */
        public void mo29927P(List<Integer> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6877n)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = this.f38028g + m29951h0();
                    while (this.f38028g < m29951h0) {
                        target.add(Integer.valueOf(m29951h0()));
                    }
                    return;
                }
                do {
                    target.add(Integer.valueOf(mo29936a()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6877n c6877n = (C6877n) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = this.f38028g + m29951h0();
                while (this.f38028g < m29951h02) {
                    c6877n.addInt(m29951h0());
                }
                return;
            }
            do {
                c6877n.addInt(mo29936a());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        @Deprecated
        /* renamed from: Q */
        public <T> void mo29928Q(List<T> target, Class<T> targetType, ExtensionRegistryLite extensionRegistry) throws IOException {
            mo29924M(target, d9l.m53616a().m53624i(targetType), extensionRegistry);
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: R */
        public long mo29929R() throws IOException {
            m29960m0(0);
            return CodedInputStream.decodeZigZag64(m29953i0());
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: S */
        public int mo29930S() throws IOException {
            m29960m0(5);
            return m29937a0();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: T */
        public String mo29931T() throws IOException {
            return m29947f0(true);
        }

        @Override // com.google.protobuf.AbstractC6857c
        /* renamed from: U */
        public int mo29910U() {
            return this.f38028g - this.f38029h;
        }

        /* renamed from: W */
        public final boolean m29932W() {
            return this.f38028g == this.f38030i;
        }

        /* renamed from: X */
        public final byte m29933X() throws IOException {
            int i = this.f38028g;
            if (i == this.f38030i) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f38027f;
            this.f38028g = i + 1;
            return bArr[i];
        }

        /* renamed from: Y */
        public final Object m29934Y(WireFormat.FieldType fieldType, Class<?> messageType, ExtensionRegistryLite extensionRegistry) throws IOException {
            switch (a.f38025a[fieldType.ordinal()]) {
                case 1:
                    return Boolean.valueOf(mo29959m());
                case 2:
                    return mo29913B();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(mo29938b());
                case 5:
                    return Integer.valueOf(mo29974u());
                case 6:
                    return Long.valueOf(mo29922K());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(mo29969r());
                case 9:
                    return Long.valueOf(mo29957l());
                case 10:
                    return mo29973t(messageType, extensionRegistry);
                case 11:
                    return Integer.valueOf(mo29930S());
                case 12:
                    return Long.valueOf(mo29978y());
                case 13:
                    return Integer.valueOf(mo29979z());
                case 14:
                    return Long.valueOf(mo29929R());
                case 15:
                    return mo29931T();
                case 16:
                    return Integer.valueOf(mo29936a());
                case 17:
                    return Long.valueOf(mo29914C());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        /* renamed from: Z */
        public final <T> T m29935Z(InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
            T newInstance = schema.newInstance();
            mo29915D(newInstance, schema, extensionRegistry);
            schema.mo30375g(newInstance);
            return newInstance;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: a */
        public int mo29936a() throws IOException {
            m29960m0(0);
            return m29951h0();
        }

        /* renamed from: a0 */
        public final int m29937a0() throws IOException {
            m29956k0(4);
            return m29939b0();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: b */
        public int mo29938b() throws IOException {
            m29960m0(0);
            return m29951h0();
        }

        /* renamed from: b0 */
        public final int m29939b0() {
            int i = this.f38028g;
            byte[] bArr = this.f38027f;
            this.f38028g = i + 4;
            return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: c */
        public void mo29940c(List<Boolean> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6867e)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = this.f38028g + m29951h0();
                    while (this.f38028g < m29951h0) {
                        target.add(Boolean.valueOf(m29951h0() != 0));
                    }
                    m29958l0(m29951h0);
                    return;
                }
                do {
                    target.add(Boolean.valueOf(mo29959m()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6867e c6867e = (C6867e) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = this.f38028g + m29951h0();
                while (this.f38028g < m29951h02) {
                    c6867e.addBoolean(m29951h0() != 0);
                }
                m29958l0(m29951h02);
                return;
            }
            do {
                c6867e.addBoolean(mo29959m());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        /* renamed from: c0 */
        public final long m29941c0() throws IOException {
            m29956k0(8);
            return m29943d0();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: d */
        public void mo29942d(List<Integer> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6877n)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = this.f38028g + m29951h0();
                    while (this.f38028g < m29951h0) {
                        target.add(Integer.valueOf(CodedInputStream.decodeZigZag32(m29951h0())));
                    }
                    return;
                }
                do {
                    target.add(Integer.valueOf(mo29979z()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6877n c6877n = (C6877n) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = this.f38028g + m29951h0();
                while (this.f38028g < m29951h02) {
                    c6877n.addInt(CodedInputStream.decodeZigZag32(m29951h0()));
                }
                return;
            }
            do {
                c6877n.addInt(mo29979z());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        /* renamed from: d0 */
        public final long m29943d0() {
            int i = this.f38028g;
            byte[] bArr = this.f38027f;
            this.f38028g = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        @Override // com.google.protobuf.InterfaceC6888y
        @Deprecated
        /* renamed from: e */
        public <T> T mo29944e(InterfaceC6889z<T> interfaceC6889z, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            m29960m0(3);
            return (T) m29935Z(interfaceC6889z, extensionRegistryLite);
        }

        /* renamed from: e0 */
        public final <T> T m29945e0(InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
            T newInstance = schema.newInstance();
            mo29952i(newInstance, schema, extensionRegistry);
            schema.mo30375g(newInstance);
            return newInstance;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: f */
        public <T> void mo29946f(List<T> target, Class<T> targetType, ExtensionRegistryLite extensionRegistry) throws IOException {
            mo29961n(target, d9l.m53616a().m53624i(targetType), extensionRegistry);
        }

        /* renamed from: f0 */
        public String m29947f0(boolean requireUtf8) throws IOException {
            m29960m0(2);
            int m29951h0 = m29951h0();
            if (m29951h0 == 0) {
                return "";
            }
            m29956k0(m29951h0);
            if (requireUtf8) {
                byte[] bArr = this.f38027f;
                int i = this.f38028g;
                if (!Utf8.m29672u(bArr, i, i + m29951h0)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            String str = new String(this.f38027f, this.f38028g, m29951h0, Internal.f37667b);
            this.f38028g += m29951h0;
            return str;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: g */
        public void mo29948g(List<Long> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6879p)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 1) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = m29951h0();
                    m29972s0(m29951h0);
                    int i3 = this.f38028g + m29951h0;
                    while (this.f38028g < i3) {
                        target.add(Long.valueOf(m29943d0()));
                    }
                    return;
                }
                do {
                    target.add(Long.valueOf(mo29978y()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6879p c6879p = (C6879p) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 1) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = m29951h0();
                m29972s0(m29951h02);
                int i4 = this.f38028g + m29951h02;
                while (this.f38028g < i4) {
                    c6879p.addLong(m29943d0());
                }
                return;
            }
            do {
                c6879p.addLong(mo29978y());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        /* renamed from: g0 */
        public void m29949g0(List<String> target, boolean requireUtf8) throws IOException {
            int i;
            int i2;
            if (WireFormat.getTagWireType(this.f38031j) != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            if (!(target instanceof LazyStringList) || requireUtf8) {
                do {
                    target.add(m29947f0(requireUtf8));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            LazyStringList lazyStringList = (LazyStringList) target;
            do {
                lazyStringList.add(mo29913B());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        public int getTag() {
            return this.f38031j;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: h */
        public void mo29950h(List<Integer> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6877n)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = this.f38028g + m29951h0();
                    while (this.f38028g < m29951h0) {
                        target.add(Integer.valueOf(m29951h0()));
                    }
                    m29958l0(m29951h0);
                    return;
                }
                do {
                    target.add(Integer.valueOf(mo29969r()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6877n c6877n = (C6877n) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = this.f38028g + m29951h0();
                while (this.f38028g < m29951h02) {
                    c6877n.addInt(m29951h0());
                }
                m29958l0(m29951h02);
                return;
            }
            do {
                c6877n.addInt(mo29969r());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        /* renamed from: h0 */
        public final int m29951h0() throws IOException {
            int i;
            int i2 = this.f38028g;
            int i3 = this.f38030i;
            if (i3 == i2) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f38027f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f38028g = i4;
                return b;
            }
            if (i3 - i4 < 9) {
                return (int) m29954j0();
            }
            int i5 = i4 + 1;
            int i6 = b ^ (bArr[i4] << 7);
            if (i6 < 0) {
                i = i6 ^ (-128);
            } else {
                int i7 = i5 + 1;
                int i8 = i6 ^ (bArr[i5] << 14);
                if (i8 >= 0) {
                    i = i8 ^ 16256;
                } else {
                    i5 = i7 + 1;
                    int i9 = i8 ^ (bArr[i7] << 21);
                    if (i9 < 0) {
                        i = i9 ^ (-2080896);
                    } else {
                        i7 = i5 + 1;
                        byte b2 = bArr[i5];
                        i = (i9 ^ (b2 << 28)) ^ 266354560;
                        if (b2 < 0) {
                            i5 = i7 + 1;
                            if (bArr[i7] < 0) {
                                i7 = i5 + 1;
                                if (bArr[i5] < 0) {
                                    i5 = i7 + 1;
                                    if (bArr[i7] < 0) {
                                        i7 = i5 + 1;
                                        if (bArr[i5] < 0) {
                                            i5 = i7 + 1;
                                            if (bArr[i7] < 0) {
                                                throw InvalidProtocolBufferException.malformedVarint();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i5 = i7;
            }
            this.f38028g = i5;
            return i;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: i */
        public <T> void mo29952i(T target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
            int m29951h0 = m29951h0();
            m29956k0(m29951h0);
            int i = this.f38030i;
            int i2 = this.f38028g + m29951h0;
            this.f38030i = i2;
            try {
                schema.mo30379i(target, this, extensionRegistry);
                if (this.f38028g == i2) {
                } else {
                    throw InvalidProtocolBufferException.parseFailure();
                }
            } finally {
                this.f38030i = i;
            }
        }

        /* renamed from: i0 */
        public long m29953i0() throws IOException {
            long j;
            long j2;
            long j3;
            int i;
            int i2 = this.f38028g;
            int i3 = this.f38030i;
            if (i3 == i2) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f38027f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f38028g = i4;
                return b;
            }
            if (i3 - i4 < 9) {
                return m29954j0();
            }
            int i5 = i4 + 1;
            int i6 = b ^ (bArr[i4] << 7);
            if (i6 >= 0) {
                int i7 = i5 + 1;
                int i8 = i6 ^ (bArr[i5] << 14);
                if (i8 >= 0) {
                    i5 = i7;
                    j = i8 ^ 16256;
                } else {
                    i5 = i7 + 1;
                    int i9 = i8 ^ (bArr[i7] << 21);
                    if (i9 < 0) {
                        i = i9 ^ (-2080896);
                    } else {
                        long j4 = i9;
                        int i10 = i5 + 1;
                        long j5 = j4 ^ (bArr[i5] << 28);
                        if (j5 >= 0) {
                            j3 = 266354560;
                        } else {
                            i5 = i10 + 1;
                            long j6 = j5 ^ (bArr[i10] << 35);
                            if (j6 < 0) {
                                j2 = -34093383808L;
                            } else {
                                i10 = i5 + 1;
                                j5 = j6 ^ (bArr[i5] << 42);
                                if (j5 >= 0) {
                                    j3 = 4363953127296L;
                                } else {
                                    i5 = i10 + 1;
                                    j6 = j5 ^ (bArr[i10] << 49);
                                    if (j6 < 0) {
                                        j2 = -558586000294016L;
                                    } else {
                                        int i11 = i5 + 1;
                                        long j7 = (j6 ^ (bArr[i5] << 56)) ^ 71499008037633920L;
                                        if (j7 < 0) {
                                            i5 = i11 + 1;
                                            if (bArr[i11] < 0) {
                                                throw InvalidProtocolBufferException.malformedVarint();
                                            }
                                        } else {
                                            i5 = i11;
                                        }
                                        j = j7;
                                    }
                                }
                            }
                            j = j6 ^ j2;
                        }
                        j = j5 ^ j3;
                        i5 = i10;
                    }
                }
                this.f38028g = i5;
                return j;
            }
            i = i6 ^ (-128);
            j = i;
            this.f38028g = i5;
            return j;
        }

        /* renamed from: j0 */
        public final long m29954j0() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((m29933X() & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: k */
        public boolean mo29955k() throws IOException {
            int i;
            if (m29932W() || (i = this.f38031j) == this.f38032k) {
                return false;
            }
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                m29966p0();
                return true;
            }
            if (tagWireType == 1) {
                m29962n0(8);
                return true;
            }
            if (tagWireType == 2) {
                m29962n0(m29951h0());
                return true;
            }
            if (tagWireType == 3) {
                m29964o0();
                return true;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            m29962n0(4);
            return true;
        }

        /* renamed from: k0 */
        public final void m29956k0(int size) throws IOException {
            if (size < 0 || size > this.f38030i - this.f38028g) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: l */
        public long mo29957l() throws IOException {
            m29960m0(0);
            return m29953i0();
        }

        /* renamed from: l0 */
        public final void m29958l0(int expectedPosition) throws IOException {
            if (this.f38028g != expectedPosition) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: m */
        public boolean mo29959m() throws IOException {
            m29960m0(0);
            return m29951h0() != 0;
        }

        /* renamed from: m0 */
        public final void m29960m0(int requiredWireType) throws IOException {
            if (WireFormat.getTagWireType(this.f38031j) != requiredWireType) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: n */
        public <T> void mo29961n(List<T> target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.f38031j) != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i2 = this.f38031j;
            do {
                target.add(m29945e0(schema, extensionRegistry));
                if (m29932W()) {
                    return;
                } else {
                    i = this.f38028g;
                }
            } while (m29951h0() == i2);
            this.f38028g = i;
        }

        /* renamed from: n0 */
        public final void m29962n0(final int size) throws IOException {
            m29956k0(size);
            this.f38028g += size;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: o */
        public void mo29963o(List<Long> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6879p)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = this.f38028g + m29951h0();
                    while (this.f38028g < m29951h0) {
                        target.add(Long.valueOf(m29953i0()));
                    }
                    m29958l0(m29951h0);
                    return;
                }
                do {
                    target.add(Long.valueOf(mo29914C()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6879p c6879p = (C6879p) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = this.f38028g + m29951h0();
                while (this.f38028g < m29951h02) {
                    c6879p.addLong(m29953i0());
                }
                m29958l0(m29951h02);
                return;
            }
            do {
                c6879p.addLong(mo29914C());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        /* renamed from: o0 */
        public final void m29964o0() throws IOException {
            int i = this.f38032k;
            this.f38032k = WireFormat.m29722a(WireFormat.getTagFieldNumber(this.f38031j), 4);
            while (mo29917F() != Integer.MAX_VALUE && mo29955k()) {
            }
            if (this.f38031j != this.f38032k) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            this.f38032k = i;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        @Deprecated
        /* renamed from: p */
        public <T> T mo29965p(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            m29960m0(3);
            return (T) m29935Z(d9l.m53616a().m53624i(cls), extensionRegistryLite);
        }

        /* renamed from: p0 */
        public final void m29966p0() throws IOException {
            int i = this.f38030i;
            int i2 = this.f38028g;
            if (i - i2 >= 10) {
                byte[] bArr = this.f38027f;
                int i3 = 0;
                while (i3 < 10) {
                    int i4 = i2 + 1;
                    if (bArr[i2] >= 0) {
                        this.f38028g = i4;
                        return;
                    } else {
                        i3++;
                        i2 = i4;
                    }
                }
            }
            m29968q0();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: q */
        public void mo29967q(List<String> target) throws IOException {
            m29949g0(target, true);
        }

        /* renamed from: q0 */
        public final void m29968q0() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (m29933X() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: r */
        public int mo29969r() throws IOException {
            m29960m0(0);
            return m29951h0();
        }

        /* renamed from: r0 */
        public final void m29970r0(int bytes) throws IOException {
            m29956k0(bytes);
            if ((bytes & 3) != 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        }

        @Override // com.google.protobuf.InterfaceC6888y
        public double readDouble() throws IOException {
            m29960m0(1);
            return Double.longBitsToDouble(m29941c0());
        }

        @Override // com.google.protobuf.InterfaceC6888y
        public float readFloat() throws IOException {
            m29960m0(5);
            return Float.intBitsToFloat(m29937a0());
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: s */
        public void mo29971s(List<Long> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6879p)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 1) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = m29951h0();
                    m29972s0(m29951h0);
                    int i3 = this.f38028g + m29951h0;
                    while (this.f38028g < i3) {
                        target.add(Long.valueOf(m29943d0()));
                    }
                    return;
                }
                do {
                    target.add(Long.valueOf(mo29922K()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6879p c6879p = (C6879p) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 1) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = m29951h0();
                m29972s0(m29951h02);
                int i4 = this.f38028g + m29951h02;
                while (this.f38028g < i4) {
                    c6879p.addLong(m29943d0());
                }
                return;
            }
            do {
                c6879p.addLong(mo29922K());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        /* renamed from: s0 */
        public final void m29972s0(int bytes) throws IOException {
            m29956k0(bytes);
            if ((bytes & 7) != 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: t */
        public <T> T mo29973t(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            m29960m0(2);
            return (T) m29945e0(d9l.m53616a().m53624i(cls), extensionRegistryLite);
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: u */
        public int mo29974u() throws IOException {
            m29960m0(5);
            return m29937a0();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: v */
        public String mo29975v() throws IOException {
            return m29947f0(false);
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: w */
        public <T> T mo29976w(InterfaceC6889z<T> interfaceC6889z, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            m29960m0(2);
            return (T) m29945e0(interfaceC6889z, extensionRegistryLite);
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: x */
        public void mo29977x(List<Long> target) throws IOException {
            int i;
            int i2;
            if (!(target instanceof C6879p)) {
                int tagWireType = WireFormat.getTagWireType(this.f38031j);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m29951h0 = this.f38028g + m29951h0();
                    while (this.f38028g < m29951h0) {
                        target.add(Long.valueOf(CodedInputStream.decodeZigZag64(m29953i0())));
                    }
                    return;
                }
                do {
                    target.add(Long.valueOf(mo29929R()));
                    if (m29932W()) {
                        return;
                    } else {
                        i = this.f38028g;
                    }
                } while (m29951h0() == this.f38031j);
                this.f38028g = i;
                return;
            }
            C6879p c6879p = (C6879p) target;
            int tagWireType2 = WireFormat.getTagWireType(this.f38031j);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m29951h02 = this.f38028g + m29951h0();
                while (this.f38028g < m29951h02) {
                    c6879p.addLong(CodedInputStream.decodeZigZag64(m29953i0()));
                }
                return;
            }
            do {
                c6879p.addLong(mo29929R());
                if (m29932W()) {
                    return;
                } else {
                    i2 = this.f38028g;
                }
            } while (m29951h0() == this.f38031j);
            this.f38028g = i2;
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: y */
        public long mo29978y() throws IOException {
            m29960m0(1);
            return m29941c0();
        }

        @Override // com.google.protobuf.InterfaceC6888y
        /* renamed from: z */
        public int mo29979z() throws IOException {
            m29960m0(0);
            return CodedInputStream.decodeZigZag32(m29951h0());
        }
    }

    public /* synthetic */ AbstractC6857c(a aVar) {
        this();
    }

    /* renamed from: V */
    public static AbstractC6857c m29909V(ByteBuffer buffer, boolean bufferIsImmutable) {
        if (buffer.hasArray()) {
            return new b(buffer, bufferIsImmutable);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }

    /* renamed from: U */
    public abstract int mo29910U();

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: j */
    public boolean mo29911j() {
        return false;
    }

    public AbstractC6857c() {
    }
}
