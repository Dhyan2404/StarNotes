package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.fasterxml.jackson.core.base.ParserBase;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.DecimalFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZonedDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* renamed from: com.alibaba.fastjson2.j */
/* loaded from: classes3.dex */
public final class C1740j extends JSONWriter {

    /* renamed from: k */
    public static final BigInteger f12450k = BigInteger.valueOf(ParserBase.f21225q);

    /* renamed from: l */
    public static final BigInteger f12451l = BigInteger.valueOf(2147483647L);

    /* renamed from: m */
    public static final BigInteger f12452m = BigInteger.valueOf(Long.MIN_VALUE);

    /* renamed from: n */
    public static final BigInteger f12453n = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: o */
    public static final byte[] f12454o = JSONB.toBytes(DateUtils.SHANGHAI_ZONE_ID_NAME);

    /* renamed from: p */
    public static final byte[] f12455p = JSONB.toBytes(DateUtils.OFFSET_8_ZONE_ID_NAME);

    /* renamed from: q */
    public static final long f12456q = JSONWriter.Feature.WriteEnumUsingToString.mask | JSONWriter.Feature.WriteEnumsUsingName.mask;

    /* renamed from: f */
    public final JSONFactory.C1722b f12457f;

    /* renamed from: g */
    public byte[] f12458g;

    /* renamed from: h */
    public TLongIntHashMap f12459h;

    /* renamed from: i */
    public int f12460i;

    /* renamed from: j */
    public long f12461j;

    public C1740j(JSONWriter.Context context, SymbolTable symbolTable) {
        super(context, symbolTable, true, StandardCharsets.UTF_8);
        JSONFactory.C1722b[] c1722bArr = JSONFactory.f12217A;
        JSONFactory.C1722b c1722b = c1722bArr[System.identityHashCode(Thread.currentThread()) & (c1722bArr.length - 1)];
        this.f12457f = c1722b;
        byte[] andSet = JSONFactory.f12220D.getAndSet(c1722b, null);
        this.f12458g = andSet == null ? new byte[8192] : andSet;
    }

    /* renamed from: H */
    public static boolean m7414H(BigInteger bigInteger) {
        return bigInteger.compareTo(f12452m) >= 0 && bigInteger.compareTo(f12453n) <= 0;
    }

    /* renamed from: I */
    public static void m7415I(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >>> 24);
        bArr[i + 1] = (byte) (i2 >>> 16);
        bArr[i + 2] = (byte) (i2 >>> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: M */
    public static void m7416M(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) ((i2 >> 16) + 68);
        bArr[i + 1] = (byte) (i2 >> 8);
        bArr[i + 2] = (byte) i2;
    }

    /* renamed from: e0 */
    public static void m7417e0(byte[] bArr, int i, long j) {
        bArr[i] = (byte) (j >>> 56);
        bArr[i + 1] = (byte) (j >>> 48);
        bArr[i + 2] = (byte) (j >>> 40);
        bArr[i + 3] = (byte) (j >>> 32);
        bArr[i + 4] = (byte) (j >>> 24);
        bArr[i + 5] = (byte) (j >>> 16);
        bArr[i + 6] = (byte) (j >>> 8);
        bArr[i + 7] = (byte) j;
    }

