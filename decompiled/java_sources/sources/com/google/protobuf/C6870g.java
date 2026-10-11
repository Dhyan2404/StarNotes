package com.google.protobuf;

import com.google.protobuf.MapEntryLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@htd
/* renamed from: com.google.protobuf.g */
/* loaded from: classes6.dex */
public final class C6870g implements Writer {

    /* renamed from: a */
    public final CodedOutputStream f38107a;

    /* renamed from: com.google.protobuf.g$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38108a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f38108a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38108a[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38108a[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38108a[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38108a[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38108a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38108a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38108a[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38108a[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38108a[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38108a[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38108a[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public C6870g(CodedOutputStream output) {
        CodedOutputStream codedOutputStream = (CodedOutputStream) Internal.m29344b(output, Constants.ELEMNAME_OUTPUT_STRING);
        this.f38107a = codedOutputStream;
        codedOutputStream.f36960a = this;
    }

    /* renamed from: D */
    public static C6870g m30214D(CodedOutputStream output) {
        C6870g c6870g = output.f36960a;
        return c6870g != null ? c6870g : new C6870g(output);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: A */
    public void mo29724A(int fieldNumber, List<Boolean> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeBool(fieldNumber, value.get(i).booleanValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeBoolSizeNoTag(value.get(i3).booleanValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeBoolNoTag(value.get(i).booleanValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    /* renamed from: B */
    public void mo29725B(int fieldNumber, Object value) throws IOException {
        this.f38107a.writeGroup(fieldNumber, (MessageLite) value);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: C */
    public void mo29726C(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeInt64(fieldNumber, value.get(i).longValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeInt64SizeNoTag(value.get(i3).longValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeInt64NoTag(value.get(i).longValue());
            i++;
        }
    }

    /* renamed from: E */
    public int m30215E() {
        return this.f38107a.getTotalBytesWritten();
    }

    /* renamed from: F */
    public final <V> void m30216F(int fieldNumber, boolean key, V value, MapEntryLite.C6795b<Boolean, V> metadata) throws IOException {
        this.f38107a.writeTag(fieldNumber, 2);
        this.f38107a.writeUInt32NoTag(MapEntryLite.m29391a(metadata, Boolean.valueOf(key), value));
        MapEntryLite.m29394e(this.f38107a, metadata, Boolean.valueOf(key), value);
    }

    /* renamed from: G */
    public final <V> void m30217G(int fieldNumber, MapEntryLite.C6795b<Integer, V> metadata, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it2 = map.keySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = it2.next().intValue();
            i++;
        }
        Arrays.sort(iArr);
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = iArr[i2];
            V v = map.get(Integer.valueOf(i3));
            this.f38107a.writeTag(fieldNumber, 2);
            this.f38107a.writeUInt32NoTag(MapEntryLite.m29391a(metadata, Integer.valueOf(i3), v));
            MapEntryLite.m29394e(this.f38107a, metadata, Integer.valueOf(i3), v);
        }
    }

    /* renamed from: H */
    public final <V> void m30218H(int fieldNumber, MapEntryLite.C6795b<Long, V> metadata, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it2 = map.keySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            jArr[i] = it2.next().longValue();
            i++;
        }
        Arrays.sort(jArr);
        for (int i2 = 0; i2 < size; i2++) {
            long j = jArr[i2];
            V v = map.get(Long.valueOf(j));
            this.f38107a.writeTag(fieldNumber, 2);
            this.f38107a.writeUInt32NoTag(MapEntryLite.m29391a(metadata, Long.valueOf(j), v));
            MapEntryLite.m29394e(this.f38107a, metadata, Long.valueOf(j), v);
        }
    }

    /* renamed from: I */
    public final <K, V> void m30219I(int fieldNumber, MapEntryLite.C6795b<K, V> metadata, Map<K, V> map) throws IOException {
        switch (a.f38108a[metadata.f37715a.ordinal()]) {
            case 1:
                V v = map.get(Boolean.FALSE);
                if (v != null) {
                    m30216F(fieldNumber, false, v, metadata);
                }
                V v2 = map.get(Boolean.TRUE);
                if (v2 != null) {
                    m30216F(fieldNumber, true, v2, metadata);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                m30217G(fieldNumber, metadata, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                m30218H(fieldNumber, metadata, map);
                return;
            case 12:
                m30220J(fieldNumber, metadata, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + metadata.f37715a);
        }
    }

    /* renamed from: J */
    public final <V> void m30220J(int fieldNumber, MapEntryLite.C6795b<String, V> metadata, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator<String> it2 = map.keySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            strArr[i] = it2.next();
            i++;
        }
        Arrays.sort(strArr);
        for (int i2 = 0; i2 < size; i2++) {
            String str = strArr[i2];
            V v = map.get(str);
            this.f38107a.writeTag(fieldNumber, 2);
            this.f38107a.writeUInt32NoTag(MapEntryLite.m29391a(metadata, str, v));
            MapEntryLite.m29394e(this.f38107a, metadata, str, v);
        }
    }

    /* renamed from: K */
    public final void m30221K(int fieldNumber, Object value) throws IOException {
        if (value instanceof String) {
            this.f38107a.writeString(fieldNumber, (String) value);
        } else {
            this.f38107a.writeBytes(fieldNumber, (ByteString) value);
        }
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    /* renamed from: a */
    public void mo29727a(int fieldNumber, List<?> value) throws IOException {
        for (int i = 0; i < value.size(); i++) {
            mo29725B(fieldNumber, value.get(i));
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo29728b(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeInt32(fieldNumber, value.get(i).intValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeInt32SizeNoTag(value.get(i3).intValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeInt32NoTag(value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: c */
    public void mo29729c(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeFixed32(fieldNumber, value.get(i).intValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeFixed32SizeNoTag(value.get(i3).intValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeFixed32NoTag(value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: d */
    public void mo29730d(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeUInt64(fieldNumber, value.get(i).longValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeUInt64SizeNoTag(value.get(i3).longValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeUInt64NoTag(value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    /* renamed from: e */
    public void mo29731e(int fieldNumber) throws IOException {
        this.f38107a.writeTag(fieldNumber, 4);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: f */
    public void mo29732f(int fieldNumber, List<ByteString> value) throws IOException {
        for (int i = 0; i < value.size(); i++) {
            this.f38107a.writeBytes(fieldNumber, value.get(i));
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: g */
    public void mo29733g(int fieldNumber, List<?> value, InterfaceC6889z schema) throws IOException {
        for (int i = 0; i < value.size(); i++) {
            mo29737k(fieldNumber, value.get(i), schema);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: h */
    public void mo29734h(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
        this.f38107a.m28694Q(fieldNumber, (MessageLite) value, schema);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: i */
    public void mo29735i(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeSInt64(fieldNumber, value.get(i).longValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeSInt64SizeNoTag(value.get(i3).longValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeSInt64NoTag(value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: j */
    public void mo29736j(int fieldNumber, List<?> value, InterfaceC6889z schema) throws IOException {
        for (int i = 0; i < value.size(); i++) {
            mo29734h(fieldNumber, value.get(i), schema);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: k */
    public void mo29737k(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
        this.f38107a.mo28696S(fieldNumber, (MessageLite) value, schema);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: l */
    public Writer.FieldOrder mo29738l() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: m */
    public void mo29739m(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeSFixed32(fieldNumber, value.get(i).intValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeSFixed32SizeNoTag(value.get(i3).intValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeSFixed32NoTag(value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: n */
    public void mo29740n(int fieldNumber, List<Float> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeFloat(fieldNumber, value.get(i).floatValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeFloatSizeNoTag(value.get(i3).floatValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeFloatNoTag(value.get(i).floatValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: o */
    public final void mo29741o(int fieldNumber, Object value) throws IOException {
        if (value instanceof ByteString) {
            this.f38107a.writeRawMessageSetExtension(fieldNumber, (ByteString) value);
        } else {
            this.f38107a.writeMessageSetExtension(fieldNumber, (MessageLite) value);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: p */
    public void mo29742p(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeUInt32(fieldNumber, value.get(i).intValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeUInt32SizeNoTag(value.get(i3).intValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeUInt32NoTag(value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: q */
    public void mo29743q(int fieldNumber, List<?> value) throws IOException {
        for (int i = 0; i < value.size(); i++) {
            mo29752z(fieldNumber, value.get(i));
        }
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    /* renamed from: r */
    public void mo29744r(int fieldNumber) throws IOException {
        this.f38107a.writeTag(fieldNumber, 3);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: s */
    public void mo29745s(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeFixed64(fieldNumber, value.get(i).longValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeFixed64SizeNoTag(value.get(i3).longValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeFixed64NoTag(value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: t */
    public <K, V> void mo29746t(int fieldNumber, MapEntryLite.C6795b<K, V> metadata, Map<K, V> map) throws IOException {
        if (this.f38107a.m28692L()) {
            m30219I(fieldNumber, metadata, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f38107a.writeTag(fieldNumber, 2);
            this.f38107a.writeUInt32NoTag(MapEntryLite.m29391a(metadata, entry.getKey(), entry.getValue()));
            MapEntryLite.m29394e(this.f38107a, metadata, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: u */
    public void mo29747u(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeSInt32(fieldNumber, value.get(i).intValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeSInt32SizeNoTag(value.get(i3).intValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeSInt32NoTag(value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: v */
    public void mo29748v(int fieldNumber, List<Double> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeDouble(fieldNumber, value.get(i).doubleValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeDoubleSizeNoTag(value.get(i3).doubleValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeDoubleNoTag(value.get(i).doubleValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: w */
    public void mo29749w(int fieldNumber, List<String> value) throws IOException {
        int i = 0;
        if (!(value instanceof LazyStringList)) {
            while (i < value.size()) {
                this.f38107a.writeString(fieldNumber, value.get(i));
                i++;
            }
        } else {
            LazyStringList lazyStringList = (LazyStringList) value;
            while (i < value.size()) {
                m30221K(fieldNumber, lazyStringList.getRaw(i));
                i++;
            }
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeBool(int fieldNumber, boolean value) throws IOException {
        this.f38107a.writeBool(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeBytes(int fieldNumber, ByteString value) throws IOException {
        this.f38107a.writeBytes(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeDouble(int fieldNumber, double value) throws IOException {
        this.f38107a.writeDouble(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeEnum(int fieldNumber, int value) throws IOException {
        this.f38107a.writeEnum(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed32(int fieldNumber, int value) throws IOException {
        this.f38107a.writeFixed32(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed64(int fieldNumber, long value) throws IOException {
        this.f38107a.writeFixed64(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeFloat(int fieldNumber, float value) throws IOException {
        this.f38107a.writeFloat(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeInt32(int fieldNumber, int value) throws IOException {
        this.f38107a.writeInt32(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeInt64(int fieldNumber, long value) throws IOException {
        this.f38107a.writeInt64(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed32(int fieldNumber, int value) throws IOException {
        this.f38107a.writeSFixed32(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed64(int fieldNumber, long value) throws IOException {
        this.f38107a.writeSFixed64(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt32(int fieldNumber, int value) throws IOException {
        this.f38107a.writeSInt32(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt64(int fieldNumber, long value) throws IOException {
        this.f38107a.writeSInt64(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeString(int fieldNumber, String value) throws IOException {
        this.f38107a.writeString(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt32(int fieldNumber, int value) throws IOException {
        this.f38107a.writeUInt32(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt64(int fieldNumber, long value) throws IOException {
        this.f38107a.writeUInt64(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: x */
    public void mo29750x(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeEnum(fieldNumber, value.get(i).intValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeEnumSizeNoTag(value.get(i3).intValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeEnumNoTag(value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: y */
    public void mo29751y(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (!packed) {
            while (i < value.size()) {
                this.f38107a.writeSFixed64(fieldNumber, value.get(i).longValue());
                i++;
            }
            return;
        }
        this.f38107a.writeTag(fieldNumber, 2);
        int i2 = 0;
        for (int i3 = 0; i3 < value.size(); i3++) {
            i2 += CodedOutputStream.computeSFixed64SizeNoTag(value.get(i3).longValue());
        }
        this.f38107a.writeUInt32NoTag(i2);
        while (i < value.size()) {
            this.f38107a.writeSFixed64NoTag(value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: z */
    public void mo29752z(int fieldNumber, Object value) throws IOException {
        this.f38107a.writeMessage(fieldNumber, (MessageLite) value);
    }
}
