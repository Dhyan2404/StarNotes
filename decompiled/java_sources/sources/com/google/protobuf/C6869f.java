package com.google.protobuf;

import com.google.protobuf.WireFormat;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.util.List;

@htd
/* renamed from: com.google.protobuf.f */
/* loaded from: classes6.dex */
public final class C6869f implements InterfaceC6888y {

    /* renamed from: g */
    public static final int f38099g = 3;

    /* renamed from: h */
    public static final int f38100h = 7;

    /* renamed from: i */
    public static final int f38101i = 0;

    /* renamed from: c */
    public final CodedInputStream f38102c;

    /* renamed from: d */
    public int f38103d;

    /* renamed from: e */
    public int f38104e;

    /* renamed from: f */
    public int f38105f = 0;

    /* renamed from: com.google.protobuf.f$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38106a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f38106a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38106a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38106a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38106a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38106a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38106a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38106a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38106a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38106a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38106a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38106a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38106a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38106a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f38106a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f38106a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f38106a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38106a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public C6869f(CodedInputStream input) {
        CodedInputStream codedInputStream = (CodedInputStream) Internal.m29344b(input, "input");
        this.f38102c = codedInputStream;
        codedInputStream.f36910d = this;
    }

    /* renamed from: U */
    public static C6869f m30203U(CodedInputStream input) {
        C6869f c6869f = input.f36910d;
        return c6869f != null ? c6869f : new C6869f(input);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x005c, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0064, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <K, V> void mo29912A(java.util.Map<K, V> r8, com.google.protobuf.MapEntryLite.C6795b<K, V> r9, com.google.protobuf.ExtensionRegistryLite r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.m30211c0(r0)
            com.google.protobuf.CodedInputStream r1 = r7.f38102c
            int r1 = r1.readUInt32()
            com.google.protobuf.CodedInputStream r2 = r7.f38102c
            int r1 = r2.pushLimit(r1)
            K r2 = r9.f37716b
            V r3 = r9.f37718d
        L14:
            int r4 = r7.mo29917F()     // Catch: java.lang.Throwable -> L65
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5c
            com.google.protobuf.CodedInputStream r5 = r7.f38102c     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.isAtEnd()     // Catch: java.lang.Throwable -> L65
            if (r5 == 0) goto L26
            goto L5c
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L47
            if (r4 == r0) goto L3a
            boolean r4 = r7.mo29955k()     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            if (r4 == 0) goto L34
            goto L14
        L34:
            com.google.protobuf.InvalidProtocolBufferException r4 = new com.google.protobuf.InvalidProtocolBufferException     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            r4.<init>(r6)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            throw r4     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
        L3a:
            com.google.protobuf.WireFormat$FieldType r4 = r9.f37717c     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            V r5 = r9.f37718d     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            java.lang.Object r3 = r7.m30206X(r4, r5, r10)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            goto L14
        L47:
            com.google.protobuf.WireFormat$FieldType r4 = r9.f37715a     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r2 = r7.m30206X(r4, r5, r5)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            goto L14
        L4f:
            boolean r4 = r7.mo29955k()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L56
            goto L14
        L56:
            com.google.protobuf.InvalidProtocolBufferException r8 = new com.google.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L65
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L65
            throw r8     // Catch: java.lang.Throwable -> L65
        L5c:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L65
            com.google.protobuf.CodedInputStream r7 = r7.f38102c
            r7.popLimit(r1)
            return
        L65:
            r8 = move-exception
            com.google.protobuf.CodedInputStream r7 = r7.f38102c
            r7.popLimit(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C6869f.mo29912A(java.util.Map, com.google.protobuf.MapEntryLite$b, com.google.protobuf.ExtensionRegistryLite):void");
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: B */
    public ByteString mo29913B() throws IOException {
        m30211c0(2);
        return this.f38102c.readBytes();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: C */
    public long mo29914C() throws IOException {
        m30211c0(0);
        return this.f38102c.readUInt64();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: D */
    public <T> void mo29915D(T target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        m30211c0(3);
        m30204V(target, schema, extensionRegistry);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: E */
    public void mo29916E(List<Integer> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6877n)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType == 2) {
                int readUInt32 = this.f38102c.readUInt32();
                m30212d0(readUInt32);
                int totalBytesRead = this.f38102c.getTotalBytesRead() + readUInt32;
                do {
                    target.add(Integer.valueOf(this.f38102c.readFixed32()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                return;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                target.add(Integer.valueOf(this.f38102c.readFixed32()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6877n c6877n = (C6877n) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 == 2) {
            int readUInt322 = this.f38102c.readUInt32();
            m30212d0(readUInt322);
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + readUInt322;
            do {
                c6877n.addInt(this.f38102c.readFixed32());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            return;
        }
        if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            c6877n.addInt(this.f38102c.readFixed32());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: F */
    public int mo29917F() throws IOException {
        int i = this.f38105f;
        if (i != 0) {
            this.f38103d = i;
            this.f38105f = 0;
        } else {
            this.f38103d = this.f38102c.readTag();
        }
        int i2 = this.f38103d;
        if (i2 == 0 || i2 == this.f38104e) {
            return Integer.MAX_VALUE;
        }
        return WireFormat.getTagFieldNumber(i2);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: G */
    public void mo29918G(List<String> target) throws IOException {
        m30209a0(target, false);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: H */
    public void mo29919H(List<Float> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6876m)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType == 2) {
                int readUInt32 = this.f38102c.readUInt32();
                m30212d0(readUInt32);
                int totalBytesRead = this.f38102c.getTotalBytesRead() + readUInt32;
                do {
                    target.add(Float.valueOf(this.f38102c.readFloat()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                return;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                target.add(Float.valueOf(this.f38102c.readFloat()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6876m c6876m = (C6876m) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 == 2) {
            int readUInt322 = this.f38102c.readUInt32();
            m30212d0(readUInt322);
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + readUInt322;
            do {
                c6876m.addFloat(this.f38102c.readFloat());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            return;
        }
        if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            c6876m.addFloat(this.f38102c.readFloat());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: I */
    public void mo29920I(List<ByteString> target) throws IOException {
        int readTag;
        if (WireFormat.getTagWireType(this.f38103d) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            target.add(mo29913B());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag = this.f38102c.readTag();
            }
        } while (readTag == this.f38103d);
        this.f38105f = readTag;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: J */
    public void mo29921J(List<Double> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6872i)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 1) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readUInt32 = this.f38102c.readUInt32();
                m30213e0(readUInt32);
                int totalBytesRead = this.f38102c.getTotalBytesRead() + readUInt32;
                do {
                    target.add(Double.valueOf(this.f38102c.readDouble()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                return;
            }
            do {
                target.add(Double.valueOf(this.f38102c.readDouble()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6872i c6872i = (C6872i) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 1) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int readUInt322 = this.f38102c.readUInt32();
            m30213e0(readUInt322);
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + readUInt322;
            do {
                c6872i.addDouble(this.f38102c.readDouble());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            return;
        }
        do {
            c6872i.addDouble(this.f38102c.readDouble());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: K */
    public long mo29922K() throws IOException {
        m30211c0(1);
        return this.f38102c.readFixed64();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: L */
    public void mo29923L(List<Integer> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6877n)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType == 2) {
                int readUInt32 = this.f38102c.readUInt32();
                m30212d0(readUInt32);
                int totalBytesRead = this.f38102c.getTotalBytesRead() + readUInt32;
                do {
                    target.add(Integer.valueOf(this.f38102c.readSFixed32()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                return;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                target.add(Integer.valueOf(this.f38102c.readSFixed32()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6877n c6877n = (C6877n) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 == 2) {
            int readUInt322 = this.f38102c.readUInt32();
            m30212d0(readUInt322);
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + readUInt322;
            do {
                c6877n.addInt(this.f38102c.readSFixed32());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            return;
        }
        if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            c6877n.addInt(this.f38102c.readSFixed32());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.InterfaceC6888y
    @Deprecated
    /* renamed from: M */
    public <T> void mo29924M(List<T> target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        int readTag;
        if (WireFormat.getTagWireType(this.f38103d) != 3) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i = this.f38103d;
        do {
            target.add(m30207Y(schema, extensionRegistry));
            if (this.f38102c.isAtEnd() || this.f38105f != 0) {
                return;
            } else {
                readTag = this.f38102c.readTag();
            }
        } while (readTag == i);
        this.f38105f = readTag;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: N */
    public void mo29925N(List<Long> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6879p)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 0) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int totalBytesRead = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
                do {
                    target.add(Long.valueOf(this.f38102c.readInt64()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                m30210b0(totalBytesRead);
                return;
            }
            do {
                target.add(Long.valueOf(this.f38102c.readInt64()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6879p c6879p = (C6879p) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 0) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
            do {
                c6879p.addLong(this.f38102c.readInt64());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            m30210b0(totalBytesRead2);
            return;
        }
        do {
            c6879p.addLong(this.f38102c.readInt64());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: O */
    public void mo29926O(List<Integer> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6877n)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 0) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int totalBytesRead = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
                do {
                    target.add(Integer.valueOf(this.f38102c.readEnum()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                m30210b0(totalBytesRead);
                return;
            }
            do {
                target.add(Integer.valueOf(this.f38102c.readEnum()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6877n c6877n = (C6877n) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 0) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
            do {
                c6877n.addInt(this.f38102c.readEnum());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            m30210b0(totalBytesRead2);
            return;
        }
        do {
            c6877n.addInt(this.f38102c.readEnum());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: P */
    public void mo29927P(List<Integer> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6877n)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 0) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int totalBytesRead = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
                do {
                    target.add(Integer.valueOf(this.f38102c.readUInt32()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                m30210b0(totalBytesRead);
                return;
            }
            do {
                target.add(Integer.valueOf(this.f38102c.readUInt32()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6877n c6877n = (C6877n) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 0) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
            do {
                c6877n.addInt(this.f38102c.readUInt32());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            m30210b0(totalBytesRead2);
            return;
        }
        do {
            c6877n.addInt(this.f38102c.readUInt32());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
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
        m30211c0(0);
        return this.f38102c.readSInt64();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: S */
    public int mo29930S() throws IOException {
        m30211c0(5);
        return this.f38102c.readSFixed32();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: T */
    public String mo29931T() throws IOException {
        m30211c0(2);
        return this.f38102c.readStringRequireUtf8();
    }

    /* renamed from: V */
    public final <T> void m30204V(T target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        int i = this.f38104e;
        this.f38104e = WireFormat.m29722a(WireFormat.getTagFieldNumber(this.f38103d), 4);
        try {
            schema.mo30379i(target, this, extensionRegistry);
            if (this.f38103d == this.f38104e) {
            } else {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } finally {
            this.f38104e = i;
        }
    }

    /* renamed from: W */
    public final <T> void m30205W(T target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        int readUInt32 = this.f38102c.readUInt32();
        CodedInputStream codedInputStream = this.f38102c;
        if (codedInputStream.f36907a >= codedInputStream.f36908b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int pushLimit = codedInputStream.pushLimit(readUInt32);
        this.f38102c.f36907a++;
        schema.mo30379i(target, this, extensionRegistry);
        this.f38102c.checkLastTagWas(0);
        r4.f36907a--;
        this.f38102c.popLimit(pushLimit);
    }

    /* renamed from: X */
    public final Object m30206X(WireFormat.FieldType fieldType, Class<?> messageType, ExtensionRegistryLite extensionRegistry) throws IOException {
        switch (a.f38106a[fieldType.ordinal()]) {
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
                throw new IllegalArgumentException("unsupported field type.");
        }
    }

    /* renamed from: Y */
    public final <T> T m30207Y(InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        T newInstance = schema.newInstance();
        m30204V(newInstance, schema, extensionRegistry);
        schema.mo30375g(newInstance);
        return newInstance;
    }

    /* renamed from: Z */
    public final <T> T m30208Z(InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        T newInstance = schema.newInstance();
        m30205W(newInstance, schema, extensionRegistry);
        schema.mo30375g(newInstance);
        return newInstance;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: a */
    public int mo29936a() throws IOException {
        m30211c0(0);
        return this.f38102c.readUInt32();
    }

    /* renamed from: a0 */
    public void m30209a0(List<String> target, boolean requireUtf8) throws IOException {
        int readTag;
        int readTag2;
        if (WireFormat.getTagWireType(this.f38103d) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        if (!(target instanceof LazyStringList) || requireUtf8) {
            do {
                target.add(requireUtf8 ? mo29931T() : mo29975v());
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) target;
        do {
            lazyStringList.add(mo29913B());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: b */
    public int mo29938b() throws IOException {
        m30211c0(0);
        return this.f38102c.readEnum();
    }

    /* renamed from: b0 */
    public final void m30210b0(int expectedPosition) throws IOException {
        if (this.f38102c.getTotalBytesRead() != expectedPosition) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: c */
    public void mo29940c(List<Boolean> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6867e)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 0) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int totalBytesRead = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
                do {
                    target.add(Boolean.valueOf(this.f38102c.readBool()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                m30210b0(totalBytesRead);
                return;
            }
            do {
                target.add(Boolean.valueOf(this.f38102c.readBool()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6867e c6867e = (C6867e) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 0) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
            do {
                c6867e.addBoolean(this.f38102c.readBool());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            m30210b0(totalBytesRead2);
            return;
        }
        do {
            c6867e.addBoolean(this.f38102c.readBool());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    /* renamed from: c0 */
    public final void m30211c0(int requiredWireType) throws IOException {
        if (WireFormat.getTagWireType(this.f38103d) != requiredWireType) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: d */
    public void mo29942d(List<Integer> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6877n)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 0) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int totalBytesRead = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
                do {
                    target.add(Integer.valueOf(this.f38102c.readSInt32()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                m30210b0(totalBytesRead);
                return;
            }
            do {
                target.add(Integer.valueOf(this.f38102c.readSInt32()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6877n c6877n = (C6877n) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 0) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
            do {
                c6877n.addInt(this.f38102c.readSInt32());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            m30210b0(totalBytesRead2);
            return;
        }
        do {
            c6877n.addInt(this.f38102c.readSInt32());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    /* renamed from: d0 */
    public final void m30212d0(int bytes) throws IOException {
        if ((bytes & 3) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // com.google.protobuf.InterfaceC6888y
    @Deprecated
    /* renamed from: e */
    public <T> T mo29944e(InterfaceC6889z<T> interfaceC6889z, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        m30211c0(3);
        return (T) m30207Y(interfaceC6889z, extensionRegistryLite);
    }

    /* renamed from: e0 */
    public final void m30213e0(int bytes) throws IOException {
        if ((bytes & 7) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: f */
    public <T> void mo29946f(List<T> target, Class<T> targetType, ExtensionRegistryLite extensionRegistry) throws IOException {
        mo29961n(target, d9l.m53616a().m53624i(targetType), extensionRegistry);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: g */
    public void mo29948g(List<Long> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6879p)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 1) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readUInt32 = this.f38102c.readUInt32();
                m30213e0(readUInt32);
                int totalBytesRead = this.f38102c.getTotalBytesRead() + readUInt32;
                do {
                    target.add(Long.valueOf(this.f38102c.readSFixed64()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                return;
            }
            do {
                target.add(Long.valueOf(this.f38102c.readSFixed64()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6879p c6879p = (C6879p) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 1) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int readUInt322 = this.f38102c.readUInt32();
            m30213e0(readUInt322);
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + readUInt322;
            do {
                c6879p.addLong(this.f38102c.readSFixed64());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            return;
        }
        do {
            c6879p.addLong(this.f38102c.readSFixed64());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    public int getTag() {
        return this.f38103d;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: h */
    public void mo29950h(List<Integer> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6877n)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 0) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int totalBytesRead = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
                do {
                    target.add(Integer.valueOf(this.f38102c.readInt32()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                m30210b0(totalBytesRead);
                return;
            }
            do {
                target.add(Integer.valueOf(this.f38102c.readInt32()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6877n c6877n = (C6877n) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 0) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
            do {
                c6877n.addInt(this.f38102c.readInt32());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            m30210b0(totalBytesRead2);
            return;
        }
        do {
            c6877n.addInt(this.f38102c.readInt32());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: i */
    public <T> void mo29952i(T target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        m30211c0(2);
        m30205W(target, schema, extensionRegistry);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: j */
    public boolean mo29911j() {
        return this.f38102c.m28642g();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: k */
    public boolean mo29955k() throws IOException {
        int i;
        if (this.f38102c.isAtEnd() || (i = this.f38103d) == this.f38104e) {
            return false;
        }
        return this.f38102c.skipField(i);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: l */
    public long mo29957l() throws IOException {
        m30211c0(0);
        return this.f38102c.readInt64();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: m */
    public boolean mo29959m() throws IOException {
        m30211c0(0);
        return this.f38102c.readBool();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: n */
    public <T> void mo29961n(List<T> target, InterfaceC6889z<T> schema, ExtensionRegistryLite extensionRegistry) throws IOException {
        int readTag;
        if (WireFormat.getTagWireType(this.f38103d) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i = this.f38103d;
        do {
            target.add(m30208Z(schema, extensionRegistry));
            if (this.f38102c.isAtEnd() || this.f38105f != 0) {
                return;
            } else {
                readTag = this.f38102c.readTag();
            }
        } while (readTag == i);
        this.f38105f = readTag;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: o */
    public void mo29963o(List<Long> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6879p)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 0) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int totalBytesRead = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
                do {
                    target.add(Long.valueOf(this.f38102c.readUInt64()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                m30210b0(totalBytesRead);
                return;
            }
            do {
                target.add(Long.valueOf(this.f38102c.readUInt64()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6879p c6879p = (C6879p) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 0) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
            do {
                c6879p.addLong(this.f38102c.readUInt64());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            m30210b0(totalBytesRead2);
            return;
        }
        do {
            c6879p.addLong(this.f38102c.readUInt64());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    @Deprecated
    /* renamed from: p */
    public <T> T mo29965p(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        m30211c0(3);
        return (T) m30207Y(d9l.m53616a().m53624i(cls), extensionRegistryLite);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: q */
    public void mo29967q(List<String> target) throws IOException {
        m30209a0(target, true);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: r */
    public int mo29969r() throws IOException {
        m30211c0(0);
        return this.f38102c.readInt32();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    public double readDouble() throws IOException {
        m30211c0(1);
        return this.f38102c.readDouble();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    public float readFloat() throws IOException {
        m30211c0(5);
        return this.f38102c.readFloat();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: s */
    public void mo29971s(List<Long> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6879p)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 1) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readUInt32 = this.f38102c.readUInt32();
                m30213e0(readUInt32);
                int totalBytesRead = this.f38102c.getTotalBytesRead() + readUInt32;
                do {
                    target.add(Long.valueOf(this.f38102c.readFixed64()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                return;
            }
            do {
                target.add(Long.valueOf(this.f38102c.readFixed64()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6879p c6879p = (C6879p) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 1) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int readUInt322 = this.f38102c.readUInt32();
            m30213e0(readUInt322);
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + readUInt322;
            do {
                c6879p.addLong(this.f38102c.readFixed64());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            return;
        }
        do {
            c6879p.addLong(this.f38102c.readFixed64());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: t */
    public <T> T mo29973t(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        m30211c0(2);
        return (T) m30208Z(d9l.m53616a().m53624i(cls), extensionRegistryLite);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: u */
    public int mo29974u() throws IOException {
        m30211c0(5);
        return this.f38102c.readFixed32();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: v */
    public String mo29975v() throws IOException {
        m30211c0(2);
        return this.f38102c.readString();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: w */
    public <T> T mo29976w(InterfaceC6889z<T> interfaceC6889z, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        m30211c0(2);
        return (T) m30208Z(interfaceC6889z, extensionRegistryLite);
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: x */
    public void mo29977x(List<Long> target) throws IOException {
        int readTag;
        int readTag2;
        if (!(target instanceof C6879p)) {
            int tagWireType = WireFormat.getTagWireType(this.f38103d);
            if (tagWireType != 0) {
                if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int totalBytesRead = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
                do {
                    target.add(Long.valueOf(this.f38102c.readSInt64()));
                } while (this.f38102c.getTotalBytesRead() < totalBytesRead);
                m30210b0(totalBytesRead);
                return;
            }
            do {
                target.add(Long.valueOf(this.f38102c.readSInt64()));
                if (this.f38102c.isAtEnd()) {
                    return;
                } else {
                    readTag = this.f38102c.readTag();
                }
            } while (readTag == this.f38103d);
            this.f38105f = readTag;
            return;
        }
        C6879p c6879p = (C6879p) target;
        int tagWireType2 = WireFormat.getTagWireType(this.f38103d);
        if (tagWireType2 != 0) {
            if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int totalBytesRead2 = this.f38102c.getTotalBytesRead() + this.f38102c.readUInt32();
            do {
                c6879p.addLong(this.f38102c.readSInt64());
            } while (this.f38102c.getTotalBytesRead() < totalBytesRead2);
            m30210b0(totalBytesRead2);
            return;
        }
        do {
            c6879p.addLong(this.f38102c.readSInt64());
            if (this.f38102c.isAtEnd()) {
                return;
            } else {
                readTag2 = this.f38102c.readTag();
            }
        } while (readTag2 == this.f38103d);
        this.f38105f = readTag2;
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: y */
    public long mo29978y() throws IOException {
        m30211c0(1);
        return this.f38102c.readSFixed64();
    }

    @Override // com.google.protobuf.InterfaceC6888y
    /* renamed from: z */
    public int mo29979z() throws IOException {
        m30211c0(0);
        return this.f38102c.readSInt32();
    }
}