    /* renamed from: f0 */
    public static void m7418f0(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) ((i2 >> 16) - 60);
        bArr[i + 1] = (byte) (i2 >> 8);
        bArr[i + 2] = (byte) i2;
    }

    /* renamed from: g0 */
    public static int m7419g0(byte[] bArr, int i, int i2) {
        if (i2 <= 262143) {
            bArr[i] = JSONB.Constants.BC_STR_ASCII;
            m7416M(bArr, i + 1, i2);
            return 4;
        }
        bArr[i] = JSONB.Constants.BC_STR_ASCII;
        bArr[i + 1] = JSONB.Constants.BC_INT32;
        bArr[i + 2] = (byte) (i2 >>> 24);
        bArr[i + 3] = (byte) (i2 >>> 16);
        bArr[i + 4] = (byte) (i2 >>> 8);
        bArr[i + 5] = (byte) i2;
        return 6;
    }

    /* renamed from: h0 */
    public static void m7420h0(byte[] bArr, int i, int i2) {
        bArr[i] = JSONB.Constants.BC_STR_ASCII;
        bArr[i + 1] = (byte) ((i2 >> 8) + 56);
        bArr[i + 2] = (byte) i2;
    }

    /* renamed from: i0 */
    public static int m7421i0(int i) {
        if (i >= -16 && i <= 47) {
            return 1;
        }
        if (i < -2048 || i > 2047) {
            return (i < -262144 || i > 262143) ? 5 : 3;
        }
        return 2;
    }

    /* renamed from: j0 */
    public static int m7422j0(byte[] bArr, int i, int i2) {
        if (i2 >= -16 && i2 <= 47) {
            bArr[i] = (byte) i2;
            return 1;
        }
        if (i2 >= -2048 && i2 <= 2047) {
            bArr[i] = (byte) ((i2 >> 8) + 56);
            bArr[i + 1] = (byte) i2;
            return 2;
        }
        if (i2 >= -262144 && i2 <= 262143) {
            m7416M(bArr, i, i2);
            return 3;
        }
        bArr[i] = JSONB.Constants.BC_INT32;
        m7415I(bArr, i + 1, i2);
        return 5;
    }

    /* renamed from: w */
    public static boolean m7423w(BigInteger bigInteger) {
        return bigInteger.compareTo(f12450k) >= 0 && bigInteger.compareTo(f12451l) <= 0;
    }

    @Override // com.alibaba.fastjson2.JSONWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        byte[] bArr = this.f12458g;
        if (bArr.length < 1048576) {
            JSONFactory.f12220D.lazySet(this.f12457f, bArr);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void endArray() {
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void endObject() {
        this.level--;
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        this.f12458g[i] = JSONB.Constants.BC_OBJECT_END;
        this.off = i + 1;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public int flushTo(OutputStream outputStream) throws IOException {
        int i = this.off;
        outputStream.write(this.f12458g, 0, i);
        this.off = 0;
        return i;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public byte[] getBytes() {
        return Arrays.copyOf(this.f12458g, this.off);
    }

    /* renamed from: j */
    public void m7424j(int i) {
        byte[] bArr = this.f12458g;
        if (i >= bArr.length) {
            int length = bArr.length;
            int i2 = length + (length >> 1);
            if (i2 - i >= 0) {
                i = i2;
            }
            if (i > this.maxArraySize) {
                throw new OutOfMemoryError("try enabling LargeObject feature instead");
            }
            this.f12458g = Arrays.copyOf(bArr, i);
        }
    }

    /* renamed from: k0 */
    public final boolean m7425k0(int i) {
        int i2 = this.off;
        int i3 = i2 + 2;
        if (i3 >= this.f12458g.length) {
            m7424j(i3);
        }
        this.f12458g[i2] = JSONB.Constants.BC_TYPED_ANY;
        this.off = i2 + 1;
        writeInt32(-i);
        return false;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public int size() {
        return this.off;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void startArray() {
        throw new JSONException("unsupported operation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void startObject() {
        this.level++;
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        this.f12458g[i] = JSONB.Constants.BC_OBJECT;
        this.off = i + 1;
    }

    public String toString() {
        if (this.f12458g.length == 0) {
            return "<empty>";
        }
        JSONReader ofJSONB = JSONReader.ofJSONB(getBytes());
        JSONWriter m7324of = JSONWriter.m7324of();
        try {
            m7324of.writeAny(ofJSONB.readAny());
            return m7324of.toString();
        } catch (Exception unused) {
            return JSONB.typeName(this.f12458g[0]) + ", bytes length " + this.off;
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void write(List list) {
        if (list == null) {
            writeArrayNull();
            return;
        }
        int size = list.size();
        startArray(size);
        for (int i = 0; i < size; i++) {
            writeAny(list.get(i));
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void write0(char c) {
        throw new JSONException("unsupported operation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeAny(Object obj) {
        if (obj == null) {
            writeNull();
            return;
        }
        boolean z = (this.context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        Class<?> cls = obj.getClass();
        ObjectWriter objectWriter = this.context.provider.getObjectWriter(cls, cls, z);
        if (isBeanToArray()) {
            objectWriter.writeArrayMappingJSONB(this, obj, null, null, 0L);
        } else {
            objectWriter.writeJSONB(this, obj, null, null, 0L);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeArrayNull() {
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        if ((this.context.f12331k & (JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullListAsEmpty.mask)) != 0) {
            byte[] bArr = this.f12458g;
            int i2 = this.off;
            this.off = i2 + 1;
            bArr[i2] = -108;
            return;
        }
        byte[] bArr2 = this.f12458g;
        int i3 = this.off;
        this.off = i3 + 1;
        bArr2[i3] = JSONB.Constants.BC_NULL;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBase64(byte[] bArr) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBigInt(BigInteger bigInteger, long j) {
        if (bigInteger == null) {
            writeNull();
            return;
        }
        if (m7414H(bigInteger)) {
            int i = this.off;
            if (i == this.f12458g.length) {
                m7424j(i + 1);
            }
            byte[] bArr = this.f12458g;
            int i2 = this.off;
            this.off = i2 + 1;
            bArr[i2] = JSONB.Constants.BC_BIGINT_LONG;
            writeInt64(bigInteger.longValue());
            return;
        }
        byte[] byteArray = bigInteger.toByteArray();
        m7424j(this.off + 5 + byteArray.length);
        byte[] bArr2 = this.f12458g;
        int i3 = this.off;
        this.off = i3 + 1;
        bArr2[i3] = -69;
        writeInt32(byteArray.length);
        System.arraycopy(byteArray, 0, this.f12458g, this.off, byteArray.length);
        this.off += byteArray.length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBinary(byte[] bArr) {
        if (bArr == null) {
            writeNull();
            return;
        }
        m7424j(this.off + 6 + bArr.length);
        byte[] bArr2 = this.f12458g;
        int i = this.off;
        this.off = i + 1;
        bArr2[i] = JSONB.Constants.BC_BINARY;
        writeInt32(bArr.length);
        System.arraycopy(bArr, 0, this.f12458g, this.off, bArr.length);
        this.off += bArr.length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBool(boolean z) {
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        byte[] bArr = this.f12458g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = z ? JSONB.Constants.BC_TRUE : JSONB.Constants.BC_FALSE;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeChar(char c) {
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        byte[] bArr = this.f12458g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = JSONB.Constants.BC_CHAR;
        writeInt32(c);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeColon() {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeComma() {
        throw new JSONException("unsupported operation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTime14(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = this.off;
        int i8 = i7 + 8;
        m7424j(i8);
        byte[] bArr = this.f12458g;
        bArr[i7] = JSONB.Constants.BC_LOCAL_DATETIME;
        bArr[i7 + 1] = (byte) (i >>> 8);
        bArr[i7 + 2] = (byte) i;
        bArr[i7 + 3] = (byte) i2;
        bArr[i7 + 4] = (byte) i3;
        bArr[i7 + 5] = (byte) i4;
        bArr[i7 + 6] = (byte) i5;
        bArr[i7 + 7] = (byte) i6;
        this.off = i8;
        writeInt32(0);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTime19(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = this.off;
        int i8 = i7 + 8;
        m7424j(i8);
        byte[] bArr = this.f12458g;
        bArr[i7] = JSONB.Constants.BC_LOCAL_DATETIME;
        bArr[i7 + 1] = (byte) (i >>> 8);
        bArr[i7 + 2] = (byte) i;
        bArr[i7 + 3] = (byte) i2;
        bArr[i7 + 4] = (byte) i3;
        bArr[i7 + 5] = (byte) i4;
        bArr[i7 + 6] = (byte) i5;
        bArr[i7 + 7] = (byte) i6;
        this.off = i8;
        writeInt32(0);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateTimeISO8601(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        throw new JSONException("unsupported operation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateYYYMMDD10(int i, int i2, int i3) {
        throw new JSONException("unsupported operation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDateYYYMMDD8(int i, int i2, int i3) {
        int i4 = this.off;
        int i5 = i4 + 5;
        m7424j(i5);
        byte[] bArr = this.f12458g;
        bArr[i4] = JSONB.Constants.BC_LOCAL_DATE;
        bArr[i4 + 1] = (byte) (i >>> 8);
        bArr[i4 + 2] = (byte) i;
        bArr[i4 + 3] = (byte) i2;
        bArr[i4 + 4] = (byte) i3;
        this.off = i5;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDecimal(BigDecimal bigDecimal, long j, DecimalFormat decimalFormat) {
        if (bigDecimal == null) {
            writeNull();
            return;
        }
        int scale = bigDecimal.scale();
        BigInteger unscaledValue = bigDecimal.unscaledValue();
        if (scale == 0 && m7414H(unscaledValue)) {
            m7424j(this.off + 1);
            byte[] bArr = this.f12458g;
            int i = this.off;
            this.off = i + 1;
            bArr[i] = JSONB.Constants.BC_DECIMAL_LONG;
            writeInt64(unscaledValue.longValue());
            return;
        }
        m7424j(this.off + 1);
        byte[] bArr2 = this.f12458g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr2[i2] = JSONB.Constants.BC_DECIMAL;
        writeInt32(scale);
        if (m7423w(unscaledValue)) {
            writeInt32(unscaledValue.intValue());
        } else if (m7414H(unscaledValue)) {
            writeInt64(unscaledValue.longValue());
        } else {
            writeBigInt(unscaledValue, 0L);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDouble(double d) {
        if (d == 0.0d) {
            m7424j(this.off + 1);
            byte[] bArr = this.f12458g;
            int i = this.off;
            this.off = i + 1;
            bArr[i] = JSONB.Constants.BC_DOUBLE_NUM_0;
            return;
        }
        if (d == 1.0d) {
            m7424j(this.off + 1);
            byte[] bArr2 = this.f12458g;
            int i2 = this.off;
            this.off = i2 + 1;
            bArr2[i2] = JSONB.Constants.BC_DOUBLE_NUM_1;
            return;
        }
        if (d >= -2.147483648E9d && d <= 2.147483647E9d) {
            long j = (long) d;
            if (j == d) {
                m7424j(this.off + 1);
                byte[] bArr3 = this.f12458g;
                int i3 = this.off;
                this.off = i3 + 1;
                bArr3[i3] = JSONB.Constants.BC_DOUBLE_LONG;
                writeInt64(j);
                return;
            }
        }
        int i4 = this.off;
        int i5 = i4 + 9;
        m7424j(i5);
        byte[] bArr4 = this.f12458g;
        bArr4[i4] = JSONB.Constants.BC_DOUBLE;
        long doubleToLongBits = Double.doubleToLongBits(d);
        bArr4[i4 + 1] = (byte) (doubleToLongBits >>> 56);
        bArr4[i4 + 2] = (byte) (doubleToLongBits >>> 48);
        bArr4[i4 + 3] = (byte) (doubleToLongBits >>> 40);
        bArr4[i4 + 4] = (byte) (doubleToLongBits >>> 32);
        bArr4[i4 + 5] = (byte) (doubleToLongBits >>> 24);
        bArr4[i4 + 6] = (byte) (doubleToLongBits >>> 16);
        bArr4[i4 + 7] = (byte) (doubleToLongBits >>> 8);
        bArr4[i4 + 8] = (byte) doubleToLongBits;
        this.off = i5;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeEnum(Enum r7) {
        if (r7 == null) {
            writeNull();
            return;
        }
        long j = this.context.f12331k;
        if ((JSONWriter.Feature.WriteEnumUsingToString.mask & j) != 0) {
            writeString(r7.toString());
            return;
        }
        if ((j & JSONWriter.Feature.WriteEnumsUsingName.mask) != 0) {
            writeString(r7.name());
            return;
        }
        int ordinal = r7.ordinal();
        if (ordinal > 47) {
            writeInt32(ordinal);
            return;
        }
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        byte[] bArr = this.f12458g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = (byte) ordinal;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeFloat(float f) {
        int i = this.off;
        int i2 = i + 5;
        if (i2 >= this.f12458g.length) {
            m7424j(i2);
        }
        byte[] bArr = this.f12458g;
        int i3 = (int) f;
        if (i3 == f && f >= -262144.0f && f <= 262143.0f) {
            bArr[i] = JSONB.Constants.BC_FLOAT_INT;
            i2 = i + m7422j0(bArr, i + 1, i3) + 1;
        } else {
            bArr[i] = JSONB.Constants.BC_FLOAT;
            m7415I(bArr, i + 1, Float.floatToIntBits(f));
        }
        this.off = i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeHex(byte[] bArr) {
        writeBinary(bArr);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInstant(Instant instant) {
        if (instant == null) {
            writeNull();
            return;
        }
        m7424j(this.off + 1);
        byte[] bArr = this.f12458g;
        int i = this.off;
        this.off = i + 1;
        bArr[i] = JSONB.Constants.BC_TIMESTAMP;
        long epochSecond = instant.getEpochSecond();
        int nano = instant.getNano();
        writeInt64(epochSecond);
        writeInt32(nano);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt16(short[] sArr) {
        if (sArr == null) {
            writeNull();
            return;
        }
        startArray(sArr.length);
        for (short s : sArr) {
            writeInt32(s);
        }
        endArray();
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt32(int[] iArr) {
        if (iArr == null) {
            writeArrayNull();
            return;
        }
        int length = iArr.length;
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        if (length <= 15) {
            byte[] bArr = this.f12458g;
            int i2 = this.off;
            this.off = i2 + 1;
            bArr[i2] = (byte) (length - 108);
        } else {
            byte[] bArr2 = this.f12458g;
            int i3 = this.off;
            this.off = i3 + 1;
            bArr2[i3] = JSONB.Constants.BC_ARRAY;
            writeInt32(length);
        }
        int i4 = this.off;
        int length2 = (iArr.length * 5) + i4;
        if (length2 - this.f12458g.length > 0) {
            m7424j(length2);
        }
        byte[] bArr3 = this.f12458g;
        for (int i5 : iArr) {
            if (i5 >= -16 && i5 <= 47) {
                bArr3[i4] = (byte) i5;
                i4++;
            } else if (i5 >= -2048 && i5 <= 2047) {
                int i6 = i4 + 1;
                bArr3[i4] = (byte) ((i5 >> 8) + 56);
                i4 = i6 + 1;
                bArr3[i6] = (byte) i5;
            } else if (i5 >= -262144 && i5 <= 262143) {
                m7416M(bArr3, i4, i5);
                i4 += 3;
            } else {
                bArr3[i4] = JSONB.Constants.BC_INT32;
                m7415I(bArr3, i4 + 1, i5);
                i4 += 5;
            }
        }
        this.off = i4;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt64(long j) {
        int i = 9;
        int i2 = this.off + 9;
        if (i2 > this.f12458g.length) {
            m7424j(i2);
        }
        byte[] bArr = this.f12458g;
        int i3 = this.off;
        if (j >= -8 && j <= 15) {
            bArr[i3] = (byte) ((j - (-8)) - 40);
            i = 1;
        } else if (j >= -2048 && j <= 2047) {
            bArr[i3] = (byte) ((j >> 8) - 48);
            bArr[i3 + 1] = (byte) j;
            i = 2;
        } else if (j >= -262144 && j <= 262143) {
            m7418f0(bArr, i3, (int) j);
            i = 3;
        } else if (j >= ParserBase.f21225q && j <= 2147483647L) {
            bArr[i3] = -65;
            m7415I(bArr, i3 + 1, (int) j);
            i = 5;
        } else {
            bArr[i3] = JSONB.Constants.BC_INT64;
            m7417e0(bArr, i3 + 1, j);
        }
        this.off = i3 + i;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt8(byte b) {
        int i = this.off;
        int i2 = i + 2;
        if (i2 - this.f12458g.length > 0) {
            m7424j(i2);
        }
        byte[] bArr = this.f12458g;
        bArr[i] = JSONB.Constants.BC_INT8;
        bArr[i + 1] = b;
        this.off = i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeLocalDate(LocalDate localDate) {
        if (localDate == null) {
            writeNull();
            return;
        }
        int i = this.off;
        int i2 = i + 5;
        m7424j(i2);
        byte[] bArr = this.f12458g;
        bArr[i] = JSONB.Constants.BC_LOCAL_DATE;
        int year = localDate.getYear();
        bArr[i + 1] = (byte) (year >>> 8);
        bArr[i + 2] = (byte) year;
        bArr[i + 3] = (byte) localDate.getMonthValue();
        bArr[i + 4] = (byte) localDate.getDayOfMonth();
        this.off = i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeLocalDateTime(LocalDateTime localDateTime) {
        if (localDateTime == null) {
            writeNull();
            return;
        }
        int i = this.off;
        int i2 = i + 8;
        m7424j(i2);
        byte[] bArr = this.f12458g;
        bArr[i] = JSONB.Constants.BC_LOCAL_DATETIME;
        int year = localDateTime.getYear();
        bArr[i + 1] = (byte) (year >>> 8);
        bArr[i + 2] = (byte) year;
        bArr[i + 3] = (byte) localDateTime.getMonthValue();
        bArr[i + 4] = (byte) localDateTime.getDayOfMonth();
        bArr[i + 5] = (byte) localDateTime.getHour();
        bArr[i + 6] = (byte) localDateTime.getMinute();
        bArr[i + 7] = (byte) localDateTime.getSecond();
        this.off = i2;
        writeInt32(localDateTime.getNano());
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeLocalTime(LocalTime localTime) {
        if (localTime == null) {
            writeNull();
            return;
        }
        int i = this.off;
        int i2 = i + 4;
        m7424j(i2);
        byte[] bArr = this.f12458g;
        bArr[i] = JSONB.Constants.BC_LOCAL_TIME;
        bArr[i + 1] = (byte) localTime.getHour();
        bArr[i + 2] = (byte) localTime.getMinute();
        bArr[i + 3] = (byte) localTime.getSecond();
        this.off = i2;
        writeInt32(localTime.getNano());
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeMillis(long j) {
        int i = this.off;
        int i2 = i + 9;
        if (i2 >= this.f12458g.length) {
            m7424j(i2);
        }
        byte[] bArr = this.f12458g;
        if (j % 1000 == 0) {
            long j2 = j / 1000;
            if (j2 >= ParserBase.f21225q && j2 <= 2147483647L) {
                int i3 = (int) j2;
                bArr[i] = JSONB.Constants.BC_TIMESTAMP_SECONDS;
                bArr[i + 1] = (byte) (i3 >>> 24);
                bArr[i + 2] = (byte) (i3 >>> 16);
                bArr[i + 3] = (byte) (i3 >>> 8);
                bArr[i + 4] = (byte) i3;
                this.off = i + 5;
                return;
            }
            if (j2 % 60 == 0) {
                long j3 = j2 / 60;
                if (j3 >= ParserBase.f21225q && j3 <= 2147483647L) {
                    int i4 = (int) j3;
                    bArr[i] = JSONB.Constants.BC_TIMESTAMP_MINUTES;
                    bArr[i + 1] = (byte) (i4 >>> 24);
                    bArr[i + 2] = (byte) (i4 >>> 16);
                    bArr[i + 3] = (byte) (i4 >>> 8);
                    bArr[i + 4] = (byte) i4;
                    this.off = i + 5;
                    return;
                }
            }
        }
        bArr[i] = JSONB.Constants.BC_TIMESTAMP_MILLIS;
        bArr[i + 1] = (byte) (j >>> 56);
        bArr[i + 2] = (byte) (j >>> 48);
        bArr[i + 3] = (byte) (j >>> 40);
        bArr[i + 4] = (byte) (j >>> 32);
        bArr[i + 5] = (byte) (j >>> 24);
        bArr[i + 6] = (byte) (j >>> 16);
        bArr[i + 7] = (byte) (j >>> 8);
        bArr[i + 8] = (byte) j;
        this.off = i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeName(String str) {
        writeString(str);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(byte[] bArr, long j) {
        boolean z;
        int i;
        int i2;
        int i3 = this.off;
        int length = bArr.length + i3 + 2;
        if (length >= this.f12458g.length) {
            m7424j(length);
        }
        byte[] bArr2 = this.f12458g;
        SymbolTable symbolTable = this.symbolTable;
        if (symbolTable == null || (i2 = symbolTable.getOrdinalByHashCode(j)) == -1) {
            if ((this.context.f12331k & JSONWriter.Feature.WriteNameAsSymbol.mask) == 0) {
                System.arraycopy(bArr, 0, bArr2, i3, bArr.length);
                this.off = i3 + bArr.length;
                return;
            }
            TLongIntHashMap tLongIntHashMap = this.f12459h;
            if (tLongIntHashMap != null) {
                i = tLongIntHashMap.putIfAbsent(j, this.f12460i);
                int i4 = this.f12460i;
                if (i != i4) {
                    z = true;
                } else {
                    this.f12460i = i4 + 1;
                    z = false;
                }
            } else {
                TLongIntHashMap tLongIntHashMap2 = new TLongIntHashMap();
                this.f12459h = tLongIntHashMap2;
                int i5 = this.f12460i;
                this.f12460i = i5 + 1;
                tLongIntHashMap2.put(j, i5);
                z = false;
                i = i5;
            }
            if (!z) {
                int i6 = i3 + 1;
                bArr2[i3] = Byte.MAX_VALUE;
                System.arraycopy(bArr, 0, bArr2, i6, bArr.length);
                int length2 = i6 + bArr.length;
                this.off = length2;
                if (i >= -16 && i <= 47) {
                    this.off = length2 + 1;
                    bArr2[length2] = (byte) i;
                    return;
                } else {
                    writeInt32(i);
                    return;
                }
            }
            i2 = -i;
        }
        int i7 = i3 + 1;
        bArr2[i3] = Byte.MAX_VALUE;
        int i8 = -i2;
        if (i8 >= -16 && i8 <= 47) {
            bArr2[i7] = (byte) i8;
            this.off = i7 + 1;
        } else {
            this.off = i7;
            writeInt32(i8);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNull() {
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        byte[] bArr = this.f12458g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = JSONB.Constants.BC_NULL;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeOffsetDateTime(OffsetDateTime offsetDateTime) {
        if (offsetDateTime == null) {
            writeNull();
            return;
        }
        int i = this.off;
        int i2 = i + 8;
        m7424j(i2);
        byte[] bArr = this.f12458g;
        bArr[i] = JSONB.Constants.BC_TIMESTAMP_WITH_TIMEZONE;
        int year = offsetDateTime.getYear();
        bArr[i + 1] = (byte) (year >>> 8);
        bArr[i + 2] = (byte) year;
        bArr[i + 3] = (byte) offsetDateTime.getMonthValue();
        bArr[i + 4] = (byte) offsetDateTime.getDayOfMonth();
        bArr[i + 5] = (byte) offsetDateTime.getHour();
        bArr[i + 6] = (byte) offsetDateTime.getMinute();
        bArr[i + 7] = (byte) offsetDateTime.getSecond();
        this.off = i2;
        writeInt32(offsetDateTime.getNano());
        String id = offsetDateTime.getOffset().getId();
        if (id.equals(DateUtils.OFFSET_8_ZONE_ID_NAME)) {
            writeRaw(f12455p);
        } else {
            writeString(id);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeOffsetTime(OffsetTime offsetTime) {
        if (offsetTime == null) {
            writeNull();
        } else {
            writeOffsetDateTime(OffsetDateTime.of(DateUtils.LOCAL_DATE_19700101, offsetTime.toLocalTime(), offsetTime.getOffset()));
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(byte b) {
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        byte[] bArr = this.f12458g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = b;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeReference(String str) {
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        byte[] bArr = this.f12458g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = JSONB.Constants.BC_REFERENCE;
        if (str == this.lastReference) {
            writeString("#-1");
        } else {
            writeString(str);
        }
        this.lastReference = str;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(char[] cArr, int i, int i2, boolean z) {
        boolean z2;
        if (cArr == null) {
            writeNull();
            return;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                z2 = true;
                break;
            } else {
                if (cArr[i3 + i] > 255) {
                    z2 = false;
                    break;
                }
                i3++;
            }
        }
        if (!z2) {
            writeString(new String(cArr, i, i2));
            return;
        }
        if (i2 <= 47) {
            byte[] bArr = this.f12458g;
            int i4 = this.off;
            this.off = i4 + 1;
            bArr[i4] = (byte) (i2 + 73);
        } else {
            byte[] bArr2 = this.f12458g;
            int i5 = this.off;
            this.off = i5 + 1;
            bArr2[i5] = JSONB.Constants.BC_STR_ASCII;
            writeInt32(i2);
        }
        for (int i6 = 0; i6 < i2; i6++) {
            byte[] bArr3 = this.f12458g;
            int i7 = this.off;
            this.off = i7 + 1;
            bArr3[i7] = (byte) cArr[i + i6];
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeStringLatin1(byte[] bArr) {
        int m7419g0;
        if (bArr == null) {
            writeStringNull();
            return;
        }
        int i = this.off;
        int length = bArr.length;
        int length2 = bArr.length + i + 5 + 1;
        if (length2 - this.f12458g.length > 0) {
            m7424j(length2);
        }
        byte[] bArr2 = this.f12458g;
        if (length <= 47) {
            m7419g0 = i + 1;
            bArr2[i] = (byte) (length + 73);
        } else if (length <= 2047) {
            m7420h0(bArr2, i, length);
            m7419g0 = i + 3;
        } else {
            m7419g0 = m7419g0(bArr2, i, length) + i;
        }
        System.arraycopy(bArr, 0, bArr2, m7419g0, bArr.length);
        this.off = m7419g0 + length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeStringNull() {
        int i = this.off;
        if (i == this.f12458g.length) {
            m7424j(i + 1);
        }
        byte[] bArr = this.f12458g;
        int i2 = this.off;
        this.off = i2 + 1;
        bArr[i2] = JSONB.Constants.BC_NULL;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeStringUTF16(byte[] bArr) {
        int i = this.off;
        int length = bArr.length;
        int i2 = i + length + 6;
        if (i2 >= this.f12458g.length) {
            m7424j(i2);
        }
        byte[] bArr2 = this.f12458g;
        int i3 = i + 1;
        bArr2[i] = JDKUtils.BIG_ENDIAN ? (byte) 125 : JSONB.Constants.BC_STR_UTF16LE;
        int m7422j0 = i3 + m7422j0(bArr2, i3, length);
        System.arraycopy(bArr, 0, bArr2, m7422j0, length);
        this.off = m7422j0 + length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeSymbol(String str) {
        int ordinal;
        if (str == null) {
            writeNull();
            return;
        }
        SymbolTable symbolTable = this.symbolTable;
        if (symbolTable != null && (ordinal = symbolTable.getOrdinal(str)) >= 0) {
            writeRaw(Byte.MAX_VALUE);
            writeInt32(-ordinal);
        } else {
            writeString(str);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeTimeHHMMSS8(int i, int i2, int i3) {
        throw new JSONException("unsupported operation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeTypeName(String str) {
        int i;
        TLongIntHashMap tLongIntHashMap;
        int i2 = this.off;
        if (i2 == this.f12458g.length) {
            m7424j(i2 + 1);
        }
        byte[] bArr = this.f12458g;
        int i3 = this.off;
        this.off = i3 + 1;
        bArr[i3] = JSONB.Constants.BC_TYPED_ANY;
        long hashCode64 = Fnv.hashCode64(str);
        SymbolTable symbolTable = this.symbolTable;
        if (symbolTable != null) {
            i = symbolTable.getOrdinalByHashCode(hashCode64);
            if (i == -1 && (tLongIntHashMap = this.f12459h) != null) {
                i = tLongIntHashMap.get(hashCode64);
            }
        } else {
            TLongIntHashMap tLongIntHashMap2 = this.f12459h;
            i = tLongIntHashMap2 != null ? tLongIntHashMap2.get(hashCode64) : -1;
        }
        if (i == -1) {
            if (this.f12459h == null) {
                this.f12459h = new TLongIntHashMap();
            }
            TLongIntHashMap tLongIntHashMap3 = this.f12459h;
            int i4 = this.f12460i;
            this.f12460i = i4 + 1;
            tLongIntHashMap3.put(hashCode64, i4);
            writeString(str);
            writeInt32(i4);
            return;
        }
        int i5 = this.off;
        if (i5 == this.f12458g.length) {
            m7424j(i5 + 1);
        }
        writeInt32(i);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeUUID(UUID uuid) {
        if (uuid == null) {
            writeNull();
            return;
        }
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        int i = this.off;
        int i2 = i + 18;
        m7424j(i2);
        byte[] bArr = this.f12458g;
        bArr[i] = JSONB.Constants.BC_BINARY;
        bArr[i + 1] = 16;
        bArr[i + 2] = (byte) (mostSignificantBits >>> 56);
        bArr[i + 3] = (byte) (mostSignificantBits >>> 48);
        bArr[i + 4] = (byte) (mostSignificantBits >>> 40);
        bArr[i + 5] = (byte) (mostSignificantBits >>> 32);
        bArr[i + 6] = (byte) (mostSignificantBits >>> 24);
        bArr[i + 7] = (byte) (mostSignificantBits >>> 16);
        bArr[i + 8] = (byte) (mostSignificantBits >>> 8);
        bArr[i + 9] = (byte) mostSignificantBits;
        bArr[i + 10] = (byte) (leastSignificantBits >>> 56);
        bArr[i + 11] = (byte) (leastSignificantBits >>> 48);
        bArr[i + 12] = (byte) (leastSignificantBits >>> 40);
        bArr[i + 13] = (byte) (leastSignificantBits >>> 32);
        bArr[i + 14] = (byte) (leastSignificantBits >>> 24);
        bArr[i + 15] = (byte) (leastSignificantBits >>> 16);
        bArr[i + 16] = (byte) (leastSignificantBits >>> 8);
        bArr[i + 17] = (byte) leastSignificantBits;
        this.off = i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeZonedDateTime(ZonedDateTime zonedDateTime) {
        if (zonedDateTime == null) {
            writeNull();
            return;
        }
        int i = this.off;
        int i2 = i + 8;
        m7424j(i2);
        byte[] bArr = this.f12458g;
        bArr[i] = JSONB.Constants.BC_TIMESTAMP_WITH_TIMEZONE;
        int year = zonedDateTime.getYear();
        bArr[i + 1] = (byte) (year >>> 8);
        bArr[i + 2] = (byte) year;
        bArr[i + 3] = (byte) zonedDateTime.getMonthValue();
        bArr[i + 4] = (byte) zonedDateTime.getDayOfMonth();
        bArr[i + 5] = (byte) zonedDateTime.getHour();
        bArr[i + 6] = (byte) zonedDateTime.getMinute();
        bArr[i + 7] = (byte) zonedDateTime.getSecond();
        this.off = i2;
        writeInt32(zonedDateTime.getNano());
        String id = zonedDateTime.getZone().getId();
        if (id.equals(DateUtils.SHANGHAI_ZONE_ID_NAME)) {
            writeRaw(f12454o);
        } else {
            writeString(id);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public byte[] getBytes(Charset charset) {
        throw new JSONException("not support operator");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void startArray(Object obj, int i) {
        if (isWriteTypeInfo(obj)) {
            writeTypeName(obj.getClass().getName());
        }
        int i2 = this.off;
        if (i2 == this.f12458g.length) {
            m7424j(i2 + 1);
        }
        byte[] bArr = this.f12458g;
        boolean z = i <= 15;
        bArr[i2] = z ? (byte) (i - 108) : JSONB.Constants.BC_ARRAY;
        this.off = i2 + 1;
        if (z) {
            return;
        }
        writeInt32(i);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public int flushTo(OutputStream outputStream, Charset charset) throws IOException {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeBool(boolean[] zArr) {
        if (zArr == null) {
            writeNull();
            return;
        }
        startArray(zArr.length);
        for (boolean z : zArr) {
            writeBool(z);
        }
        endArray();
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(String str) {
        throw new JSONException("unsupported operation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(byte[] bArr) {
        int length = this.off + bArr.length;
        if (length - this.f12458g.length > 0) {
            m7424j(length);
        }
        System.arraycopy(bArr, 0, this.f12458g, this.off, bArr.length);
        this.off += bArr.length;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void write(Map map) {
        if (map == null) {
            writeNull();
            return;
        }
        startObject();
        for (Map.Entry entry : map.entrySet()) {
            writeAny(entry.getKey());
            writeAny(entry.getValue());
        }
        endObject();
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt16(short s) {
        int i = this.off;
        int i2 = i + 3;
        if (i2 >= this.f12458g.length) {
            m7424j(i2);
        }
        byte[] bArr = this.f12458g;
        bArr[i] = JSONB.Constants.BC_INT16;
        bArr[i + 1] = (byte) (s >>> 8);
        bArr[i + 2] = (byte) s;
        this.off = i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeSymbol(int i) {
        int i2 = this.off + 3;
        if (i2 >= this.f12458g.length) {
            m7424j(i2);
        }
        byte[] bArr = this.f12458g;
        int i3 = this.off;
        int i4 = i3 + 1;
        this.off = i4;
        bArr[i3] = Byte.MAX_VALUE;
        if (i >= -16 && i <= 47) {
            this.off = i4 + 1;
            bArr[i4] = (byte) i;
        } else {
            if (i >= -2048 && i <= 2047) {
                int i5 = i4 + 1;
                bArr[i4] = (byte) ((i >> 8) + 56);
                this.off = i5 + 1;
                bArr[i5] = (byte) i;
                return;
            }
            writeInt32(i);
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(char[] cArr) {
        boolean z;
        int m7422j0;
        int i;
        boolean z2;
        if (cArr == null) {
            writeNull();
            return;
        }
        int i2 = this.off;
        int length = cArr.length;
        int i3 = 0;
        if (cArr.length < 47) {
            int i4 = i2 + 1;
            int i5 = i4 + length;
            if (i5 - this.f12458g.length > 0) {
                m7424j(i5);
            }
            this.f12458g[i2] = (byte) (length + 73);
            int i6 = 0;
            while (true) {
                if (i6 >= cArr.length) {
                    z2 = true;
                    break;
                }
                char c = cArr[i6];
                if (c > 255) {
                    z2 = false;
                    break;
                } else {
                    this.f12458g[i4] = (byte) c;
                    i6++;
                    i4++;
                }
            }
            if (z2) {
                this.off = i4;
                return;
            } else {
                z = z2;
                i2 = this.off;
            }
        } else {
            z = true;
        }
        int length2 = cArr.length & (-4);
        int i7 = 0;
        while (i7 < length2) {
            char c2 = cArr[i7];
            char c3 = cArr[i7 + 1];
            char c4 = cArr[i7 + 2];
            char c5 = cArr[i7 + 3];
            if (c2 > 255 || c3 > 255 || c4 > 255 || c5 > 255) {
                z = false;
                break;
            }
            i7 += 4;
        }
        if (z) {
            while (true) {
                if (i7 >= cArr.length) {
                    break;
                }
                if (cArr[i7] > 255) {
                    z = false;
                    break;
                }
                i7++;
            }
        }
        int i8 = (z ? length : length * 3) + i2 + 5 + 1;
        if (i8 - this.f12458g.length > 0) {
            m7424j(i8);
        }
        if (z) {
            if (length <= 47) {
                i = i2 + 1;
                this.f12458g[i2] = (byte) (length + 73);
            } else if (length <= 2047) {
                m7420h0(this.f12458g, i2, length);
                i = i2 + 3;
            } else {
                i = i2 + m7419g0(this.f12458g, i2, length);
            }
            while (i3 < cArr.length) {
                this.f12458g[i] = (byte) cArr[i3];
                i3++;
                i++;
            }
        } else {
            int length3 = cArr.length * 3;
            int m7421i0 = m7421i0(length3);
            m7424j(length3 + i2 + m7421i0 + 1);
            int i9 = i2 + m7421i0 + 1;
            int encodeUTF8 = ((IOUtils.encodeUTF8(cArr, 0, cArr.length, this.f12458g, i9) - i2) - m7421i0) - 1;
            int m7421i02 = m7421i0(encodeUTF8);
            if (m7421i0 != m7421i02) {
                byte[] bArr = this.f12458g;
                System.arraycopy(bArr, i9, bArr, m7421i02 + i2 + 1, encodeUTF8);
            }
            byte[] bArr2 = this.f12458g;
            int i10 = i2 + 1;
            bArr2[i2] = JSONB.Constants.BC_STR_UTF8;
            if (encodeUTF8 >= -16 && encodeUTF8 <= 47) {
                m7422j0 = i10 + 1;
                bArr2[i10] = (byte) encodeUTF8;
            } else if (encodeUTF8 >= -2048 && encodeUTF8 <= 2047) {
                bArr2[i10] = (byte) ((encodeUTF8 >> 8) + 56);
                bArr2[i10 + 1] = (byte) encodeUTF8;
                m7422j0 = i10 + 2;
            } else {
                m7422j0 = m7422j0(bArr2, i10, encodeUTF8) + i10;
            }
            i = m7422j0 + encodeUTF8;
        }
        this.off = i;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeRaw(char c) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void startArray(int i) {
        int i2 = this.off;
        if (i2 == this.f12458g.length) {
            m7424j(i2 + 1);
        }
        byte[] bArr = this.f12458g;
        boolean z = i <= 15;
        bArr[i2] = z ? (byte) (i - 108) : JSONB.Constants.BC_ARRAY;
        this.off = i2 + 1;
        if (z) {
            return;
        }
        writeInt32(i);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeFloat(float[] fArr) {
        if (fArr == null) {
            writeNull();
            return;
        }
        startArray(fArr.length);
        for (float f : fArr) {
            writeFloat(f);
        }
        endArray();
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void write(JSONObject jSONObject) {
        if (jSONObject == null) {
            writeNull();
            return;
        }
        startObject();
        for (Map.Entry<String, Object> entry : jSONObject.entrySet()) {
            writeAny(entry.getKey());
            writeAny(entry.getValue());
        }
        endObject();
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt64(long[] jArr) {
        int m7422j0;
        if (jArr == null) {
            writeArrayNull();
            return;
        }
        int length = jArr.length;
        int i = this.off;
        int length2 = (jArr.length * 9) + i + 5;
        if (length2 >= this.f12458g.length) {
            m7424j(length2);
        }
        byte[] bArr = this.f12458g;
        if (length <= 15) {
            m7422j0 = i + 1;
            bArr[i] = (byte) (length - 108);
        } else {
            bArr[i] = JSONB.Constants.BC_ARRAY;
            m7422j0 = i + m7422j0(bArr, i + 1, length) + 1;
        }
        for (long j : jArr) {
            if (j >= -16 && j <= 47) {
                bArr[m7422j0] = (byte) j;
                m7422j0++;
            } else if (j >= -2048 && j <= 2047) {
                bArr[m7422j0] = (byte) ((j >> 8) - 48);
                bArr[m7422j0 + 1] = (byte) j;
                m7422j0 += 2;
            } else if (j >= -262144 && j <= 262143) {
                m7418f0(bArr, m7422j0, (int) j);
                m7422j0 += 3;
            } else if (j >= ParserBase.f21225q && j <= 2147483647L) {
                bArr[m7422j0] = -65;
                m7415I(bArr, m7422j0 + 1, (int) j);
                m7422j0 += 5;
            } else {
                bArr[m7422j0] = JSONB.Constants.BC_INT64;
                m7417e0(bArr, m7422j0 + 1, j);
                m7422j0 += 9;
            }
        }
        this.off = m7422j0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    @Override // com.alibaba.fastjson2.JSONWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean writeTypeName(byte[] r8, long r9) {
        /*
            r7 = this;
            com.alibaba.fastjson2.SymbolTable r0 = r7.symbolTable
            if (r0 == 0) goto L10
            int r0 = r0.getOrdinalByHashCode(r9)
            r1 = -1
            if (r0 == r1) goto L10
            boolean r7 = r7.m7425k0(r0)
            return r7
        L10:
            long r0 = r7.f12461j
            int r0 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L1b
            r9 = r1
        L19:
            r10 = r2
            goto L53
        L1b:
            com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap r0 = r7.f12459h
            if (r0 == 0) goto L2f
            int r3 = r7.f12460i
            int r9 = r0.putIfAbsent(r9, r3)
            int r10 = r7.f12460i
            if (r9 == r10) goto L2a
            goto L19
        L2a:
            int r10 = r10 + r2
            r7.f12460i = r10
        L2d:
            r10 = r1
            goto L53
        L2f:
            int r0 = r7.f12460i
            int r3 = r0 + 1
            r7.f12460i = r3
            if (r0 != 0) goto L39
            r7.f12461j = r9
        L39:
            if (r0 != 0) goto L4a
            com.alibaba.fastjson2.JSONWriter$Context r3 = r7.context
            long r3 = r3.f12331k
            com.alibaba.fastjson2.JSONWriter$Feature r5 = com.alibaba.fastjson2.JSONWriter.Feature.WriteNameAsSymbol
            long r5 = r5.mask
            long r3 = r3 & r5
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 == 0) goto L51
        L4a:
            com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap r3 = new com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap
            r3.<init>(r9, r0)
            r7.f12459h = r3
        L51:
            r9 = r0
            goto L2d
        L53:
            if (r10 == 0) goto L5a
            int r8 = -r9
            r7.m7425k0(r8)
            return r1
        L5a:
            int r10 = r7.off
            int r0 = r10 + 2
            int r3 = r8.length
            int r0 = r0 + r3
            byte[] r3 = r7.f12458g
            int r3 = r3.length
            if (r0 <= r3) goto L68
            r7.m7424j(r0)
        L68:
            byte[] r0 = r7.f12458g
            int r3 = r10 + 1
            r4 = -110(0xffffffffffffff92, float:NaN)
            r0[r10] = r4
            int r10 = r8.length
            java.lang.System.arraycopy(r8, r1, r0, r3, r10)
            int r8 = r8.length
            int r3 = r3 + r8
            r8 = -16
            if (r9 < r8) goto L85
            r8 = 47
            if (r9 > r8) goto L85
            byte r8 = (byte) r9
            r0[r3] = r8
            int r3 = r3 + r2
            r7.off = r3
            goto L8a
        L85:
            r7.off = r3
            r7.writeInt32(r9)
        L8a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1740j.writeTypeName(byte[], long):boolean");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeDouble(double[] dArr) {
        if (dArr == null) {
            writeNull();
            return;
        }
        startArray(dArr.length);
        for (double d : dArr) {
            writeDouble(d);
        }
        endArray();
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeInt32(int i) {
        int i2 = 5;
        int i3 = this.off + 5;
        if (i3 >= this.f12458g.length) {
            m7424j(i3);
        }
        byte[] bArr = this.f12458g;
        int i4 = this.off;
        if (i >= -16 && i <= 47) {
            bArr[i4] = (byte) i;
            i2 = 1;
        } else if (i >= -2048 && i <= 2047) {
            bArr[i4] = (byte) ((i >> 8) + 56);
            bArr[i4 + 1] = (byte) i;
            i2 = 2;
        } else if (i >= -262144 && i <= 262143) {
            m7416M(bArr, i4, i);
            i2 = 3;
        } else {
            bArr[i4] = JSONB.Constants.BC_INT32;
            m7415I(bArr, i4 + 1, i);
        }
        this.off += i2;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(byte[] bArr) {
        writeRaw(bArr);
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(char[] cArr) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeNameRaw(char[] cArr, int i, int i2) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(char[] cArr, int i, int i2) {
        boolean z;
        if (cArr == null) {
            writeNull();
            return;
        }
        if (i2 < 47) {
            int i3 = this.off;
            int i4 = i3 + 1 + i2;
            if (i4 - this.f12458g.length > 0) {
                m7424j(i4);
            }
            byte[] bArr = this.f12458g;
            int i5 = this.off;
            this.off = i5 + 1;
            bArr[i5] = (byte) (i2 + 73);
            int i6 = i;
            while (true) {
                if (i6 >= i2) {
                    z = true;
                    break;
                }
                char c = cArr[i6];
                if (c > 255) {
                    z = false;
                    break;
                }
                byte[] bArr2 = this.f12458g;
                int i7 = this.off;
                this.off = i7 + 1;
                bArr2[i7] = (byte) c;
                i6++;
            }
            if (z) {
                return;
            } else {
                this.off = i3;
            }
        } else {
            z = true;
        }
        int length = cArr.length & (-4);
        while (i < length) {
            char c2 = cArr[i];
            char c3 = cArr[i + 1];
            char c4 = cArr[i + 2];
            char c5 = cArr[i + 3];
            if (c2 > 255 || c3 > 255 || c4 > 255 || c5 > 255) {
                z = false;
                break;
            }
            i += 4;
        }
        if (z) {
            while (true) {
                if (i >= cArr.length) {
                    break;
                }
                if (cArr[i] > 255) {
                    z = false;
                    break;
                }
                i++;
            }
        }
        int i8 = (z ? i2 : i2 * 3) + this.off + 5 + 1;
        if (i8 - this.f12458g.length > 0) {
            m7424j(i8);
        }
        if (z) {
            if (i2 <= 47) {
                byte[] bArr3 = this.f12458g;
                int i9 = this.off;
                this.off = i9 + 1;
                bArr3[i9] = (byte) (i2 + 73);
            } else if (i2 <= 2047) {
                byte[] bArr4 = this.f12458g;
                int i10 = this.off;
                int i11 = i10 + 1;
                bArr4[i10] = JSONB.Constants.BC_STR_ASCII;
                int i12 = i11 + 1;
                bArr4[i11] = (byte) ((i2 >> 8) + 56);
                this.off = i12 + 1;
                bArr4[i12] = (byte) i2;
            } else {
                byte[] bArr5 = this.f12458g;
                int i13 = this.off;
                this.off = i13 + 1;
                bArr5[i13] = JSONB.Constants.BC_STR_ASCII;
                writeInt32(i2);
            }
            for (char c6 : cArr) {
                byte[] bArr6 = this.f12458g;
                int i14 = this.off;
                this.off = i14 + 1;
                bArr6[i14] = (byte) c6;
            }
            return;
        }
        int length2 = cArr.length * 3;
        int m7421i0 = m7421i0(length2);
        m7424j(this.off + length2 + m7421i0 + 1);
        int encodeUTF8 = ((IOUtils.encodeUTF8(cArr, 0, cArr.length, this.f12458g, (this.off + m7421i0) + 1) - this.off) - m7421i0) - 1;
        int m7421i02 = m7421i0(encodeUTF8);
        if (m7421i0 != m7421i02) {
            byte[] bArr7 = this.f12458g;
            int i15 = this.off;
            System.arraycopy(bArr7, m7421i0 + i15 + 1, bArr7, i15 + m7421i02 + 1, encodeUTF8);
        }
        byte[] bArr8 = this.f12458g;
        int i16 = this.off;
        int i17 = i16 + 1;
        this.off = i17;
        bArr8[i16] = JSONB.Constants.BC_STR_UTF8;
        if (encodeUTF8 >= -16 && encodeUTF8 <= 47) {
            this.off = i17 + 1;
            bArr8[i17] = (byte) encodeUTF8;
        } else if (encodeUTF8 >= -2048 && encodeUTF8 <= 2047) {
            int i18 = i17 + 1;
            bArr8[i17] = (byte) ((encodeUTF8 >> 8) + 56);
            this.off = i18 + 1;
            bArr8[i18] = (byte) encodeUTF8;
        } else {
            writeInt32(encodeUTF8);
        }
        this.off += encodeUTF8;
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(String[] strArr) {
        if (strArr == null) {
            writeArrayNull();
            return;
        }
        startArray(strArr.length);
        for (String str : strArr) {
            if (str == null) {
                if (isEnabled(JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullStringAsEmpty.mask)) {
                    writeString("");
                } else {
                    writeNull();
                }
            } else {
                writeString(str);
            }
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(List<String> list) {
        if (list == null) {
            writeArrayNull();
            return;
        }
        int size = list.size();
        startArray(size);
        for (int i = 0; i < size; i++) {
            writeString(list.get(i));
        }
    }

    @Override // com.alibaba.fastjson2.JSONWriter
    public void writeString(String str) {
        if (str == null) {
            writeNull();
        } else {
            writeString(str.toCharArray());
        }
    }
}
