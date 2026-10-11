package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplInt32Array;
import com.alibaba.fastjson2.reader.ObjectReaderImplInt32ValueArray;
import com.alibaba.fastjson2.reader.ObjectReaderImplInt64Array;
import com.alibaba.fastjson2.reader.ObjectReaderImplInt64ValueArray;
import com.alibaba.fastjson2.reader.ObjectReaderImplStringArray;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.common.base.Ascii;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.t4h;
import com.twelvemonkeys.image.ImageUtil;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Supplier;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;
import sun.misc.Unsafe;

/* renamed from: com.alibaba.fastjson2.g */
/* loaded from: classes3.dex */
public final class C1737g extends JSONReader {

    /* renamed from: A0 */
    public static Charset f12404A0;

    /* renamed from: J */
    public byte f12408J;

    /* renamed from: O */
    public int f12409O;

    /* renamed from: Q */
    public byte[] f12410Q;

    /* renamed from: Z */
    public char[] f12411Z;

    /* renamed from: k0 */
    public final JSONFactory.C1722b f12412k0;

    /* renamed from: q0 */
    public final SymbolTable f12413q0;

    /* renamed from: t0 */
    public long f12414t0;

    /* renamed from: u0 */
    public int f12415u0;

    /* renamed from: v */
    public final byte[] f12416v;

    /* renamed from: v0 */
    public int f12417v0;

    /* renamed from: w */
    public final int f12418w;

    /* renamed from: w0 */
    public byte f12419w0;

    /* renamed from: x */
    public final int f12420x;

    /* renamed from: x0 */
    public long[] f12421x0;

    /* renamed from: y */
    public byte f12422y;

    /* renamed from: z */
    public int f12423z;

    /* renamed from: y0 */
    public static final long f12406y0 = JDKUtils.UNSAFE.arrayBaseOffset(byte[].class);

    /* renamed from: z0 */
    public static final byte[] f12407z0 = JSONB.toBytes(DateUtils.SHANGHAI_ZONE_ID_NAME);

    /* renamed from: B0 */
    public static final byte[] f12405B0 = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 3, 3, 0, 5, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, Ascii.SUB, Ascii.ESC, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, Cea608Decoder.f26815X, Cea608Decoder.f26816Y, 40, 41, 42, 43, 44, 45, Cea608Decoder.f26822e0, 47, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 5, 0, 0, 1, 1, 1, 0, 0, 0, 9, 0, 5, 0, 0, 0, 0, 3, 2, 9, 5, 3, 3, 3, 3, 3, 3, 3, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};

    public C1737g(JSONReader.Context context, InputStream inputStream) {
        super(context, true);
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b[] c1722bArr = JSONFactory.f12217A;
        JSONFactory.C1722b c1722b = c1722bArr[identityHashCode & (c1722bArr.length - 1)];
        this.f12412k0 = c1722b;
        byte[] andSet = JSONFactory.f12220D.getAndSet(c1722b, null);
        andSet = andSet == null ? new byte[context.f12304m] : andSet;
        int i = 0;
        while (true) {
            try {
                int read = inputStream.read(andSet, i, andSet.length - i);
                if (read == -1) {
                    this.f12416v = andSet;
                    this.offset = 0;
                    this.f12418w = i;
                    this.f12420x = i;
                    this.f12413q0 = context.symbolTable;
                    return;
                }
                i += read;
                if (i == andSet.length) {
                    andSet = Arrays.copyOf(andSet, andSet.length + context.f12304m);
                }
            } catch (IOException e) {
                throw new JSONException("read error", e);
            }
        }
    }

    /* renamed from: Q0 */
    public static JSONException m7374Q0(int i) {
        throw new JSONException("type ref not found : " + i);
    }

    /* renamed from: o0 */
    public static int m7375o0(byte[] bArr, int i, int i2) {
        return ((i2 - 68) << 16) + ((bArr[i] & 255) << 8) + (bArr[i + 1] & 255);
    }

    /* renamed from: t0 */
    public static JSONException m7376t0(byte b) {
        return new JSONException("name not support input : " + JSONB.typeName(b));
    }

    /* renamed from: A0 */
    public final String m7377A0() {
        this.f12423z = m7382F0();
        this.f12409O = this.offset;
        if (f12404A0 != null) {
            return null;
        }
        f12404A0 = Charset.forName(TTFFont.CHARSET_GB18030);
        return null;
    }

    /* renamed from: B0 */
    public final int m7378B0(byte[] bArr, byte b) {
        if (b >= -40 && b <= -17) {
            return (b - (-40)) - 8;
        }
        if (b >= -56 && b <= -41) {
            int i = this.offset;
            this.offset = i + 1;
            return ((b + 48) << 8) + (bArr[i] & 255);
        }
        if (b >= -64 && b <= -57) {
            int i2 = (b + DeletedRef3DPtg.sid) << 16;
            int i3 = this.offset;
            int i4 = i3 + 1;
            int i5 = i2 + ((bArr[i3] & 255) << 8);
            this.offset = i4 + 1;
            return i5 + (bArr[i4] & 255);
        }
        if (b != -84 && b != -83) {
            if (b == -71) {
                int readInt32Value = readInt32Value();
                BigInteger readBigInteger = readBigInteger();
                return (readInt32Value == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value)).intValue();
            }
            if (b == 124) {
                int readInt32Value2 = readInt32Value();
                String str = new String(bArr, this.offset, readInt32Value2, StandardCharsets.UTF_16LE);
                this.offset += readInt32Value2;
                return str.indexOf(46) == -1 ? new BigInteger(str).intValue() : TypeUtils.toBigDecimal(str).intValue();
            }
            if (b == 121) {
                int readInt32Value3 = readInt32Value();
                String m7395p0 = m7395p0(this.offset, readInt32Value3);
                this.offset += readInt32Value3;
                return m7395p0.indexOf(46) == -1 ? new BigInteger(m7395p0).intValue() : TypeUtils.toBigDecimal(m7395p0).intValue();
            }
            if (b == 122) {
                int readInt32Value4 = readInt32Value();
                String str2 = new String(bArr, this.offset, readInt32Value4, StandardCharsets.UTF_8);
                this.offset += readInt32Value4;
                return str2.indexOf(46) == -1 ? new BigInteger(str2).intValue() : TypeUtils.toBigDecimal(str2).intValue();
            }
            switch (b) {
                case -81:
                    if ((this.context.features & JSONReader.Feature.ErrorOnNullForPrimitives.mask) != 0) {
                        throw new JSONException(info("int value not support input null"));
                    }
                    this.wasNull = true;
                    return 0;
                case -80:
                case -78:
                    return 0;
                case -79:
                case -77:
                    return 1;
                case -76:
                    return (int) readInt64Value();
                case -75:
                    this.offset--;
                    return (int) readDoubleValue();
                case -74:
                    return readInt32Value();
                case -73:
                    int i6 = IOUtils.getInt(bArr, this.offset);
                    this.offset += 4;
                    return (int) Float.intBitsToFloat(i6);
                default:
                    switch (b) {
                        case -68:
                            int i7 = this.offset;
                            int i8 = (bArr[i7 + 1] & 255) + (bArr[i7] << 8);
                            this.offset = i7 + 2;
                            return i8;
                        case -67:
                            int i9 = this.offset;
                            this.offset = i9 + 1;
                            return bArr[i9];
                        case -66:
                            long j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                            this.offset += 8;
                            if (!JDKUtils.BIG_ENDIAN) {
                                j = Long.reverseBytes(j);
                            }
                            return (int) j;
                        case -65:
                            break;
                        default:
                            if (b >= 73 && b <= 120) {
                                int i10 = b - 73;
                                String m7395p02 = m7395p0(this.offset, i10);
                                this.offset += i10;
                                return m7395p02.indexOf(46) == -1 ? new BigInteger(m7395p02).intValue() : TypeUtils.toBigDecimal(m7395p02).intValue();
                            }
                            throw new JSONException("readInt32Value not support " + JSONB.typeName(b) + ", offset " + this.offset + "/" + bArr.length);
                    }
            }
        }
        int i11 = IOUtils.getInt(bArr, this.offset);
        this.offset += 4;
        return i11;
    }

    /* renamed from: C0 */
    public final JSONException m7379C0(byte b) {
        throw new JSONException("readInt32Value not support " + JSONB.typeName(b) + ", offset " + this.offset + "/" + this.f12416v.length);
    }

    /* renamed from: D0 */
    public final long m7380D0(byte[] bArr, byte b) {
        long j;
        if (b >= 48 && b <= 63) {
            int i = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
            this.offset = this.offset + 1;
            return i + (bArr[r0] & 255);
        }
        if (b >= -16 && b <= 47) {
            return b;
        }
        if (b >= 64 && b <= 71) {
            int m7375o0 = m7375o0(bArr, this.offset, b);
            this.offset += 2;
            return m7375o0;
        }
        if (b == -71) {
            int readInt32Value = readInt32Value();
            BigInteger readBigInteger = readBigInteger();
            return (readInt32Value == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value)).longValue();
        }
        if (b == 72) {
            int i2 = IOUtils.getInt(bArr, this.offset);
            this.offset += 4;
            return i2;
        }
        if (b == 124) {
            int readInt32Value2 = readInt32Value();
            String str = new String(bArr, this.offset, readInt32Value2, StandardCharsets.UTF_16LE);
            this.offset += readInt32Value2;
            return str.indexOf(46) == -1 ? new BigInteger(str).intValue() : TypeUtils.toBigDecimal(str).intValue();
        }
        if (b == -68) {
            int i3 = this.offset;
            int i4 = (bArr[i3 + 1] & 255) + (bArr[i3] << 8);
            this.offset = i3 + 2;
            return i4;
        }
        if (b == -67) {
            this.offset = this.offset + 1;
            return bArr[r7];
        }
        if (b == 121) {
            int readInt32Value3 = readInt32Value();
            String m7395p0 = m7395p0(this.offset, readInt32Value3);
            this.offset += readInt32Value3;
            return m7395p0.indexOf(46) == -1 ? new BigInteger(m7395p0).intValue() : TypeUtils.toBigDecimal(m7395p0).intValue();
        }
        if (b == 122) {
            int readInt32Value4 = readInt32Value();
            String str2 = new String(bArr, this.offset, readInt32Value4, StandardCharsets.UTF_8);
            this.offset += readInt32Value4;
            return str2.indexOf(46) == -1 ? new BigInteger(str2).intValue() : TypeUtils.toBigDecimal(str2).intValue();
        }
        switch (b) {
            case -85:
                long j2 = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                this.offset += 8;
                return JDKUtils.BIG_ENDIAN ? j2 : Long.reverseBytes(j2);
            case -84:
                j = IOUtils.getInt(bArr, this.offset);
                this.offset += 4;
                break;
            case -83:
                long j3 = IOUtils.getInt(bArr, this.offset);
                this.offset += 4;
                j = j3 * 60;
                break;
            default:
                switch (b) {
                    case -81:
                        if ((this.context.features & JSONReader.Feature.ErrorOnNullForPrimitives.mask) != 0) {
                            throw new JSONException(info("long value not support input null"));
                        }
                        this.wasNull = true;
                        return 0L;
                    case -80:
                    case -78:
                        return 0L;
                    case -79:
                    case -77:
                        return 1L;
                    case -76:
                        return readInt64Value();
                    case -75:
                        this.offset--;
                        return (long) readDoubleValue();
                    case -74:
                        return readInt32Value();
                    case -73:
                        int i5 = IOUtils.getInt(bArr, this.offset);
                        this.offset += 4;
                        return Float.intBitsToFloat(i5);
                    default:
                        if (b >= 73 && b <= 120) {
                            int i6 = b - 73;
                            String m7395p02 = m7395p0(this.offset, i6);
                            this.offset += i6;
                            return m7395p02.indexOf(46) == -1 ? new BigInteger(m7395p02).longValue() : TypeUtils.toBigDecimal(m7395p02).longValue();
                        }
                        throw new JSONException("readInt64Value not support " + JSONB.typeName(b) + ", offset " + this.offset + "/" + bArr.length);
                }
        }
        return j * 1000;
    }

    /* renamed from: E0 */
    public final JSONException m7381E0(byte b) {
        throw new JSONException("readInt64Value not support " + JSONB.typeName(b) + ", offset " + this.offset + "/" + this.f12416v.length);
    }

    /* renamed from: F0 */
    public int m7382F0() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        if (b >= -16 && b <= 47) {
            return b;
        }
        if (b >= 48 && b <= 63) {
            int i3 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
            this.offset = i2 + 1;
            return i3 + (bArr[i2] & 255);
        }
        if (b >= 64 && b <= 71) {
            int m7375o0 = m7375o0(bArr, i2, b);
            this.offset += 2;
            return m7375o0;
        }
        if (b != 72) {
            throw m7376t0(b);
        }
        int i4 = IOUtils.getInt(bArr, i2);
        this.offset += 4;
        if (i4 <= 268435456) {
            return i4;
        }
        throw new JSONException("input length overflow");
    }

    /* renamed from: G0 */
    public final LocalDate m7383G0(int i) {
        if (i < 73 || i > 120) {
            if (i == 122 || i == 121) {
                this.f12408J = (byte) i;
                this.offset++;
                int m7382F0 = m7382F0();
                this.f12423z = m7382F0;
                switch (m7382F0) {
                    case 8:
                        return readLocalDate8();
                    case 9:
                        return readLocalDate9();
                    case 10:
                        return readLocalDate10();
                    case 11:
                        return readLocalDate11();
                }
            }
            throw new UnsupportedOperationException();
        }
        int stringLength = getStringLength();
        switch (stringLength) {
            case 8:
                return readLocalDate8();
            case 9:
                return readLocalDate9();
            case 10:
                return readLocalDate10();
            case 11:
                return readLocalDate11();
            default:
                throw new JSONException("TODO : " + stringLength + ", " + readString());
        }
    }

    /* JADX WARN: Type inference failed for: r3v13, types: [java.time.LocalDateTime] */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.time.LocalDateTime] */
    /* renamed from: H0 */
    public final LocalDateTime m7384H0(int i) {
        if (i == -86) {
            return readZonedDateTime().toLocalDateTime();
        }
        if (i < 73 || i > 120) {
            throw new JSONException("not support type : " + JSONB.typeName((byte) i));
        }
        int stringLength = getStringLength();
        switch (stringLength) {
            case 8:
                LocalDate readLocalDate8 = readLocalDate8();
                if (readLocalDate8 == null) {
                    return null;
                }
                return LocalDateTime.of(readLocalDate8, LocalTime.MIN);
            case 9:
                LocalDate readLocalDate9 = readLocalDate9();
                if (readLocalDate9 == null) {
                    return null;
                }
                return LocalDateTime.of(readLocalDate9, LocalTime.MIN);
            case 10:
                LocalDate readLocalDate10 = readLocalDate10();
                if (readLocalDate10 == null) {
                    return null;
                }
                return LocalDateTime.of(readLocalDate10, LocalTime.MIN);
            case 11:
                LocalDate readLocalDate11 = readLocalDate11();
                if (readLocalDate11 == null) {
                    return null;
                }
                return LocalDateTime.of(readLocalDate11, LocalTime.MIN);
            case 16:
                return readLocalDateTime16();
            case 17:
                return readLocalDateTime17();
            case 18:
                return readLocalDateTime18();
            case 19:
                return readLocalDateTime19();
            case 20:
                return readLocalDateTime20();
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
                LocalDateTime readLocalDateTimeX = readLocalDateTimeX(stringLength);
                if (readLocalDateTimeX != null) {
                    return readLocalDateTimeX;
                }
                ZonedDateTime readZonedDateTimeX = readZonedDateTimeX(stringLength);
                if (readZonedDateTimeX != null) {
                    return readZonedDateTimeX.toLocalDateTime();
                }
                break;
        }
        throw new JSONException("TODO : " + stringLength + ", " + readString());
    }

    /* renamed from: I0 */
    public final JSONException m7385I0() {
        throw new JSONException("string value not support input " + JSONB.typeName(this.f12422y) + " offset " + this.offset + "/" + this.f12416v.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* renamed from: J0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m7386J0() {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.m7386J0():java.lang.String");
    }

    /* renamed from: K0 */
    public final String m7387K0() {
        byte b = this.f12408J;
        if (b >= -16 && b <= 47) {
            return Byte.toString(b);
        }
        if (b >= 48 && b <= 63) {
            int i = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
            byte[] bArr = this.f12416v;
            int i2 = this.offset;
            this.offset = i2 + 1;
            return Integer.toString(i + (bArr[i2] & 255));
        }
        if (b >= 64 && b <= 71) {
            int m7375o0 = m7375o0(this.f12416v, this.offset, b);
            this.offset += 2;
            return Integer.toString(m7375o0);
        }
        if (b >= -40 && b <= -17) {
            return Integer.toString((b - (-40)) - 8);
        }
        if (b >= -56 && b <= -41) {
            byte[] bArr2 = this.f12416v;
            int i3 = this.offset;
            this.offset = i3 + 1;
            return Integer.toString(((b + 48) << 8) + (bArr2[i3] & 255));
        }
        if (b >= -64 && b <= -57) {
            int i4 = (b + DeletedRef3DPtg.sid) << 16;
            byte[] bArr3 = this.f12416v;
            int i5 = this.offset;
            int i6 = i5 + 1;
            int i7 = i4 + ((bArr3[i5] & 255) << 8);
            this.offset = i6 + 1;
            return Integer.toString(i7 + (bArr3[i6] & 255));
        }
        if (b == -110) {
            this.offset--;
            Object readAny = readAny();
            if (readAny == null) {
                return null;
            }
            return JSON.toJSONString(readAny, JSONWriter.Feature.WriteThrowableClassName);
        }
        if (b == -81) {
            return null;
        }
        if (b != 72) {
            if (b == -66) {
                long j = JDKUtils.UNSAFE.getLong(this.f12416v, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                if (!JDKUtils.BIG_ENDIAN) {
                    j = Long.reverseBytes(j);
                }
                this.offset += 8;
                return Long.toString(j);
            }
            if (b != -65) {
                switch (b) {
                    case -85:
                        long j2 = JDKUtils.UNSAFE.getLong(this.f12416v, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                        this.offset += 8;
                        if (!JDKUtils.BIG_ENDIAN) {
                            j2 = Long.reverseBytes(j2);
                        }
                        return DateUtils.toString(j2, false, DateUtils.DEFAULT_ZONE_ID);
                    case -84:
                        long j3 = IOUtils.getInt(this.f12416v, this.offset);
                        this.offset += 4;
                        return DateUtils.toString(j3 * 1000, false, DateUtils.DEFAULT_ZONE_ID);
                    case -83:
                        long j4 = IOUtils.getInt(this.f12416v, this.offset);
                        this.offset += 4;
                        return DateUtils.toString(j4 * 60 * 1000, false, DateUtils.DEFAULT_ZONE_ID);
                    default:
                        switch (b) {
                            case -78:
                                return "0.0";
                            case -77:
                                return "1.0";
                            case -76:
                                return Double.toString(readInt64Value());
                            case -75:
                                long j5 = JDKUtils.UNSAFE.getLong(this.f12416v, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                                this.offset += 8;
                                if (!JDKUtils.BIG_ENDIAN) {
                                    j5 = Long.reverseBytes(j5);
                                }
                                return Double.toString(Double.longBitsToDouble(j5));
                            case -74:
                                return Float.toString(readInt32Value());
                            case -73:
                                int i8 = IOUtils.getInt(this.f12416v, this.offset);
                                this.offset += 4;
                                return Float.toString(Float.intBitsToFloat(i8));
                            case -72:
                            case -70:
                                return Long.toString(readInt64Value());
                            case -71:
                                int readInt32Value = readInt32Value();
                                BigInteger readBigInteger = readBigInteger();
                                return (readInt32Value == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value)).toString();
                            case -69:
                                int readInt32Value2 = readInt32Value();
                                byte[] bArr4 = new byte[readInt32Value2];
                                System.arraycopy(this.f12416v, this.offset, bArr4, 0, readInt32Value2);
                                this.offset += readInt32Value2;
                                return new BigInteger(bArr4).toString();
                            default:
                                throw m7398s0();
                        }
                }
            }
        }
        long j6 = IOUtils.getInt(this.f12416v, this.offset);
        this.offset += 4;
        return Long.toString(j6);
    }

    /* renamed from: L0 */
    public final String m7388L0() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        byte b = bArr[i];
        if (b >= -16 && b <= 47) {
            this.offset = i + 1;
            this.f12423z = b;
        } else if (b < 48 || b > 63) {
            this.f12423z = m7382F0();
        } else {
            int i2 = i + 1;
            int i3 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
            this.offset = i2 + 1;
            this.f12423z = i3 + (bArr[i2] & 255);
        }
        this.f12409O = this.offset;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x026b A[LOOP:3: B:132:0x026b->B:134:0x026f, LOOP_START, PHI: r4 r20
      0x026b: PHI (r4v10 int) = (r4v7 int), (r4v11 int) binds: [B:130:0x0266, B:134:0x026f] A[DONT_GENERATE, DONT_INLINE]
      0x026b: PHI (r20v3 long) = (r20v0 long), (r20v4 long) binds: [B:130:0x0266, B:134:0x026f] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: M0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m7389M0() {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.m7389M0():long");
    }

    /* renamed from: N0 */
    public final String m7390N0() {
        this.f12423z = m7382F0();
        this.f12409O = this.offset;
        return null;
    }

    /* renamed from: O0 */
    public final String m7391O0() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        byte b = bArr[i];
        if (b >= -16 && b <= 47) {
            this.offset = i + 1;
            this.f12423z = b;
        } else if (b < 48 || b > 63) {
            this.f12423z = m7382F0();
        } else {
            int i2 = i + 1;
            int i3 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
            this.offset = i2 + 1;
            this.f12423z = i3 + (bArr[i2] & 255);
        }
        this.f12409O = this.offset;
        if (this.f12423z == 0) {
            return "";
        }
        return null;
    }

    /* renamed from: P0 */
    public final ZonedDateTime m7392P0(int i) {
        if (i == -88) {
            byte[] bArr = this.f12416v;
            int i2 = this.offset;
            int i3 = i2 + 1;
            int i4 = i3 + 1;
            int i5 = (bArr[i2] << 8) + (bArr[i3] & 255);
            int i6 = i4 + 1;
            byte b = bArr[i4];
            int i7 = i6 + 1;
            byte b2 = bArr[i6];
            int i8 = i7 + 1;
            byte b3 = bArr[i7];
            int i9 = i8 + 1;
            byte b4 = bArr[i8];
            this.offset = i9 + 1;
            return ZonedDateTime.of(LocalDateTime.of(i5, b, b2, b3, b4, bArr[i9], readInt32Value()), DateUtils.DEFAULT_ZONE_ID);
        }
        if (i == -87) {
            byte[] bArr2 = this.f12416v;
            int i10 = this.offset;
            int i11 = i10 + 1;
            int i12 = i11 + 1;
            int i13 = (bArr2[i10] << 8) + (bArr2[i11] & 255);
            int i14 = i12 + 1;
            byte b5 = bArr2[i12];
            this.offset = i14 + 1;
            return ZonedDateTime.of(LocalDate.of(i13, b5, bArr2[i14]), LocalTime.MIN, DateUtils.DEFAULT_ZONE_ID);
        }
        if (i != -66) {
            switch (i) {
                case -85:
                    break;
                case -84:
                    long j = IOUtils.getInt(this.f12416v, this.offset);
                    this.offset += 4;
                    return ZonedDateTime.ofInstant(Instant.ofEpochSecond(j), DateUtils.DEFAULT_ZONE_ID);
                case -83:
                    long j2 = IOUtils.getInt(this.f12416v, this.offset);
                    this.offset += 4;
                    return ZonedDateTime.ofInstant(Instant.ofEpochSecond(j2 * 60), DateUtils.DEFAULT_ZONE_ID);
                case -82:
                    return ZonedDateTime.ofInstant(Instant.ofEpochSecond(readInt64Value(), readInt32Value()), DateUtils.DEFAULT_ZONE_ID);
                case -81:
                    return null;
                default:
                    if (i >= 73 && i <= 120) {
                        this.offset--;
                        return readZonedDateTimeX(i - 73);
                    }
                    throw new JSONException("type not support : " + JSONB.typeName((byte) i));
            }
        }
        long j3 = JDKUtils.UNSAFE.getLong(this.f12416v, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
        this.offset += 8;
        if (!JDKUtils.BIG_ENDIAN) {
            j3 = Long.reverseBytes(j3);
        }
        return ZonedDateTime.ofInstant(Instant.ofEpochMilli(j3), DateUtils.DEFAULT_ZONE_ID);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public ObjectReader checkAutoType(Class cls, long j, long j2) {
        Class objectClass;
        ClassLoader classLoader;
        ClassLoader contextClassLoader;
        ObjectReader objectReader;
        ObjectReader objectReader2;
        Class objectClass2;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        ObjectReader objectReader3 = null;
        if (bArr[i] == -110) {
            this.offset = i + 1;
            long readTypeHashCode = readTypeHashCode();
            JSONReader.Context context = this.context;
            ObjectReaderProvider objectReaderProvider = context.provider;
            if (j == readTypeHashCode && (objectClass2 = (objectReader2 = context.getObjectReader(cls)).getObjectClass()) != null && objectClass2 == cls) {
                objectReaderProvider.registerIfAbsent(readTypeHashCode, objectReader2);
                return objectReader2;
            }
            JSONReader.AutoTypeBeforeHandler autoTypeBeforeHandler = this.context.f12311t;
            if (autoTypeBeforeHandler != null) {
                Class<?> apply = autoTypeBeforeHandler.apply(readTypeHashCode, (Class<?>) cls, j2);
                if (apply == null) {
                    apply = autoTypeBeforeHandler.apply(getString(), (Class<?>) cls, j2);
                }
                if (apply != null && (objectReader = this.context.getObjectReader(apply)) != null) {
                    return objectReader;
                }
            }
            long j3 = this.context.features | j2;
            if ((JSONReader.Feature.SupportAutoType.mask & j3) == 0) {
                if ((JSONReader.Feature.ErrorOnNotSupportAutoType.mask & j3) == 0) {
                    return null;
                }
                m7393m0();
            }
            ObjectReader objectReader4 = objectReaderProvider.getObjectReader(readTypeHashCode);
            if (objectReader4 != null && (objectClass = objectReader4.getObjectClass()) != null && (classLoader = objectClass.getClassLoader()) != null && classLoader != (contextClassLoader = Thread.currentThread().getContextClassLoader())) {
                objectReader4 = m7397r0(objectReader4, objectClass, contextClassLoader);
            }
            if (objectReader4 == null) {
                ObjectReader objectReader5 = objectReaderProvider.getObjectReader(getString(), cls, j3);
                if (objectReader5 == null) {
                    m7393m0();
                }
                objectReader3 = objectReader5;
            } else {
                objectReader3 = objectReader4;
            }
            this.f12422y = this.f12416v[this.offset];
        }
        return objectReader3;
    }

    @Override // com.alibaba.fastjson2.JSONReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        byte[] bArr = this.f12410Q;
        if (bArr != null && bArr.length < 1048576) {
            JSONFactory.f12220D.lazySet(this.f12412k0, bArr);
        }
        char[] cArr = this.f12411Z;
        if (cArr == null || cArr.length >= 1048576) {
            return;
        }
        JSONFactory.f12219C.lazySet(this.f12412k0, cArr);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String getFieldName() {
        return getString();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x003c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008b  */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getNameHashCodeLCase() {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.getNameHashCodeLCase():long");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String getString() {
        Charset charset;
        byte b = this.f12408J;
        if (b == -81) {
            return null;
        }
        int i = this.f12423z;
        if (i < 0) {
            return this.f12413q0.getName(-i);
        }
        if (b == 121 || (b >= 73 && b <= 120)) {
            charset = StandardCharsets.ISO_8859_1;
            if (JDKUtils.ANDROID_SDK_INT < 34) {
                int i2 = this.f12409O;
                char[] cArr = this.f12411Z;
                if (cArr == null) {
                    cArr = JSONFactory.f12219C.getAndSet(this.f12412k0, null);
                    this.f12411Z = cArr;
                }
                if (cArr == null || cArr.length < this.f12423z) {
                    cArr = new char[this.f12423z];
                    this.f12411Z = cArr;
                }
                int i3 = 0;
                while (true) {
                    int i4 = this.f12423z;
                    if (i3 >= i4) {
                        return new String(cArr, 0, i4);
                    }
                    cArr[i3] = (char) (this.f12416v[i2 + i3] & 255);
                    i3++;
                }
            }
        } else if (b == 122) {
            charset = StandardCharsets.UTF_8;
        } else if (b == 123) {
            charset = StandardCharsets.UTF_16;
        } else if (b == 124) {
            charset = StandardCharsets.UTF_16LE;
        } else {
            if (b != 125) {
                throw m7376t0(b);
            }
            charset = StandardCharsets.UTF_16BE;
        }
        return new String(this.f12416v, this.f12409O, i, charset);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final int getStringLength() {
        byte b = this.f12416v[this.offset];
        this.f12422y = b;
        if (b < 73 || b >= 120) {
            throw new UnsupportedOperationException(JSONB.typeName(this.f12422y));
        }
        return b - 73;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public byte getType() {
        return this.f12416v[this.offset];
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isArray() {
        byte b;
        int i = this.offset;
        byte[] bArr = this.f12416v;
        return i < bArr.length && (b = bArr[i]) >= -108 && b <= -92;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isBinary() {
        return this.f12416v[this.offset] == -111;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isEnd() {
        return this.offset >= this.f12420x;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isInt() {
        byte b = this.f12416v[this.offset];
        return (b >= -70 && b <= 72) || b == -84 || b == -83 || b == -85;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isNull() {
        return this.f12416v[this.offset] == -81;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isNumber() {
        byte b = this.f12416v[this.offset];
        return b >= -78 && b <= 72;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isObject() {
        int i = this.offset;
        return i < this.f12420x && this.f12416v[i] == -90;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isReference() {
        int i = this.offset;
        byte[] bArr = this.f12416v;
        return i < bArr.length && bArr[i] == -109;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isString() {
        int i = this.offset;
        byte[] bArr = this.f12416v;
        if (i < bArr.length) {
            byte b = bArr[i];
            this.f12422y = b;
            if (b >= 73) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m0 */
    public final void m7393m0() {
        throw new JSONException("auotype not support : " + getString());
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public JSONReader.SavePoint mark() {
        return new JSONReader.SavePoint(this.offset, this.f12422y);
    }

    /* renamed from: n0 */
    public String m7394n0(byte b) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(JSONB.typeName(b));
        if (isString()) {
            int i = this.offset;
            this.offset = i - 1;
            try {
                str = readString();
            } catch (Throwable unused) {
                str = null;
            }
            if (str != null) {
                sb.append(' ');
                sb.append(str);
            }
            this.offset = i;
        }
        sb.append(", offset ");
        sb.append(this.offset);
        sb.append('/');
        sb.append(this.f12416v.length);
        return sb.toString();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public void next() {
        this.offset++;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfArrayEnd() {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfArrayStart() {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfComma() {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfInfinity() {
        return false;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfMatch(char c) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfMatchIdent(char c, char c2, char c3) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfMatchTypedAny() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != -110) {
            return false;
        }
        this.offset = i + 1;
        return true;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfNull() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != -81) {
            return false;
        }
        this.offset = i + 1;
        return true;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfNullOrEmptyString() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        byte b = bArr[i];
        if (b == -81) {
            this.offset = i + 1;
            return true;
        }
        if (b != 73) {
            return false;
        }
        this.offset = i + 1;
        return true;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfObjectEnd() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != -91) {
            return false;
        }
        this.offset = i + 1;
        return true;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfObjectStart() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != -90) {
            return false;
        }
        this.offset = i + 1;
        return true;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfSet() {
        return false;
    }

    /* renamed from: p0 */
    public String m7395p0(int i, int i2) {
        if (JDKUtils.ANDROID_SDK_INT >= 34) {
            return new String(this.f12416v, i, i2, StandardCharsets.ISO_8859_1);
        }
        char[] cArr = this.f12411Z;
        if (cArr == null) {
            cArr = JSONFactory.f12219C.getAndSet(this.f12412k0, null);
            this.f12411Z = cArr;
        }
        if (cArr == null || cArr.length < i2) {
            cArr = new char[i2];
            this.f12411Z = cArr;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            cArr[i3] = (char) (this.f12416v[i + i3] & 255);
        }
        return new String(cArr, 0, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006e  */
    /* renamed from: q0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m7396q0() {
        /*
            r11 = this;
            int r0 = r11.f12409O
            r1 = 0
            r3 = 0
            r5 = r1
            r4 = r3
        L7:
            int r7 = r11.f12423z
            if (r4 >= r7) goto L69
            byte[] r7 = r11.f12416v
            r8 = r7[r0]
            if (r8 < 0) goto L66
            r9 = 8
            if (r4 >= r9) goto L66
            if (r4 != 0) goto L1e
            int r9 = r11.f12409O
            r7 = r7[r9]
            if (r7 != 0) goto L1e
            goto L66
        L1e:
            switch(r4) {
                case 0: goto L60;
                case 1: goto L58;
                case 2: goto L51;
                case 3: goto L4a;
                case 4: goto L40;
                case 5: goto L36;
                case 6: goto L2c;
                case 7: goto L22;
                default: goto L21;
            }
        L21:
            goto L61
        L22:
            long r7 = (long) r8
            r9 = 56
            long r7 = r7 << r9
            r9 = 72057594037927935(0xffffffffffffff, double:7.291122019556397E-304)
            goto L5d
        L2c:
            long r7 = (long) r8
            r9 = 48
            long r7 = r7 << r9
            r9 = 281474976710655(0xffffffffffff, double:1.390671161566996E-309)
            goto L5d
        L36:
            long r7 = (long) r8
            r9 = 40
            long r7 = r7 << r9
            r9 = 1099511627775(0xffffffffff, double:5.432309224866E-312)
            goto L5d
        L40:
            long r7 = (long) r8
            r9 = 32
            long r7 = r7 << r9
            r9 = 4294967295(0xffffffff, double:2.1219957905E-314)
            goto L5d
        L4a:
            int r7 = r8 << 24
            long r7 = (long) r7
            r9 = 16777215(0xffffff, double:8.2890456E-317)
            goto L5d
        L51:
            int r7 = r8 << 16
            long r7 = (long) r7
            r9 = 65535(0xffff, double:3.23786E-319)
            goto L5d
        L58:
            int r7 = r8 << 8
            long r7 = (long) r7
            r9 = 255(0xff, double:1.26E-321)
        L5d:
            long r5 = r5 & r9
            long r5 = r5 + r7
            goto L61
        L60:
            long r5 = (long) r8
        L61:
            int r4 = r4 + 1
            int r0 = r0 + 1
            goto L7
        L66:
            int r0 = r11.f12409O
            r5 = r1
        L69:
            int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r1 == 0) goto L6e
            return r5
        L6e:
            r1 = -3750763034362895579(0xcbf29ce484222325, double:-7.302176725335867E57)
        L73:
            int r4 = r11.f12423z
            if (r3 >= r4) goto L8b
            byte[] r4 = r11.f12416v
            int r5 = r0 + 1
            r0 = r4[r0]
            long r6 = (long) r0
            long r0 = r1 ^ r6
            r6 = 1099511628211(0x100000001b3, double:5.43230922702E-312)
            long r1 = r0 * r6
            int r3 = r3 + 1
            r0 = r5
            goto L73
        L8b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.m7396q0():long");
    }

    /* renamed from: r0 */
    public final ObjectReader m7397r0(ObjectReader objectReader, Class cls, ClassLoader classLoader) {
        String string = getString();
        Class<?> mapping = TypeUtils.getMapping(string);
        if (mapping == null) {
            if (classLoader == null) {
                try {
                    classLoader = JSON.class.getClassLoader();
                } catch (ClassNotFoundException unused) {
                }
            }
            mapping = classLoader.loadClass(string);
        }
        return (mapping == null || cls.equals(mapping)) ? objectReader : getObjectReader(mapping);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public <T> T read(Type type) {
        JSONReader.Context context = this.context;
        return (T) context.provider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(this, null, null, 0L);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public Object readAny() {
        Object readFieldName;
        String str;
        Object readObject;
        ZoneId zoneId;
        String str2;
        int i = this.offset;
        byte[] bArr = this.f12416v;
        if (i >= bArr.length) {
            throw new JSONException("readAny overflow : " + this.offset + "/" + this.f12416v.length);
        }
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        this.f12422y = b;
        if (b == 72) {
            int i3 = IOUtils.getInt(bArr, i2);
            this.offset += 4;
            return new Integer(i3);
        }
        switch (b) {
            case -112:
                return Character.valueOf((char) readInt32Value());
            case -111:
                int m7382F0 = m7382F0();
                byte[] bArr2 = this.f12416v;
                int i4 = this.offset;
                byte[] copyOfRange = Arrays.copyOfRange(bArr2, i4, i4 + m7382F0);
                this.offset += m7382F0;
                return copyOfRange;
            case -110:
                long readTypeHashCode = readTypeHashCode();
                JSONReader.Context context = this.context;
                JSONReader.AutoTypeBeforeHandler autoTypeBeforeHandler = context.f12311t;
                if (autoTypeBeforeHandler != null) {
                    Class<?> apply = autoTypeBeforeHandler.apply(readTypeHashCode, (Class<?>) null, context.features);
                    if (apply == null) {
                        String string = getString();
                        JSONReader.Context context2 = this.context;
                        apply = context2.f12311t.apply(string, (Class<?>) null, context2.features);
                    }
                    if (apply != null) {
                        return this.context.getObjectReader(apply).readJSONBObject(this, null, null, 0L);
                    }
                }
                JSONReader.Context context3 = this.context;
                if (((context3.features & JSONReader.Feature.SupportAutoType.mask) != 0 ? 1 : 0) == 0) {
                    if (isObject()) {
                        return readObject();
                    }
                    if (isArray()) {
                        return readArray();
                    }
                    throw new JSONException("auoType not support , offset " + this.offset + "/" + this.f12416v.length);
                }
                ObjectReader objectReaderAutoType = context3.getObjectReaderAutoType(readTypeHashCode);
                if (objectReaderAutoType == null) {
                    String string2 = getString();
                    ObjectReader objectReaderAutoType2 = this.context.getObjectReaderAutoType(string2, null);
                    if (objectReaderAutoType2 == null) {
                        throw new JSONException("auoType not support : " + string2 + ", offset " + this.offset + "/" + this.f12416v.length);
                    }
                    objectReaderAutoType = objectReaderAutoType2;
                }
                return objectReaderAutoType.readJSONBObject(this, null, null, 0L);
            default:
                String str3 = Constants.ATTRVAL_PARENT;
                byte b2 = JSONB.Constants.BC_INT32_NUM_MIN;
                byte b3 = 73;
                switch (b) {
                    case ImageUtil.ROTATE_90_CCW /* -90 */:
                        boolean z = (this.context.features & JSONReader.Feature.SupportAutoType.mask) != 0;
                        Map map = null;
                        while (true) {
                            byte[] bArr3 = this.f12416v;
                            int i5 = this.offset;
                            byte b4 = bArr3[i5];
                            if (b4 == -91) {
                                this.offset = i5 + 1;
                                return map == null ? (this.context.features & JSONReader.Feature.UseNativeObject.mask) != 0 ? new HashMap() : new JSONObject() : map;
                            }
                            if (!z || r6 != 0 || b4 < b3) {
                                readFieldName = b4 >= b3 ? readFieldName() : readAny();
                            } else {
                                if (readFieldNameHashCode() == ObjectReader.HASH_TYPE) {
                                    ObjectReader objectReaderAutoType3 = this.context.getObjectReaderAutoType(readValueHashCode());
                                    if (objectReaderAutoType3 == null) {
                                        String string3 = getString();
                                        ObjectReader objectReaderAutoType4 = this.context.getObjectReaderAutoType(string3, null);
                                        if (objectReaderAutoType4 == null) {
                                            throw new JSONException("auotype not support : " + string3 + ", offset " + this.offset + "/" + this.f12416v.length);
                                        }
                                        objectReaderAutoType3 = objectReaderAutoType4;
                                    }
                                    this.typeRedirect = true;
                                    return objectReaderAutoType3.readJSONBObject(this, null, null, 0L);
                                }
                                readFieldName = getString();
                            }
                            if (map == null) {
                                JSONReader.Context context4 = this.context;
                                str = str3;
                                if ((JSONReader.Feature.UseNativeObject.mask & context4.features) != 0) {
                                    map = new HashMap();
                                } else {
                                    Supplier<Map> supplier = context4.f12309r;
                                    map = supplier != null ? supplier.get() : new JSONObject();
                                }
                            } else {
                                str = str3;
                            }
                            if (isReference()) {
                                String readReference = readReference();
                                str3 = str;
                                if (str3.equals(readReference)) {
                                    map.put(readFieldName, map);
                                } else {
                                    addResolveTask(map, readFieldName, JSONPath.m7282of(readReference));
                                    map.put(readFieldName, null);
                                }
                            } else {
                                str3 = str;
                                byte[] bArr4 = this.f12416v;
                                int i6 = this.offset;
                                byte b5 = bArr4[i6];
                                if (b5 >= 73 && b5 <= 126) {
                                    readObject = readString();
                                } else if (b5 >= b2 && b5 <= 47) {
                                    this.offset = i6 + 1;
                                    readObject = Integer.valueOf(b5);
                                } else if (b5 == -79) {
                                    this.offset = i6 + 1;
                                    readObject = Boolean.TRUE;
                                } else if (b5 == -80) {
                                    this.offset = i6 + 1;
                                    readObject = Boolean.FALSE;
                                } else {
                                    readObject = b5 == -90 ? readObject() : readAny();
                                }
                                if (readObject != null || (this.context.features & JSONReader.Feature.IgnoreNullPropertyValue.mask) == 0) {
                                    map.put(readFieldName, readObject);
                                }
                            }
                            r6++;
                            b3 = 73;
                            b2 = JSONB.Constants.BC_INT32_NUM_MIN;
                        }
                        break;
                    case -89:
                        int i7 = i2 + 1;
                        byte b6 = bArr[i2];
                        int i8 = i7 + 1;
                        byte b7 = bArr[i7];
                        this.offset = i8 + 1;
                        return LocalTime.of(b6, b7, bArr[i8], readInt32Value());
                    case -88:
                        int i9 = i2 + 1;
                        int i10 = i9 + 1;
                        int i11 = (bArr[i2] << 8) + (bArr[i9] & 255);
                        int i12 = i10 + 1;
                        byte b8 = bArr[i10];
                        int i13 = i12 + 1;
                        byte b9 = bArr[i12];
                        int i14 = i13 + 1;
                        byte b10 = bArr[i13];
                        int i15 = i14 + 1;
                        byte b11 = bArr[i14];
                        this.offset = i15 + 1;
                        return LocalDateTime.of(i11, b8, b9, b10, b11, bArr[i15], readInt32Value());
                    case t4h.f84864j /* -87 */:
                        int i16 = i2 + 1;
                        int i17 = i16 + 1;
                        int i18 = (bArr[i2] << 8) + (bArr[i16] & 255);
                        int i19 = i17 + 1;
                        byte b12 = bArr[i17];
                        this.offset = i19 + 1;
                        return LocalDate.of(i18, b12, bArr[i19]);
                    case -86:
                        int i20 = i2 + 1;
                        int i21 = i20 + 1;
                        int i22 = (bArr[i2] << 8) + (bArr[i20] & 255);
                        int i23 = i21 + 1;
                        byte b13 = bArr[i21];
                        int i24 = i23 + 1;
                        byte b14 = bArr[i23];
                        int i25 = i24 + 1;
                        byte b15 = bArr[i24];
                        int i26 = i25 + 1;
                        byte b16 = bArr[i25];
                        this.offset = i26 + 1;
                        byte b17 = bArr[i26];
                        int readInt32Value = readInt32Value();
                        byte[] bArr5 = f12407z0;
                        if (this.offset + bArr5.length < this.f12416v.length) {
                            int i27 = 0;
                            while (true) {
                                if (i27 >= bArr5.length) {
                                    r6 = 1;
                                } else if (this.f12416v[this.offset + i27] == bArr5[i27]) {
                                    i27++;
                                }
                            }
                        }
                        if (r6 != 0) {
                            this.offset += bArr5.length;
                            zoneId = DateUtils.SHANGHAI_ZONE_ID;
                        } else {
                            zoneId = DateUtils.getZoneId(readString(), DateUtils.SHANGHAI_ZONE_ID);
                        }
                        return ZonedDateTime.of(LocalDateTime.of(i22, b13, b14, b15, b16, b17, readInt32Value), zoneId);
                    case -85:
                        long j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
                        this.offset += 8;
                        if (!JDKUtils.BIG_ENDIAN) {
                            j = Long.reverseBytes(j);
                        }
                        return new Date(j);
                    case -84:
                        long j2 = IOUtils.getInt(bArr, i2);
                        this.offset += 4;
                        return new Date(j2 * 1000);
                    case -83:
                        long j3 = IOUtils.getInt(bArr, i2);
                        this.offset += 4;
                        return new Date(j3 * 60 * 1000);
                    case -82:
                        return Instant.ofEpochSecond(readInt64Value(), readInt32Value());
                    case -81:
                        return null;
                    case -80:
                        return Boolean.FALSE;
                    case -79:
                        return Boolean.TRUE;
                    case -78:
                        return Double.valueOf(0.0d);
                    case -77:
                        return Double.valueOf(1.0d);
                    case -76:
                        return Double.valueOf(readInt64Value());
                    case -75:
                        long j4 = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
                        this.offset += 8;
                        if (!JDKUtils.BIG_ENDIAN) {
                            j4 = Long.reverseBytes(j4);
                        }
                        return Double.valueOf(Double.longBitsToDouble(j4));
                    case -74:
                        return Float.valueOf(readInt32Value());
                    case -73:
                        int i28 = IOUtils.getInt(bArr, i2);
                        this.offset += 4;
                        return Float.valueOf(Float.intBitsToFloat(i28));
                    case -72:
                        return BigDecimal.valueOf(readInt64Value());
                    case -71:
                        int readInt32Value2 = readInt32Value();
                        BigInteger readBigInteger = readBigInteger();
                        return readInt32Value2 == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value2);
                    case -70:
                        return BigInteger.valueOf(readInt64Value());
                    case -69:
                        int readInt32Value3 = readInt32Value();
                        byte[] bArr6 = new byte[readInt32Value3];
                        System.arraycopy(this.f12416v, this.offset, bArr6, 0, readInt32Value3);
                        this.offset += readInt32Value3;
                        return new BigInteger(bArr6);
                    case -68:
                        int i29 = i2 + 1;
                        int i30 = bArr[i2] << 8;
                        this.offset = i29 + 1;
                        return Short.valueOf((short) (i30 + (bArr[i29] & 255)));
                    case -67:
                        this.offset = i2 + 1;
                        return Byte.valueOf(bArr[i2]);
                    case -66:
                        long j5 = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
                        this.offset += 8;
                        if (!JDKUtils.BIG_ENDIAN) {
                            j5 = Long.reverseBytes(j5);
                        }
                        return Long.valueOf(j5);
                    case -65:
                        int i31 = IOUtils.getInt(bArr, i2);
                        this.offset += 4;
                        return new Long(i31);
                    default:
                        switch (b) {
                            case 122:
                                int m7382F02 = m7382F0();
                                str2 = (m7382F02 != 0 || (this.context.features & JSONReader.Feature.EmptyStringAsNull.mask) == 0) ? new String(this.f12416v, this.offset, m7382F02, StandardCharsets.UTF_8) : null;
                                this.offset += m7382F02;
                                return str2;
                            case 123:
                                int m7382F03 = m7382F0();
                                str2 = (m7382F03 != 0 || (this.context.features & JSONReader.Feature.EmptyStringAsNull.mask) == 0) ? new String(this.f12416v, this.offset, m7382F03, StandardCharsets.UTF_16) : null;
                                this.offset += m7382F03;
                                return str2;
                            case 124:
                                int m7382F04 = m7382F0();
                                str2 = (m7382F04 != 0 || (this.context.features & JSONReader.Feature.EmptyStringAsNull.mask) == 0) ? new String(this.f12416v, this.offset, m7382F04, StandardCharsets.UTF_16LE) : null;
                                this.offset += m7382F04;
                                return str2;
                            case 125:
                                int m7382F05 = m7382F0();
                                str2 = (m7382F05 != 0 || (this.context.features & JSONReader.Feature.EmptyStringAsNull.mask) == 0) ? new String(this.f12416v, this.offset, m7382F05, StandardCharsets.UTF_16BE) : null;
                                this.offset += m7382F05;
                                return str2;
                            case 126:
                                if (f12404A0 == null) {
                                    f12404A0 = Charset.forName(TTFFont.CHARSET_GB18030);
                                }
                                int m7382F06 = m7382F0();
                                str2 = (m7382F06 != 0 || (this.context.features & JSONReader.Feature.EmptyStringAsNull.mask) == 0) ? new String(this.f12416v, this.offset, m7382F06, f12404A0) : null;
                                this.offset += m7382F06;
                                return str2;
                            default:
                                if (b >= -16 && b <= 47) {
                                    return Integer.valueOf(b);
                                }
                                if (b >= 48 && b <= 63) {
                                    int i32 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
                                    this.offset = i2 + 1;
                                    return Integer.valueOf(i32 + (bArr[i2] & 255));
                                }
                                if (b >= 64 && b <= 71) {
                                    int m7375o0 = m7375o0(bArr, i2, b);
                                    this.offset += 2;
                                    return Integer.valueOf(m7375o0);
                                }
                                if (b >= -40 && b <= -17) {
                                    return Long.valueOf((b - (-40)) - 8);
                                }
                                if (b >= -56 && b <= -41) {
                                    long j6 = (b + 48) << 8;
                                    this.offset = i2 + 1;
                                    return Long.valueOf(j6 + (bArr[i2] & 255));
                                }
                                if (b >= -64 && b <= -57) {
                                    int i33 = ((b + DeletedRef3DPtg.sid) << 16) + ((bArr[i2] & 255) << 8);
                                    this.offset = i2 + 1 + 1;
                                    return Long.valueOf(i33 + (bArr[r4] & 255));
                                }
                                if (b >= -108 && b <= -92) {
                                    int m7382F07 = b == -92 ? m7382F0() : b - (-108);
                                    if (m7382F07 == 0) {
                                        JSONReader.Context context5 = this.context;
                                        if ((context5.features & JSONReader.Feature.UseNativeObject.mask) != 0) {
                                            return new ArrayList();
                                        }
                                        Supplier<List> supplier2 = context5.f12310s;
                                        return supplier2 != null ? supplier2.get() : new JSONArray();
                                    }
                                    List arrayList = (this.context.features & JSONReader.Feature.UseNativeObject.mask) != 0 ? new ArrayList(m7382F07) : new JSONArray(m7382F07);
                                    while (r6 < m7382F07) {
                                        if (isReference()) {
                                            String readReference2 = readReference();
                                            if (Constants.ATTRVAL_PARENT.equals(readReference2)) {
                                                arrayList.add(arrayList);
                                            } else {
                                                arrayList.add(null);
                                                addResolveTask(arrayList, r6, JSONPath.m7282of(readReference2));
                                            }
                                        } else {
                                            arrayList.add(readAny());
                                        }
                                        r6++;
                                    }
                                    return arrayList;
                                }
                                if (b >= 73 && b <= 121) {
                                    int m7382F08 = b == 121 ? m7382F0() : b - 73;
                                    this.f12423z = m7382F08;
                                    if (m7382F08 < 0) {
                                        return this.f12413q0.getName(-m7382F08);
                                    }
                                    String m7395p0 = m7395p0(this.offset, m7382F08);
                                    this.offset += this.f12423z;
                                    if ((this.context.features & JSONReader.Feature.TrimString.mask) != 0) {
                                        m7395p0 = m7395p0.trim();
                                    }
                                    if (this.f12423z != 0 || (this.context.features & JSONReader.Feature.EmptyStringAsNull.mask) == 0) {
                                        return m7395p0;
                                    }
                                    return null;
                                }
                                if (b != Byte.MAX_VALUE) {
                                    throw new JSONException("not support type : " + m7394n0(this.f12422y));
                                }
                                int m7382F09 = m7382F0();
                                this.f12423z = m7382F09;
                                if (m7382F09 < 0) {
                                    return this.f12413q0.getName(-m7382F09);
                                }
                                throw new JSONException("not support symbol : " + this.f12423z);
                        }
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.alibaba.fastjson2.g, com.alibaba.fastjson2.JSONReader] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v18, types: [java.util.List, java.util.Collection, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Integer] */
    @Override // com.alibaba.fastjson2.JSONReader
    public List readArray() {
        Object readAny;
        ?? num;
        Object readAny2;
        int startArray = startArray();
        JSONArray jSONArray = new JSONArray(startArray);
        for (int i = 0; i < startArray; i++) {
            byte[] bArr = this.f12416v;
            int i2 = this.offset;
            byte b = bArr[i2];
            if (b >= 73 && b <= 126) {
                readAny = readString();
            } else if (b >= -16 && b <= 47) {
                this.offset = i2 + 1;
                readAny = Integer.valueOf(b);
            } else if (b == -79) {
                this.offset = i2 + 1;
                readAny = Boolean.TRUE;
            } else if (b == -80) {
                this.offset = i2 + 1;
                readAny = Boolean.FALSE;
            } else if (b == -90) {
                readAny = readObject();
            } else if (b == -66) {
                int i3 = i2 + 1;
                this.offset = i3;
                long j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i3);
                this.offset += 8;
                if (!JDKUtils.BIG_ENDIAN) {
                    j = Long.reverseBytes(j);
                }
                readAny = Long.valueOf(j);
            } else if (b >= -108 && b <= -92) {
                this.offset = i2 + 1;
                int m7382F0 = b == -92 ? m7382F0() : b + 108;
                if (m7382F0 == 0) {
                    JSONReader.Context context = this.context;
                    if ((context.features & JSONReader.Feature.UseNativeObject.mask) != 0) {
                        readAny = new ArrayList();
                    } else {
                        Supplier<List> supplier = context.f12310s;
                        if (supplier != null) {
                            readAny = supplier.get();
                        } else {
                            readAny = new JSONArray();
                        }
                    }
                } else {
                    if ((this.context.features & JSONReader.Feature.UseNativeObject.mask) != 0) {
                        num = new ArrayList(m7382F0);
                    } else {
                        num = new JSONArray(m7382F0);
                    }
                    for (int i4 = 0; i4 < m7382F0; i4++) {
                        if (isReference()) {
                            String readReference = readReference();
                            if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                                num.add(num);
                            } else {
                                num.add(null);
                                addResolveTask(num, i4, JSONPath.m7282of(readReference));
                            }
                        } else {
                            byte b2 = this.f12416v[this.offset];
                            if (b2 >= 73 && b2 <= 126) {
                                readAny2 = readString();
                            } else if (b2 == -90) {
                                readAny2 = readObject();
                            } else {
                                readAny2 = readAny();
                            }
                            num.add(readAny2);
                        }
                    }
                    readAny = num;
                }
            } else if (b < 48 || b > 63) {
                if (b >= 64 && b <= 71) {
                    int m7375o0 = m7375o0(bArr, i2 + 1, b);
                    this.offset += 3;
                    num = new Integer(m7375o0);
                } else if (b == 72) {
                    int i5 = IOUtils.getInt(bArr, i2 + 1);
                    this.offset += 5;
                    num = new Integer(i5);
                } else if (b == -109) {
                    String readReference2 = readReference();
                    if (Constants.ATTRVAL_PARENT.equals(readReference2)) {
                        readAny = jSONArray;
                    } else {
                        addResolveTask(jSONArray, i, JSONPath.m7282of(readReference2));
                    }
                } else {
                    readAny = readAny();
                }
                readAny = num;
            } else {
                readAny = Integer.valueOf(((b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8) + (bArr[i2 + 1] & 255));
                this.offset += 2;
            }
            jSONArray.add(readAny);
        }
        return jSONArray;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public BigDecimal readBigDecimal() {
        BigDecimal bigDecimal;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        this.offset = i + 1;
        byte b = bArr[i];
        if (b != -71) {
            return b == -72 ? BigDecimal.valueOf(readInt64Value()) : m7401w0(b);
        }
        int readInt32Value = readInt32Value();
        int i2 = this.offset;
        byte b2 = bArr[i2];
        if (b2 == -70) {
            this.offset = i2 + 1;
            return BigDecimal.valueOf(readInt64Value(), readInt32Value);
        }
        if (b2 == 72) {
            bigDecimal = BigDecimal.valueOf(IOUtils.getInt(bArr, i2 + 1), readInt32Value);
            this.offset += 5;
        } else if (b2 == -66) {
            long j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2 + 1);
            if (!JDKUtils.BIG_ENDIAN) {
                j = Long.reverseBytes(j);
            }
            bigDecimal = BigDecimal.valueOf(j, readInt32Value);
            this.offset += 9;
        } else {
            BigInteger readBigInteger = readBigInteger();
            bigDecimal = readInt32Value == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value);
        }
        return bigDecimal;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public BigInteger readBigInteger() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        this.offset = i + 1;
        byte b = bArr[i];
        if (b == -70) {
            return BigInteger.valueOf(readInt64Value());
        }
        if (b != -69) {
            return m7399u0(b);
        }
        int readInt32Value = readInt32Value();
        byte[] bArr2 = new byte[readInt32Value];
        System.arraycopy(this.f12416v, this.offset, bArr2, 0, readInt32Value);
        this.offset += readInt32Value;
        return new BigInteger(bArr2);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public byte[] readBinary() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        this.offset = i + 1;
        byte b = bArr[i];
        if (b != -111) {
            throw m7376t0(b);
        }
        int m7382F0 = m7382F0();
        byte[] bArr2 = new byte[m7382F0];
        System.arraycopy(this.f12416v, this.offset, bArr2, 0, m7382F0);
        this.offset += m7382F0;
        return bArr2;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public Boolean readBool() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        this.offset = i + 1;
        byte b = bArr[i];
        if (b == -81) {
            return null;
        }
        return b == -79 ? Boolean.TRUE : b == -80 ? Boolean.FALSE : Boolean.valueOf(m7400v0(b));
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean readBoolValue() {
        this.wasNull = false;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        this.offset = i + 1;
        byte b = bArr[i];
        if (b == -79) {
            return true;
        }
        if (b == -80) {
            return false;
        }
        return m7400v0(b);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public char readCharValue() {
        int i;
        byte[] bArr = this.f12416v;
        int i2 = this.offset;
        byte b = bArr[i2];
        if (b == -112) {
            this.offset = i2 + 1;
            i = readInt32Value();
        } else {
            if (b == 73) {
                this.offset = i2 + 1;
                return (char) 0;
            }
            if (b <= 73 || b >= 120) {
                String readString = readString();
                if (readString == null || readString.isEmpty()) {
                    return (char) 0;
                }
                return readString.charAt(0);
            }
            int i3 = i2 + 1;
            this.offset = i3 + 1;
            i = bArr[i3] & 255;
        }
        return (char) i;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public double readDoubleValue() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != -75) {
            return m7402x0();
        }
        long j = (bArr[i + 8] & 255) + ((bArr[i + 7] & 255) << 8) + ((bArr[i + 6] & 255) << 16) + ((bArr[i + 5] & 255) << 24) + ((bArr[i + 4] & 255) << 32) + ((bArr[i + 3] & 255) << 40) + ((255 & bArr[i + 2]) << 48) + (bArr[i + 1] << 56);
        this.offset = i + 9;
        return Double.longBitsToDouble(j);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:121:0x0243. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:97:0x00a0. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:36:0x06cd  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x06d7  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0710  */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readFieldName() {
        /*
            Method dump skipped, instructions count: 2262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.readFieldName():java.lang.String");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public long readFieldNameHashCode() {
        int m7382F0;
        long j;
        long j2;
        int i;
        long j3;
        long j4;
        int i2;
        byte[] bArr = this.f12416v;
        int i3 = this.offset;
        int i4 = i3 + 1;
        this.offset = i4;
        byte b = bArr[i3];
        this.f12408J = b;
        boolean z = b == Byte.MAX_VALUE;
        byte b2 = b;
        if (z) {
            byte b3 = bArr[i4];
            this.f12408J = b3;
            if (b3 >= -16 && b3 <= 72) {
                if (b3 <= 47) {
                    this.offset = i4 + 1;
                    i2 = b3;
                } else {
                    i2 = readInt32Value();
                }
                if (i2 < 0) {
                    return this.f12413q0.getHashCode(-i2);
                }
                if (i2 == 0) {
                    this.f12408J = this.f12419w0;
                    this.f12423z = this.f12417v0;
                    this.f12409O = this.f12415u0;
                    if (this.f12414t0 == 0) {
                        this.f12414t0 = m7396q0();
                    }
                    return this.f12414t0;
                }
                int i5 = i2 * 2;
                long[] jArr = this.f12421x0;
                long j5 = jArr[i5 + 1];
                int i6 = (int) j5;
                this.f12408J = (byte) i6;
                this.f12423z = i6 >> 8;
                this.f12409O = (int) (j5 >> 32);
                long j6 = jArr[i5];
                if (j6 != 0) {
                    return j6;
                }
                long m7396q0 = m7396q0();
                this.f12421x0[i5] = m7396q0;
                return m7396q0;
            }
            this.offset = i4 + 1;
            b2 = b3;
        }
        if (b2 >= 73 && b2 <= 120) {
            m7382F0 = b2 + JSONB.Constants.BC_FLOAT;
        } else {
            if (b2 != 121 && b2 != 122) {
                throw m7403y0();
            }
            m7382F0 = m7382F0();
        }
        this.f12423z = m7382F0;
        int i7 = this.offset;
        this.f12409O = i7;
        if (m7382F0 < 0) {
            j2 = this.f12413q0.getHashCode(-m7382F0);
        } else {
            if (m7382F0 <= 8 && i7 + m7382F0 <= bArr.length) {
                switch (m7382F0) {
                    case 1:
                        i = bArr[i7];
                        j = i;
                        break;
                    case 2:
                        j = JDKUtils.UNSAFE.getShort(bArr, f12406y0 + i7) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                        break;
                    case 3:
                        j3 = bArr[i7 + 2] << 16;
                        j4 = JDKUtils.UNSAFE.getShort(bArr, f12406y0 + i7) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                        j = j3 + j4;
                        break;
                    case 4:
                        i = JDKUtils.UNSAFE.getInt(bArr, f12406y0 + i7);
                        j = i;
                        break;
                    case 5:
                        j3 = bArr[i7 + 4] << 32;
                        j4 = JDKUtils.UNSAFE.getInt(bArr, f12406y0 + i7) & 4294967295L;
                        j = j3 + j4;
                        break;
                    case 6:
                        Unsafe unsafe = JDKUtils.UNSAFE;
                        long j7 = f12406y0;
                        long j8 = i7;
                        j = (unsafe.getShort(bArr, (j7 + j8) + 4) << 32) + (unsafe.getInt(bArr, j7 + j8) & 4294967295L);
                        break;
                    case 7:
                        j = (bArr[i7 + 6] << 48) + ((bArr[i7 + 5] & 255) << 40) + ((bArr[i7 + 4] & 255) << 32) + (JDKUtils.UNSAFE.getInt(bArr, f12406y0 + i7) & 4294967295L);
                        break;
                    default:
                        j = JDKUtils.UNSAFE.getLong(bArr, f12406y0 + i7);
                        break;
                }
            } else {
                j = 0;
            }
            if (j != 0) {
                this.offset += m7382F0;
                j2 = j;
            } else {
                j2 = -3750763034362895579L;
                for (int i8 = 0; i8 < m7382F0; i8++) {
                    this.offset = this.offset + 1;
                    j2 = (bArr[r6] ^ j2) * Fnv.MAGIC_PRIME;
                }
            }
        }
        if (z) {
            int i9 = this.offset;
            int i10 = bArr[i9];
            if (i10 < -16 || i10 > 47) {
                i10 = readInt32Value();
            } else {
                this.offset = i9 + 1;
            }
            if (i10 == 0) {
                this.f12415u0 = this.f12409O;
                this.f12417v0 = m7382F0;
                this.f12419w0 = b2;
                this.f12414t0 = j2;
            } else {
                int i11 = i10 << 1;
                int i12 = i11 + 2;
                long[] jArr2 = this.f12421x0;
                if (jArr2 == null) {
                    this.f12421x0 = new long[Math.max(i12, 32)];
                } else if (jArr2.length < i12) {
                    this.f12421x0 = Arrays.copyOf(jArr2, i12 + 16);
                }
                long[] jArr3 = this.f12421x0;
                jArr3[i11] = j2;
                jArr3[i11 + 1] = (this.f12409O << 32) + (m7382F0 << 8) + b2;
            }
        }
        return j2;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public long readFieldNameHashCodeUnquote() {
        return readFieldNameHashCode();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public float readFloatValue() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != -73) {
            return m7404z0();
        }
        int i2 = JDKUtils.UNSAFE.getInt(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i + 1);
        this.offset = i + 5;
        if (!JDKUtils.BIG_ENDIAN) {
            i2 = Integer.reverseBytes(i2);
        }
        return Float.intBitsToFloat(i2);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public byte[] readHex() {
        String readString = readString();
        int length = readString.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            char charAt = readString.charAt(i2);
            char charAt2 = readString.charAt(i2 + 1);
            char c = '0';
            int i3 = charAt - (charAt <= '9' ? '0' : '7');
            if (charAt2 > '9') {
                c = '7';
            }
            bArr[i] = (byte) ((charAt2 - c) | (i3 << 4));
        }
        return bArr;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean readIfNull() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != -81) {
            return false;
        }
        this.offset = i + 1;
        return true;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public Instant readInstant() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        if (b != -66) {
            switch (b) {
                case -85:
                    break;
                case -84:
                    long j = IOUtils.getInt(bArr, i2);
                    this.offset += 4;
                    return Instant.ofEpochSecond(j, 0L);
                case -83:
                    long j2 = IOUtils.getInt(bArr, i2);
                    this.offset += 4;
                    return Instant.ofEpochSecond(j2 * 60, 0L);
                case -82:
                    return Instant.ofEpochSecond(readInt64Value(), readInt32Value());
                default:
                    throw new UnsupportedOperationException();
            }
        }
        long j3 = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
        this.offset += 8;
        if (!JDKUtils.BIG_ENDIAN) {
            j3 = Long.reverseBytes(j3);
        }
        return Instant.ofEpochMilli(j3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        if (r1 <= 47) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Integer readInt32() {
        /*
            r7 = this;
            byte[] r0 = r7.f12416v
            int r1 = r7.offset
            int r2 = r1 + 1
            r1 = r0[r1]
            r3 = -81
            if (r1 != r3) goto L10
            r7.offset = r2
            r7 = 0
            return r7
        L10:
            r3 = -16
            if (r1 < r3) goto L19
            r3 = 47
            if (r1 > r3) goto L19
            goto L63
        L19:
            r3 = 48
            if (r1 < r3) goto L2d
            r3 = 63
            if (r1 > r3) goto L2d
            int r1 = r1 + (-56)
            int r1 = r1 << 8
            r0 = r0[r2]
            r0 = r0 & 255(0xff, float:3.57E-43)
            int r1 = r1 + r0
            int r2 = r2 + 1
            goto L63
        L2d:
            r3 = 64
            if (r1 < r3) goto L4a
            r3 = 71
            if (r1 > r3) goto L4a
            int r1 = r1 + (-68)
            int r1 = r1 << 16
            r3 = r0[r2]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 8
            int r1 = r1 + r3
            int r3 = r2 + 1
            r0 = r0[r3]
            r0 = r0 & 255(0xff, float:3.57E-43)
            int r1 = r1 + r0
            int r2 = r2 + 2
            goto L63
        L4a:
            r3 = 72
            if (r1 != r3) goto L6a
            sun.misc.Unsafe r1 = com.alibaba.fastjson2.util.JDKUtils.UNSAFE
            long r3 = com.alibaba.fastjson2.util.JDKUtils.ARRAY_BYTE_BASE_OFFSET
            long r5 = (long) r2
            long r3 = r3 + r5
            int r0 = r1.getInt(r0, r3)
            boolean r1 = com.alibaba.fastjson2.util.JDKUtils.BIG_ENDIAN
            if (r1 != 0) goto L60
            int r0 = java.lang.Integer.reverseBytes(r0)
        L60:
            r1 = r0
            int r2 = r2 + 4
        L63:
            r7.offset = r2
            java.lang.Integer r7 = java.lang.Integer.valueOf(r1)
            return r7
        L6a:
            r7.offset = r2
            int r7 = r7.m7378B0(r0, r1)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.readInt32():java.lang.Integer");
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r1 <= 47) goto L20;
     */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int readInt32Value() {
        /*
            r4 = this;
            byte[] r0 = r4.f12416v
            int r1 = r4.offset
            int r2 = r1 + 1
            r1 = r0[r1]
            r3 = -16
            if (r1 < r3) goto L11
            r3 = 47
            if (r1 > r3) goto L11
            goto L3e
        L11:
            r3 = 48
            if (r1 < r3) goto L25
            r3 = 63
            if (r1 > r3) goto L25
            int r1 = r1 + (-56)
            int r1 = r1 << 8
            r0 = r0[r2]
            r0 = r0 & 255(0xff, float:3.57E-43)
            int r1 = r1 + r0
            int r2 = r2 + 1
            goto L3e
        L25:
            r3 = 64
            if (r1 < r3) goto L34
            r3 = 71
            if (r1 > r3) goto L34
            int r1 = m7375o0(r0, r2, r1)
            int r2 = r2 + 2
            goto L3e
        L34:
            r3 = 72
            if (r1 != r3) goto L41
            int r1 = com.alibaba.fastjson2.util.IOUtils.getInt(r0, r2)
            int r2 = r2 + 4
        L3e:
            r4.offset = r2
            return r1
        L41:
            r4.offset = r2
            int r4 = r4.m7378B0(r0, r1)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.readInt32Value():int");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public Long readInt64() {
        long j;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        byte b = bArr[i];
        if (b == -81) {
            this.offset = i2;
            return null;
        }
        if (b >= -40 && b <= -17) {
            j = (b - (-40)) - 8;
        } else if (b >= -56 && b <= -41) {
            j = ((b + 48) << 8) + (bArr[i2] & 255);
            i2++;
        } else if (b >= -64 && b <= -57) {
            j = ((b + DeletedRef3DPtg.sid) << 16) + ((bArr[i2] & 255) << 8) + (bArr[i2 + 1] & 255);
            i2 += 2;
        } else if (b == -65) {
            int i3 = JDKUtils.UNSAFE.getInt(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
            if (!JDKUtils.BIG_ENDIAN) {
                i3 = Integer.reverseBytes(i3);
            }
            j = i3;
            i2 += 4;
        } else {
            if (b != -66) {
                this.offset = i2;
                return Long.valueOf(m7380D0(bArr, b));
            }
            j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
            if (!JDKUtils.BIG_ENDIAN) {
                j = Long.reverseBytes(j);
            }
            i2 += 8;
        }
        this.offset = i2;
        return Long.valueOf(j);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public long readInt64Value() {
        long j;
        this.wasNull = false;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= -40 && b <= -17) {
            j = (b - (-40)) - 8;
        } else if (b >= -56 && b <= -41) {
            j = ((b + 48) << 8) + (bArr[i2] & 255);
            i2++;
        } else if (b >= -64 && b <= -57) {
            j = ((b + DeletedRef3DPtg.sid) << 16) + ((bArr[i2] & 255) << 8) + (bArr[i2 + 1] & 255);
            i2 += 2;
        } else if (b == -65) {
            j = IOUtils.getInt(bArr, i2);
            i2 += 4;
        } else {
            if (b != -66) {
                this.offset = i2;
                return m7380D0(bArr, b);
            }
            j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
            if (!JDKUtils.BIG_ENDIAN) {
                j = Long.reverseBytes(j);
            }
            i2 += 8;
        }
        this.offset = i2;
        return j;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public long[] readInt64ValueArray() {
        if (nextIfMatch(JSONB.Constants.BC_TYPED_ANY)) {
            long readTypeHashCode = readTypeHashCode();
            if (readTypeHashCode != ObjectReaderImplInt64ValueArray.HASH_TYPE && readTypeHashCode != ObjectReaderImplInt64Array.HASH_TYPE && readTypeHashCode != ObjectReaderImplInt32Array.HASH_TYPE && readTypeHashCode != ObjectReaderImplInt32ValueArray.HASH_TYPE) {
                throw new JSONException(info("not support " + getString()));
            }
        }
        int startArray = startArray();
        if (startArray == -1) {
            return null;
        }
        long[] jArr = new long[startArray];
        for (int i = 0; i < startArray; i++) {
            jArr[i] = readInt64Value();
        }
        return jArr;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public List readList(Type[] typeArr) {
        if (nextIfNull()) {
            return null;
        }
        int startArray = startArray();
        JSONArray jSONArray = new JSONArray(startArray);
        for (int i = 0; i < startArray; i++) {
            jSONArray.add(read(typeArr[i]));
        }
        return jSONArray;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDate readLocalDate() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        byte b = bArr[i];
        if (b != -87) {
            if (b != -81) {
                return m7383G0(b);
            }
            this.offset = i + 1;
            return null;
        }
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = (bArr[i2] << 8) + (bArr[i3] & 255);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        this.offset = i6 + 1;
        return LocalDate.of(i5, b2, bArr[i6]);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDate readLocalDate10() {
        LocalDate parseLocalDate10;
        byte b = this.f12408J;
        if ((b == 121 || b == 122) && this.f12423z == 10) {
            parseLocalDate10 = DateUtils.parseLocalDate10(this.f12416v, this.offset);
        } else {
            byte[] bArr = this.f12416v;
            int i = this.offset;
            if (bArr[i] != 83 || (parseLocalDate10 = DateUtils.parseLocalDate10(bArr, i + 1)) == null) {
                throw new JSONException("date only support string input");
            }
        }
        this.offset += 11;
        return parseLocalDate10;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDate readLocalDate11() {
        LocalDate parseLocalDate11;
        byte b = this.f12408J;
        if ((b == 121 || b == 122) && this.f12423z == 11) {
            parseLocalDate11 = DateUtils.parseLocalDate11(this.f12416v, this.offset);
        } else {
            byte[] bArr = this.f12416v;
            int i = this.offset;
            if (bArr[i] != 84 || (parseLocalDate11 = DateUtils.parseLocalDate11(bArr, i + 1)) == null) {
                throw new JSONException("date only support string input");
            }
        }
        this.offset += 12;
        return parseLocalDate11;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDate readLocalDate8() {
        LocalDate parseLocalDate8;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 81 || (parseLocalDate8 = DateUtils.parseLocalDate8(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 9;
        return parseLocalDate8;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDate readLocalDate9() {
        LocalDate parseLocalDate9;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 82 || (parseLocalDate9 = DateUtils.parseLocalDate9(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 10;
        return parseLocalDate9;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTime() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        byte b = bArr[i];
        if (b != -88) {
            if (b != -81) {
                return m7384H0(b);
            }
            this.offset = i + 1;
            return null;
        }
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = (bArr[i2] << 8) + (bArr[i3] & 255);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        int i7 = i6 + 1;
        byte b3 = bArr[i6];
        int i8 = i7 + 1;
        byte b4 = bArr[i7];
        int i9 = i8 + 1;
        byte b5 = bArr[i8];
        this.offset = i9 + 1;
        return LocalDateTime.of(i5, b2, b3, b4, b5, bArr[i9], readInt32Value());
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDateTime readLocalDateTime12() {
        LocalDateTime parseLocalDateTime12;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 85 || (parseLocalDateTime12 = DateUtils.parseLocalDateTime12(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 13;
        return parseLocalDateTime12;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDateTime readLocalDateTime14() {
        LocalDateTime parseLocalDateTime14;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 87 || (parseLocalDateTime14 = DateUtils.parseLocalDateTime14(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 15;
        return parseLocalDateTime14;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDateTime readLocalDateTime16() {
        LocalDateTime parseLocalDateTime16;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 89 || (parseLocalDateTime16 = DateUtils.parseLocalDateTime16(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 17;
        return parseLocalDateTime16;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDateTime readLocalDateTime17() {
        LocalDateTime parseLocalDateTime17;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 90 || (parseLocalDateTime17 = DateUtils.parseLocalDateTime17(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 18;
        return parseLocalDateTime17;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDateTime readLocalDateTime18() {
        LocalDateTime parseLocalDateTime18;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 91 || (parseLocalDateTime18 = DateUtils.parseLocalDateTime18(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 19;
        return parseLocalDateTime18;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDateTime readLocalDateTime19() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        byte b = bArr[i];
        this.f12422y = b;
        if (b != 92) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime19 = DateUtils.parseLocalDateTime19(bArr, i + 1);
        if (parseLocalDateTime19 == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 20;
        return parseLocalDateTime19;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDateTime readLocalDateTime20() {
        LocalDateTime parseLocalDateTime20;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 93 || (parseLocalDateTime20 = DateUtils.parseLocalDateTime20(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 21;
        return parseLocalDateTime20;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDateTime readLocalDateTimeX(int i) {
        LocalDateTime parseLocalDateTimeX;
        byte[] bArr = this.f12416v;
        int i2 = this.offset;
        byte b = bArr[i2];
        this.f12422y = b;
        if (b < 73 || b > 120) {
            throw new JSONException("date only support string input");
        }
        if (i >= 21 && i <= 29 && (parseLocalDateTimeX = DateUtils.parseLocalDateTimeX(bArr, i2 + 1, i)) != null) {
            this.offset += i + 1;
            return parseLocalDateTimeX;
        }
        throw new JSONException("illegal LocalDateTime string : " + readString());
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        byte b = bArr[i];
        if (b == -89) {
            int i2 = i + 1;
            int i3 = i2 + 1;
            byte b2 = bArr[i2];
            int i4 = i3 + 1;
            byte b3 = bArr[i3];
            this.offset = i4 + 1;
            return LocalTime.of(b2, b3, bArr[i4], readInt32Value());
        }
        if (b < 73 || b > 120) {
            throw new UnsupportedOperationException();
        }
        int stringLength = getStringLength();
        if (stringLength == 5) {
            return readLocalTime5();
        }
        if (stringLength == 8) {
            return readLocalTime8();
        }
        if (stringLength == 18) {
            return readLocalTime18();
        }
        switch (stringLength) {
            case 10:
                return readLocalTime10();
            case 11:
                return readLocalTime11();
            case 12:
                return readLocalTime12();
            default:
                throw new JSONException("not support len : " + stringLength);
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime10() {
        LocalTime parseLocalTime10;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 83 || (parseLocalTime10 = DateUtils.parseLocalTime10(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 11;
        return parseLocalTime10;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalTime readLocalTime11() {
        LocalTime parseLocalTime11;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 84 || (parseLocalTime11 = DateUtils.parseLocalTime11(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 12;
        return parseLocalTime11;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalTime readLocalTime12() {
        LocalTime parseLocalTime12;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 85 || (parseLocalTime12 = DateUtils.parseLocalTime12(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 13;
        return parseLocalTime12;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalTime readLocalTime18() {
        LocalTime parseLocalTime18;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 91 || (parseLocalTime18 = DateUtils.parseLocalTime18(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 19;
        return parseLocalTime18;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalTime readLocalTime5() {
        LocalTime parseLocalTime5;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 78 || (parseLocalTime5 = DateUtils.parseLocalTime5(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 6;
        return parseLocalTime5;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalTime readLocalTime8() {
        LocalTime parseLocalTime8;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 81 || (parseLocalTime8 = DateUtils.parseLocalTime8(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 9;
        return parseLocalTime8;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime9() {
        LocalTime parseLocalTime8;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 81 || (parseLocalTime8 = DateUtils.parseLocalTime8(bArr, i + 1)) == null) {
            throw new JSONException("date only support string input");
        }
        this.offset += 10;
        return parseLocalTime8;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public long readMillis19() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != 92) {
            throw new JSONException("date only support string input");
        }
        long parseMillis19 = DateUtils.parseMillis19(bArr, i + 1, this.context.f12306o);
        this.offset += 20;
        return parseMillis19;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public void readNull() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        this.offset = i + 1;
        byte b = bArr[i];
        this.f12422y = b;
        if (b == -81) {
            return;
        }
        throw new JSONException("null not match, " + ((int) this.f12422y));
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public Date readNullOrNewDate() {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public Number readNumber() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        if (b >= -16 && b <= 47) {
            return Integer.valueOf(b);
        }
        if (b >= 48 && b <= 63) {
            int i3 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
            this.offset = i2 + 1;
            return Integer.valueOf(i3 + (bArr[i2] & 255));
        }
        if (b >= 64 && b <= 71) {
            int m7375o0 = m7375o0(bArr, i2, b);
            this.offset += 2;
            return Integer.valueOf(m7375o0);
        }
        if (b >= -40 && b <= -17) {
            return Long.valueOf((b - (-40)) - 8);
        }
        if (b >= -56 && b <= -41) {
            this.offset = i2 + 1;
            return Integer.valueOf(((b + 48) << 8) + (bArr[i2] & 255));
        }
        if (b >= -64 && b <= -57) {
            int i4 = i2 + 1;
            int i5 = ((b + DeletedRef3DPtg.sid) << 16) + ((bArr[i2] & 255) << 8);
            this.offset = i4 + 1;
            return Integer.valueOf(i5 + (bArr[i4] & 255));
        }
        if (b == -110) {
            throw new JSONException("not support input type : ".concat(readString()));
        }
        if (b == 72) {
            int i6 = IOUtils.getInt(bArr, i2);
            this.offset += 4;
            return Integer.valueOf(i6);
        }
        if (b == 121) {
            int readInt32Value = readInt32Value();
            String m7395p0 = m7395p0(this.offset, readInt32Value);
            this.offset += readInt32Value;
            return TypeUtils.toBigDecimal(m7395p0);
        }
        if (b == 122) {
            int readInt32Value2 = readInt32Value();
            String str = new String(this.f12416v, this.offset, readInt32Value2, StandardCharsets.UTF_8);
            this.offset += readInt32Value2;
            return TypeUtils.toBigDecimal(str);
        }
        switch (b) {
            case -81:
                return null;
            case -80:
            case -78:
                return Double.valueOf(0.0d);
            case -79:
            case -77:
                return Double.valueOf(1.0d);
            case -76:
                return Double.valueOf(readInt64Value());
            case -75:
                long j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
                this.offset += 8;
                if (!JDKUtils.BIG_ENDIAN) {
                    j = Long.reverseBytes(j);
                }
                return Double.valueOf(Double.longBitsToDouble(j));
            case -74:
                return Float.valueOf(readInt32Value());
            case -73:
                int i7 = IOUtils.getInt(bArr, i2);
                this.offset += 4;
                return Float.valueOf(Float.intBitsToFloat(i7));
            case -72:
                return BigDecimal.valueOf(readInt64Value());
            case -71:
                int readInt32Value3 = readInt32Value();
                BigInteger readBigInteger = readBigInteger();
                return readInt32Value3 == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value3);
            case -70:
                return BigInteger.valueOf(readInt64Value());
            case -69:
                int readInt32Value4 = readInt32Value();
                byte[] bArr2 = new byte[readInt32Value4];
                System.arraycopy(this.f12416v, this.offset, bArr2, 0, readInt32Value4);
                this.offset += readInt32Value4;
                return new BigInteger(bArr2);
            case -68:
                int i8 = (bArr[i2 + 1] & 255) + (bArr[i2] << 8);
                this.offset = i2 + 2;
                return Short.valueOf((short) i8);
            case -67:
                this.offset = i2 + 1;
                return Byte.valueOf(bArr[i2]);
            case -66:
                long j2 = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
                this.offset += 8;
                if (!JDKUtils.BIG_ENDIAN) {
                    j2 = Long.reverseBytes(j2);
                }
                return Long.valueOf(j2);
            case -65:
                int i9 = IOUtils.getInt(bArr, i2);
                this.offset += 4;
                return Long.valueOf(i9);
            default:
                if (b < 73 || b > 120) {
                    throw m7376t0(b);
                }
                int i10 = b - 73;
                String m7395p02 = m7395p0(i2, i10);
                this.offset += i10;
                return TypeUtils.toBigDecimal(m7395p02);
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public void readNumber0() {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public Map<String, Object> readObject() {
        Map jSONObject;
        int i;
        Object num;
        Object obj;
        int i2;
        List list;
        Object obj2;
        byte[] bArr = this.f12416v;
        JSONReader.Context context = this.context;
        long j = context.features;
        int i3 = this.offset;
        this.offset = i3 + 1;
        byte b = bArr[i3];
        this.f12422y = b;
        if (b == -81) {
            return null;
        }
        int i4 = -90;
        if (b < -90) {
            if (b == -110) {
                return (Map) checkAutoType(Map.class, 0L, 0L).readObject(this, null, null, 0L);
            }
            throw m7376t0(b);
        }
        if ((JSONReader.Feature.UseNativeObject.mask & j) != 0) {
            jSONObject = new HashMap();
        } else {
            Supplier<Map> supplier = context.f12309r;
            jSONObject = supplier != null ? supplier.get() : new JSONObject();
        }
        while (true) {
            int i5 = this.offset;
            byte b2 = bArr[i5];
            if (b2 == -91) {
                this.offset = i5 + 1;
                return jSONObject;
            }
            Object readFieldName = b2 >= 73 ? readFieldName() : readAny();
            int i6 = this.offset;
            int i7 = bArr[i6];
            if (i7 == -109) {
                String readReference = readReference();
                if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                    jSONObject.put(readFieldName, jSONObject);
                } else {
                    addResolveTask(jSONObject, readFieldName, JSONPath.m7282of(readReference));
                }
                i = i4;
            } else {
                if (i7 >= 73 && i7 <= 126) {
                    obj2 = readString();
                } else if (i7 >= -16 && i7 <= 47) {
                    this.offset = i6 + 1;
                    obj2 = Integer.valueOf(i7);
                } else if (i7 == -79) {
                    this.offset = i6 + 1;
                    obj2 = Boolean.TRUE;
                } else if (i7 == -80) {
                    this.offset = i6 + 1;
                    obj2 = Boolean.FALSE;
                } else if (i7 == i4) {
                    obj2 = readObject();
                } else if (i7 == -66) {
                    int i8 = i6 + 1;
                    this.offset = i8;
                    long j2 = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i8);
                    this.offset += 8;
                    if (!JDKUtils.BIG_ENDIAN) {
                        j2 = Long.reverseBytes(j2);
                    }
                    obj2 = Long.valueOf(j2);
                } else {
                    if (i7 < -108 || i7 > -92) {
                        i = -90;
                        if (i7 < 48 || i7 > 63) {
                            if (i7 >= 64 && i7 <= 71) {
                                int m7375o0 = m7375o0(bArr, i6 + 1, i7);
                                this.offset += 3;
                                num = new Integer(m7375o0);
                            } else if (i7 == 72) {
                                int i9 = IOUtils.getInt(bArr, i6 + 1);
                                this.offset += 5;
                                num = new Integer(i9);
                            } else {
                                obj = readAny();
                            }
                            obj = num;
                        } else {
                            Object valueOf = Integer.valueOf(((i7 - 56) << 8) + (bArr[i6 + 1] & 255));
                            this.offset += 2;
                            obj = valueOf;
                        }
                    } else {
                        int i10 = i6 + 1;
                        this.offset = i10;
                        if (i7 == -92) {
                            i2 = bArr[i10];
                            if (i2 >= -16 && i2 <= 47) {
                                this.offset = i10 + 1;
                            } else if (i2 < 48 || i2 > 63) {
                                i2 = m7382F0();
                            } else {
                                i2 = ((i2 - 56) << 8) + (bArr[i10 + 1] & 255);
                                this.offset = i10 + 2;
                            }
                        } else {
                            i2 = i7 + 108;
                        }
                        if (i2 != 0) {
                            if ((JSONReader.Feature.UseNativeObject.mask & j) != 0) {
                                list = new ArrayList(i2);
                            } else {
                                Supplier<List> supplier2 = this.context.f12310s;
                                list = supplier2 != null ? supplier2.get() : new JSONArray(i2);
                            }
                            for (int i11 = 0; i11 < i2; i11++) {
                                byte b3 = bArr[this.offset];
                                if (b3 == -109) {
                                    String readReference2 = readReference();
                                    if (Constants.ATTRVAL_PARENT.equals(readReference2)) {
                                        list.add(list);
                                    } else {
                                        list.add(null);
                                        addResolveTask(list, i11, JSONPath.m7282of(readReference2));
                                    }
                                } else {
                                    list.add((b3 < 73 || b3 > 126) ? b3 == -90 ? readObject() : readAny() : readString());
                                }
                            }
                        } else if ((JSONReader.Feature.UseNativeObject.mask & j) != 0) {
                            list = new ArrayList();
                        } else {
                            Supplier<List> supplier3 = this.context.f12310s;
                            list = supplier3 != null ? supplier3.get() : new JSONArray();
                        }
                        i = -90;
                        obj = list;
                    }
                    if (obj == null || (JSONReader.Feature.IgnoreNullPropertyValue.mask & j) == 0) {
                        jSONObject.put(readFieldName, obj);
                    }
                }
                i = i4;
                obj = obj2;
                if (obj == null) {
                }
                jSONObject.put(readFieldName, obj);
            }
            i4 = i;
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public OffsetDateTime readOffsetDateTime() {
        ZonedDateTime readZonedDateTime = readZonedDateTime();
        if (readZonedDateTime == null) {
            return null;
        }
        return readZonedDateTime.toOffsetDateTime();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public OffsetTime readOffsetTime() {
        ZonedDateTime readZonedDateTime = readZonedDateTime();
        if (readZonedDateTime == null) {
            return null;
        }
        return readZonedDateTime.toOffsetDateTime().toOffsetTime();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String readPattern() {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String readReference() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != -109) {
            return null;
        }
        this.offset = i + 1;
        if (isString()) {
            return readString();
        }
        throw new JSONException("reference not support input " + m7394n0(this.f12422y));
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String readString() {
        int i;
        String str;
        byte[] bArr = this.f12416v;
        int i2 = this.offset;
        int i3 = i2 + 1;
        this.offset = i3;
        byte b = bArr[i2];
        this.f12408J = b;
        if (b == -81) {
            return null;
        }
        this.f12409O = i3;
        if (b < 73 || b > 121) {
            return m7386J0();
        }
        if (b == 121) {
            i = bArr[i3];
            if (i >= -16 && i <= 47) {
                this.offset = i3 + 1;
            } else if (i >= 48 && i <= 63) {
                i = ((i - 56) << 8) + (bArr[i3 + 1] & 255);
                this.offset = i3 + 2;
            } else if (i < 64 || i > 71) {
                i = m7382F0();
            } else {
                i = m7375o0(bArr, i3 + 1, i);
                this.offset += 3;
            }
            this.f12409O = this.offset;
        } else {
            i = b - 73;
        }
        if (i < 0) {
            return this.f12413q0.getName(-i);
        }
        this.f12423z = i;
        if (JDKUtils.ANDROID_SDK_INT < 34) {
            char[] cArr = this.f12411Z;
            if (cArr == null) {
                cArr = JSONFactory.f12219C.getAndSet(this.f12412k0, null);
                this.f12411Z = cArr;
            }
            if (cArr == null || cArr.length < i) {
                cArr = new char[i];
                this.f12411Z = cArr;
            }
            for (int i4 = 0; i4 < i; i4++) {
                cArr[i4] = (char) (this.f12416v[this.offset + i4] & 255);
            }
            str = new String(cArr, 0, i);
        } else {
            str = new String(this.f12416v, this.offset, i, StandardCharsets.ISO_8859_1);
        }
        this.offset += i;
        if ((this.context.features & JSONReader.Feature.TrimString.mask) != 0) {
            str = str.trim();
        }
        if (i != 0 || (this.context.features & JSONReader.Feature.EmptyStringAsNull.mask) == 0) {
            return str;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String[] readStringArray() {
        if (nextIfMatch(JSONB.Constants.BC_TYPED_ANY) && readTypeHashCode() != ObjectReaderImplStringArray.HASH_TYPE) {
            throw new JSONException(info("not support type " + getString()));
        }
        int startArray = startArray();
        if (startArray == -1) {
            return null;
        }
        String[] strArr = new String[startArray];
        for (int i = 0; i < startArray; i++) {
            strArr[i] = readString();
        }
        return strArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson2.JSONReader
    public long readTypeHashCode() {
        int i;
        int i2;
        int i3;
        byte[] bArr = this.f12416v;
        int i4 = this.offset;
        byte b = bArr[i4];
        this.f12408J = b;
        if (b == 121 && (i2 = bArr[(i = i4 + 1)]) > 8 && i2 <= 63) {
            if (i2 <= 47) {
                i3 = i + 1;
            } else {
                i2 = ((i2 - 56) << 8) + (bArr[i + 1] & 255);
                i3 = i + 2;
            }
            long j = Fnv.MAGIC_HASH_CODE;
            int i5 = 0;
            int i6 = i3;
            while (i5 < i2) {
                j = (j ^ bArr[i6]) * Fnv.MAGIC_PRIME;
                i5++;
                i6++;
            }
            int i7 = bArr[i6];
            if (i7 >= 0 && i7 <= 47) {
                int i8 = i6 + 1;
                if (i7 == 0) {
                    this.f12415u0 = i3;
                    this.f12417v0 = i2;
                    this.f12419w0 = b;
                    this.f12414t0 = j;
                } else {
                    int i9 = i7 * 2;
                    int i10 = i9 + 2;
                    long[] jArr = this.f12421x0;
                    if (jArr == null) {
                        this.f12421x0 = new long[Math.max(i10, 32)];
                    } else if (jArr.length < i10) {
                        this.f12421x0 = Arrays.copyOf(jArr, i10 + 16);
                    }
                    this.f12421x0[i9 + 1] = (i3 << 32) + (i2 << 8) + b;
                }
                this.f12409O = i3;
                this.f12423z = i2;
                this.offset = i8;
                return j;
            }
        }
        return m7389M0();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public UUID readUUID() {
        long reverseBytes;
        long j;
        long j2;
        long j3;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        int i3 = 16;
        if (b == -111) {
            int m7382F0 = m7382F0();
            if (m7382F0 != 16) {
                throw new JSONException("uuid not support " + m7382F0);
            }
            Unsafe unsafe = JDKUtils.UNSAFE;
            long j4 = JDKUtils.ARRAY_BYTE_BASE_OFFSET;
            long j5 = unsafe.getLong(bArr, this.offset + j4);
            long j6 = unsafe.getLong(bArr, j4 + this.offset + 8);
            this.offset += 16;
            boolean z = JDKUtils.BIG_ENDIAN;
            long reverseBytes2 = z ? j5 : Long.reverseBytes(j5);
            reverseBytes = z ? j6 : Long.reverseBytes(j6);
            j = reverseBytes2;
        } else {
            if (b == -81) {
                return null;
            }
            if (b == 105) {
                j = 0;
                for (int i4 = 0; i4 < 16; i4++) {
                    j = (j << 4) + JSONFactory.f12224H[bArr[this.offset + i4] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                }
                reverseBytes = 0;
                while (i3 < 32) {
                    reverseBytes = (reverseBytes << 4) + JSONFactory.f12224H[bArr[this.offset + i3] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                    i3++;
                }
                this.offset += 32;
            } else if (b == 109) {
                byte b2 = bArr[i2 + 8];
                byte b3 = bArr[i2 + 13];
                byte b4 = bArr[i2 + 18];
                byte b5 = bArr[i2 + 23];
                if (b2 != 45 || b3 != 45 || b4 != 45 || b5 != 45) {
                    throw new JSONException("Invalid UUID string:  " + new String(bArr, this.offset, 36, StandardCharsets.ISO_8859_1));
                }
                long j7 = 0;
                for (int i5 = 0; i5 < 8; i5++) {
                    j7 = (j7 << 4) + JSONFactory.f12224H[bArr[this.offset + i5] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                }
                for (int i6 = 9; i6 < 13; i6++) {
                    j7 = (j7 << 4) + JSONFactory.f12224H[bArr[this.offset + i6] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                }
                j = j7;
                for (int i7 = 14; i7 < 18; i7++) {
                    j = (j << 4) + JSONFactory.f12224H[bArr[this.offset + i7] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                }
                reverseBytes = 0;
                for (int i8 = 19; i8 < 23; i8++) {
                    reverseBytes = (reverseBytes << 4) + JSONFactory.f12224H[bArr[this.offset + i8] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                }
                for (int i9 = 24; i9 < 36; i9++) {
                    reverseBytes = (reverseBytes << 4) + JSONFactory.f12224H[bArr[this.offset + i9] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                }
                this.offset += 36;
            } else {
                if (b != 121 && b != 122) {
                    throw m7376t0(b);
                }
                int m7382F02 = m7382F0();
                if (m7382F02 == 32) {
                    j = 0;
                    for (int i10 = 0; i10 < 16; i10++) {
                        j = (j << 4) + JSONFactory.f12224H[bArr[this.offset + i10] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                    }
                    reverseBytes = 0;
                    while (i3 < 32) {
                        reverseBytes = (reverseBytes << 4) + JSONFactory.f12224H[bArr[this.offset + i3] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                        i3++;
                    }
                    this.offset += 32;
                } else {
                    if (m7382F02 != 36) {
                        String str = new String(bArr, this.offset, m7382F02, StandardCharsets.UTF_8);
                        this.offset += m7382F02;
                        throw new JSONException("Invalid UUID string:  " + str);
                    }
                    int i11 = this.offset;
                    byte b6 = bArr[i11 + 8];
                    byte b7 = bArr[i11 + 13];
                    byte b8 = bArr[i11 + 18];
                    byte b9 = bArr[i11 + 23];
                    if (b6 == 45 && b7 == 45 && b8 == 45 && b9 == 45) {
                        long j8 = 0;
                        for (int i12 = 0; i12 < 8; i12++) {
                            j8 = (j8 << 4) + JSONFactory.f12224H[bArr[this.offset + i12] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                        }
                        for (int i13 = 9; i13 < 13; i13++) {
                            j8 = (j8 << 4) + JSONFactory.f12224H[bArr[this.offset + i13] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                        }
                        for (int i14 = 14; i14 < 18; i14++) {
                            j8 = (j8 << 4) + JSONFactory.f12224H[bArr[this.offset + i14] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                        }
                        long j9 = 0;
                        for (int i15 = 19; i15 < 23; i15++) {
                            j9 = (j9 << 4) + JSONFactory.f12224H[bArr[this.offset + i15] + JSONB.Constants.BC_INT64_BYTE_ZERO];
                        }
                        for (int i16 = 24; i16 < 36; i16++) {
                            j9 = JSONFactory.f12224H[bArr[this.offset + i16] + JSONB.Constants.BC_INT64_BYTE_ZERO] + (j9 << 4);
                        }
                        this.offset += 36;
                        j3 = j9;
                        j2 = j8;
                    } else {
                        j2 = 0;
                        j3 = 0;
                    }
                    j = j2;
                    reverseBytes = j3;
                }
            }
        }
        return new UUID(j, reverseBytes);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0239 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02c0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x033d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x015c A[RETURN] */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readValueHashCode() {
        /*
            Method dump skipped, instructions count: 956
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.readValueHashCode():long");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public ZonedDateTime readZonedDateTime() {
        ZoneId zoneId;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        if (b != -86) {
            return m7392P0(b);
        }
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = (bArr[i2] << 8) + (bArr[i3] & 255);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        int i7 = i6 + 1;
        byte b3 = bArr[i6];
        int i8 = i7 + 1;
        byte b4 = bArr[i7];
        int i9 = i8 + 1;
        byte b5 = bArr[i8];
        this.offset = i9 + 1;
        LocalDateTime of = LocalDateTime.of(i5, b2, b3, b4, b5, bArr[i9], readInt32Value());
        if (readValueHashCode() == -4800907791268808639L) {
            zoneId = DateUtils.SHANGHAI_ZONE_ID;
        } else {
            String string = getString();
            zoneId = this.context.getZoneId();
            if (!zoneId.getId().equals(string)) {
                zoneId = DateUtils.getZoneId(string, DateUtils.SHANGHAI_ZONE_ID);
            }
        }
        return ZonedDateTime.ofLocal(of, zoneId, null);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final ZonedDateTime readZonedDateTimeX(int i) {
        ZonedDateTime parseZonedDateTime;
        byte[] bArr = this.f12416v;
        int i2 = this.offset;
        byte b = bArr[i2];
        this.f12422y = b;
        if (b < 73 || b > 120) {
            throw new JSONException("date only support string input");
        }
        if (i >= 19 && (parseZonedDateTime = DateUtils.parseZonedDateTime(bArr, i2 + 1, i, this.context.f12306o)) != null) {
            this.offset += i + 1;
            return parseZonedDateTime;
        }
        throw new JSONException("illegal LocalDateTime string : " + readString());
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public void reset(JSONReader.SavePoint savePoint) {
        this.offset = savePoint.offset;
        this.f12422y = (byte) savePoint.current;
    }

    /* renamed from: s0 */
    public final JSONException m7398s0() {
        throw new JSONException("readString not support type " + JSONB.typeName(this.f12408J) + ", offset " + this.offset + "/" + this.f12416v.length);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public void skipComment() {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean skipName() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        this.f12408J = b;
        if (b >= 73 && b <= 120) {
            this.offset = i2 + (b - 73);
            return true;
        }
        if (b == 121 || b == 122 || b == 123 || b == 124 || b == 125) {
            int m7382F0 = m7382F0();
            this.f12423z = m7382F0;
            this.offset += m7382F0;
            return true;
        }
        if (b != Byte.MAX_VALUE) {
            throw m7376t0(b);
        }
        byte b2 = bArr[i2];
        if (b2 >= -16 && b2 <= 72) {
            readInt32Value();
            return true;
        }
        readString();
        readInt32Value();
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x001f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0016. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0019. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x001c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00e1  */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skipValue() {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.skipValue():void");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public int startArray() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        this.offset = i + 1;
        byte b = bArr[i];
        this.f12422y = b;
        if (b == -81) {
            return -1;
        }
        if (b >= -108 && b <= -93) {
            this.f12290ch = (char) (-b);
            return b - (-108);
        }
        if (b != -111 && b != -92) {
            throw new JSONException("array not support input " + m7394n0(b));
        }
        return readInt32Value();
    }

    /* renamed from: u0 */
    public final BigInteger m7399u0(byte b) {
        byte[] bArr = this.f12416v;
        if (b == -111) {
            int readInt32Value = readInt32Value();
            byte[] bArr2 = new byte[readInt32Value];
            System.arraycopy(this.f12416v, this.offset, bArr2, 0, readInt32Value);
            this.offset += readInt32Value;
            return new BigInteger(bArr2);
        }
        if (b == -71) {
            int readInt32Value2 = readInt32Value();
            BigInteger readBigInteger = readBigInteger();
            return (readInt32Value2 == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value2)).toBigInteger();
        }
        if (b != 72) {
            if (b == 124) {
                int readInt32Value3 = readInt32Value();
                String str = new String(bArr, this.offset, readInt32Value3, StandardCharsets.UTF_16LE);
                this.offset += readInt32Value3;
                return str.indexOf(46) == -1 ? new BigInteger(str) : TypeUtils.toBigDecimal(str).toBigInteger();
            }
            if (b == 121) {
                int readInt32Value4 = readInt32Value();
                String str2 = new String(bArr, this.offset, readInt32Value4, StandardCharsets.ISO_8859_1);
                this.offset += readInt32Value4;
                return str2.indexOf(46) == -1 ? new BigInteger(str2) : TypeUtils.toBigDecimal(str2).toBigInteger();
            }
            if (b == 122) {
                int readInt32Value5 = readInt32Value();
                String str3 = new String(bArr, this.offset, readInt32Value5, StandardCharsets.UTF_8);
                this.offset += readInt32Value5;
                return str3.indexOf(46) == -1 ? new BigInteger(str3) : TypeUtils.toBigDecimal(str3).toBigInteger();
            }
            switch (b) {
                case -81:
                    return null;
                case -80:
                case -78:
                    return BigInteger.ZERO;
                case -79:
                case -77:
                    return BigInteger.ONE;
                case -76:
                    return BigInteger.valueOf(readInt64Value());
                case -75:
                    long j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                    this.offset += 8;
                    if (!JDKUtils.BIG_ENDIAN) {
                        j = Long.reverseBytes(j);
                    }
                    return BigInteger.valueOf((long) Double.longBitsToDouble(j));
                case -74:
                    return BigInteger.valueOf(readInt32Value());
                case -73:
                    int i = IOUtils.getInt(bArr, this.offset);
                    this.offset += 4;
                    return BigInteger.valueOf(Float.intBitsToFloat(i));
                default:
                    switch (b) {
                        case -68:
                            int i2 = this.offset;
                            int i3 = (bArr[i2 + 1] & 255) + (bArr[i2] << 8);
                            this.offset = i2 + 2;
                            return BigInteger.valueOf(i3);
                        case -67:
                            this.offset = this.offset + 1;
                            return BigInteger.valueOf(bArr[r7]);
                        case -66:
                            long j2 = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                            this.offset += 8;
                            if (!JDKUtils.BIG_ENDIAN) {
                                j2 = Long.reverseBytes(j2);
                            }
                            return BigInteger.valueOf(j2);
                        case -65:
                            break;
                        default:
                            if (b >= -16 && b <= 47) {
                                return BigInteger.valueOf(b);
                            }
                            if (b >= 48 && b <= 63) {
                                int i4 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
                                this.offset = this.offset + 1;
                                return BigInteger.valueOf(i4 + (bArr[r1] & 255));
                            }
                            if (b >= 64 && b <= 71) {
                                int m7375o0 = m7375o0(bArr, this.offset, b);
                                this.offset += 2;
                                return BigInteger.valueOf(m7375o0);
                            }
                            if (b >= -40 && b <= -17) {
                                return BigInteger.valueOf((b - (-40)) - 8);
                            }
                            if (b >= -56 && b <= -41) {
                                this.offset = this.offset + 1;
                                return BigInteger.valueOf(((b + 48) << 8) + (bArr[r1] & 255));
                            }
                            if (b >= -64 && b <= -57) {
                                int i5 = (b + DeletedRef3DPtg.sid) << 16;
                                int i6 = this.offset;
                                int i7 = i5 + ((bArr[i6] & 255) << 8);
                                this.offset = i6 + 1 + 1;
                                return BigInteger.valueOf(i7 + (bArr[r2] & 255));
                            }
                            if (b < 73 || b > 120) {
                                throw m7376t0(b);
                            }
                            int i8 = b - 73;
                            String m7395p0 = m7395p0(this.offset, i8);
                            this.offset += i8;
                            return new BigInteger(m7395p0);
                    }
            }
        }
        int i9 = IOUtils.getInt(bArr, this.offset);
        this.offset += 4;
        return BigInteger.valueOf(i9);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
    
        if (r2.equals("TRUE") == false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0191  */
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m7400v0(byte r17) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1737g.m7400v0(byte):boolean");
    }

    /* renamed from: w0 */
    public final BigDecimal m7401w0(byte b) {
        if (b != 72) {
            if (b == 124) {
                int readInt32Value = readInt32Value();
                String str = new String(this.f12416v, this.offset, readInt32Value, StandardCharsets.UTF_16LE);
                this.offset += readInt32Value;
                return TypeUtils.toBigDecimal(str);
            }
            if (b == 121) {
                int readInt32Value2 = readInt32Value();
                String str2 = new String(this.f12416v, this.offset, readInt32Value2, StandardCharsets.ISO_8859_1);
                this.offset += readInt32Value2;
                return TypeUtils.toBigDecimal(str2);
            }
            if (b == 122) {
                int readInt32Value3 = readInt32Value();
                String str3 = new String(this.f12416v, this.offset, readInt32Value3, StandardCharsets.UTF_8);
                this.offset += readInt32Value3;
                return TypeUtils.toBigDecimal(str3);
            }
            switch (b) {
                case -81:
                    return null;
                case -80:
                case -78:
                    return BigDecimal.ZERO;
                case -79:
                case -77:
                    return BigDecimal.ONE;
                case -76:
                    return BigDecimal.valueOf(readInt64Value());
                case -75:
                    long j = JDKUtils.UNSAFE.getLong(this.f12416v, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                    this.offset += 8;
                    if (!JDKUtils.BIG_ENDIAN) {
                        j = Long.reverseBytes(j);
                    }
                    return BigDecimal.valueOf((long) Double.longBitsToDouble(j));
                case -74:
                    return BigDecimal.valueOf(readInt32Value());
                case -73:
                    int i = IOUtils.getInt(this.f12416v, this.offset);
                    this.offset += 4;
                    return BigDecimal.valueOf(Float.intBitsToFloat(i));
                default:
                    switch (b) {
                        case -69:
                            return new BigDecimal(readBigInteger());
                        case -68:
                            byte[] bArr = this.f12416v;
                            int i2 = this.offset;
                            int i3 = (bArr[i2 + 1] & 255) + (bArr[i2] << 8);
                            this.offset = i2 + 2;
                            return BigDecimal.valueOf(i3);
                        case -67:
                            byte[] bArr2 = this.f12416v;
                            this.offset = this.offset + 1;
                            return BigDecimal.valueOf(bArr2[r0]);
                        case -66:
                            long j2 = JDKUtils.UNSAFE.getLong(this.f12416v, JDKUtils.ARRAY_BYTE_BASE_OFFSET + this.offset);
                            this.offset += 8;
                            if (!JDKUtils.BIG_ENDIAN) {
                                j2 = Long.reverseBytes(j2);
                            }
                            return BigDecimal.valueOf(j2);
                        case -65:
                            break;
                        default:
                            if (b >= -16 && b <= 47) {
                                return BigDecimal.valueOf(b);
                            }
                            if (b >= 48 && b <= 63) {
                                int i4 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
                                byte[] bArr3 = this.f12416v;
                                this.offset = this.offset + 1;
                                return BigDecimal.valueOf(i4 + (bArr3[r1] & 255));
                            }
                            if (b >= 64 && b <= 71) {
                                int m7375o0 = m7375o0(this.f12416v, this.offset, b);
                                this.offset += 2;
                                return BigDecimal.valueOf(m7375o0);
                            }
                            if (b >= -40 && b <= -17) {
                                return BigDecimal.valueOf((b - (-40)) - 8);
                            }
                            if (b >= -56 && b <= -41) {
                                byte[] bArr4 = this.f12416v;
                                this.offset = this.offset + 1;
                                return BigDecimal.valueOf(((b + 48) << 8) + (bArr4[r1] & 255));
                            }
                            if (b < -64 || b > -57) {
                                if (b < 73 || b > 120) {
                                    throw m7376t0(b);
                                }
                                int i5 = b - 73;
                                String m7395p0 = m7395p0(this.offset, i5);
                                this.offset += i5;
                                return TypeUtils.toBigDecimal(m7395p0);
                            }
                            int i6 = (b + DeletedRef3DPtg.sid) << 16;
                            byte[] bArr5 = this.f12416v;
                            int i7 = this.offset;
                            int i8 = i6 + ((bArr5[i7] & 255) << 8);
                            this.offset = i7 + 1 + 1;
                            return BigDecimal.valueOf(i8 + (bArr5[r2] & 255));
                    }
            }
        }
        int i9 = IOUtils.getInt(this.f12416v, this.offset);
        this.offset += 4;
        return BigDecimal.valueOf(i9);
    }

    /* renamed from: x0 */
    public final double m7402x0() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        if (b == -74) {
            return readInt32Value();
        }
        if (b == -73) {
            int i3 = JDKUtils.UNSAFE.getInt(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
            this.offset += 4;
            if (!JDKUtils.BIG_ENDIAN) {
                i3 = Integer.reverseBytes(i3);
            }
            return Float.intBitsToFloat(i3);
        }
        if (b == -71) {
            int readInt32Value = readInt32Value();
            BigInteger readBigInteger = readBigInteger();
            return (readInt32Value == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value)).intValue();
        }
        if (b != 72) {
            if (b == 124) {
                int readInt32Value2 = readInt32Value();
                String str = new String(bArr, this.offset, readInt32Value2, StandardCharsets.UTF_16LE);
                this.offset += readInt32Value2;
                return str.indexOf(46) == -1 ? new BigInteger(str).intValue() : TypeUtils.toBigDecimal(str).intValue();
            }
            if (b == 121) {
                int readInt32Value3 = readInt32Value();
                String str2 = new String(bArr, this.offset, readInt32Value3, StandardCharsets.ISO_8859_1);
                this.offset += readInt32Value3;
                return str2.indexOf(46) == -1 ? new BigInteger(str2).intValue() : TypeUtils.toBigDecimal(str2).intValue();
            }
            if (b == 122) {
                int readInt32Value4 = readInt32Value();
                String str3 = new String(bArr, this.offset, readInt32Value4, StandardCharsets.UTF_8);
                this.offset += readInt32Value4;
                return str3.indexOf(46) == -1 ? new BigInteger(str3).intValue() : TypeUtils.toBigDecimal(str3).intValue();
            }
            switch (b) {
                case -81:
                    if ((this.context.features & JSONReader.Feature.ErrorOnNullForPrimitives.mask) != 0) {
                        throw new JSONException(info("long value not support input null"));
                    }
                    this.wasNull = true;
                    return 0.0d;
                case -80:
                case -78:
                    return 0.0d;
                case -79:
                case -77:
                    return 1.0d;
                case -76:
                    return readInt64Value();
                default:
                    switch (b) {
                        case -68:
                            int i4 = (bArr[i2 + 1] & 255) + (bArr[i2] << 8);
                            this.offset = i2 + 2;
                            return i4;
                        case -67:
                            this.offset = i2 + 1;
                            return bArr[i2];
                        case -66:
                            long j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
                            this.offset += 8;
                            if (!JDKUtils.BIG_ENDIAN) {
                                j = Long.reverseBytes(j);
                            }
                            return j;
                        case -65:
                            break;
                        default:
                            if (b >= -16 && b <= 47) {
                                return b;
                            }
                            if (b >= 48 && b <= 63) {
                                int i5 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
                                this.offset = i2 + 1;
                                return i5 + (bArr[i2] & 255);
                            }
                            if (b >= 64 && b <= 71) {
                                int m7375o0 = m7375o0(bArr, i2, b);
                                this.offset += 2;
                                return m7375o0;
                            }
                            if (b >= -40 && b <= -17) {
                                return (b - (-40)) - 8;
                            }
                            if (b >= -56 && b <= -41) {
                                this.offset = i2 + 1;
                                return ((b + 48) << 8) + (bArr[i2] & 255);
                            }
                            if (b >= -64 && b <= -57) {
                                int i6 = ((b + DeletedRef3DPtg.sid) << 16) + ((bArr[i2] & 255) << 8);
                                this.offset = i2 + 1 + 1;
                                return i6 + (bArr[r3] & 255);
                            }
                            if (b < 73 || b > 120) {
                                throw m7376t0(b);
                            }
                            int i7 = b - 73;
                            String m7395p0 = m7395p0(i2, i7);
                            this.offset += i7;
                            return m7395p0.indexOf(46) == -1 ? new BigInteger(m7395p0).intValue() : TypeUtils.toBigDecimal(m7395p0).intValue();
                    }
            }
        }
        int i8 = JDKUtils.UNSAFE.getInt(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
        this.offset += 4;
        return JDKUtils.BIG_ENDIAN ? i8 : Integer.reverseBytes(i8);
    }

    /* renamed from: y0 */
    public JSONException m7403y0() {
        StringBuilder sb = new StringBuilder();
        sb.append("fieldName not support input type ");
        sb.append(JSONB.typeName(this.f12408J));
        if (this.f12408J == -109) {
            sb.append(" ");
            sb.append(readString());
        }
        sb.append(", offset ");
        sb.append(this.offset);
        return new JSONException(sb.toString());
    }

    /* renamed from: z0 */
    public final float m7404z0() {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        int i2 = i + 1;
        this.offset = i2;
        byte b = bArr[i];
        if (b == -71) {
            int readInt32Value = readInt32Value();
            BigInteger readBigInteger = readBigInteger();
            return (readInt32Value == 0 ? new BigDecimal(readBigInteger) : new BigDecimal(readBigInteger, readInt32Value)).intValue();
        }
        if (b != 72) {
            if (b == 124) {
                int readInt32Value2 = readInt32Value();
                String str = new String(bArr, this.offset, readInt32Value2, StandardCharsets.UTF_16LE);
                this.offset += readInt32Value2;
                return str.indexOf(46) == -1 ? new BigInteger(str).intValue() : TypeUtils.toBigDecimal(str).intValue();
            }
            if (b == 121) {
                int readInt32Value3 = readInt32Value();
                String str2 = new String(bArr, this.offset, readInt32Value3, StandardCharsets.ISO_8859_1);
                this.offset += readInt32Value3;
                return str2.indexOf(46) == -1 ? new BigInteger(str2).intValue() : TypeUtils.toBigDecimal(str2).intValue();
            }
            if (b == 122) {
                int readInt32Value4 = readInt32Value();
                String str3 = new String(bArr, this.offset, readInt32Value4, StandardCharsets.UTF_8);
                this.offset += readInt32Value4;
                return str3.indexOf(46) == -1 ? new BigInteger(str3).intValue() : TypeUtils.toBigDecimal(str3).intValue();
            }
            switch (b) {
                case -81:
                    if ((this.context.features & JSONReader.Feature.ErrorOnNullForPrimitives.mask) != 0) {
                        throw new JSONException(info("long value not support input null"));
                    }
                    this.wasNull = true;
                    return 0.0f;
                case -80:
                case -78:
                    return 0.0f;
                case -79:
                case -77:
                    return 1.0f;
                case -76:
                    return (float) readInt64Value();
                case -75:
                    long j = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
                    this.offset += 8;
                    if (!JDKUtils.BIG_ENDIAN) {
                        j = Long.reverseBytes(j);
                    }
                    return (float) Double.longBitsToDouble(j);
                case -74:
                    return readInt32Value();
                default:
                    switch (b) {
                        case -68:
                            int i3 = (bArr[i2 + 1] & 255) + (bArr[i2] << 8);
                            this.offset = i2 + 2;
                            return i3;
                        case -67:
                            this.offset = i2 + 1;
                            return bArr[i2];
                        case -66:
                            long j2 = JDKUtils.UNSAFE.getLong(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2);
                            this.offset += 8;
                            if (!JDKUtils.BIG_ENDIAN) {
                                j2 = Long.reverseBytes(j2);
                            }
                            return (float) j2;
                        case -65:
                            break;
                        default:
                            if (b >= -16 && b <= 47) {
                                return b;
                            }
                            if (b >= 48 && b <= 63) {
                                int i4 = (b + JSONB.Constants.BC_INT64_BYTE_MIN) << 8;
                                this.offset = i2 + 1;
                                return i4 + (bArr[i2] & 255);
                            }
                            if (b >= 64 && b <= 71) {
                                int m7375o0 = m7375o0(bArr, i2, b);
                                this.offset += 2;
                                return m7375o0;
                            }
                            if (b >= -40 && b <= -17) {
                                return (b - (-40)) - 8;
                            }
                            if (b >= -56 && b <= -41) {
                                this.offset = i2 + 1;
                                return ((b + 48) << 8) + (bArr[i2] & 255);
                            }
                            if (b >= -64 && b <= -57) {
                                int i5 = ((b + DeletedRef3DPtg.sid) << 16) + ((bArr[i2] & 255) << 8);
                                this.offset = i2 + 1 + 1;
                                return i5 + (bArr[r3] & 255);
                            }
                            if (b < 73 || b > 120) {
                                throw m7376t0(b);
                            }
                            int i6 = b - 73;
                            String m7395p0 = m7395p0(i2, i6);
                            this.offset += i6;
                            return m7395p0.indexOf(46) == -1 ? new BigInteger(m7395p0).intValue() : TypeUtils.toBigDecimal(m7395p0).intValue();
                    }
            }
        }
        int i7 = IOUtils.getInt(bArr, i2);
        this.offset += 4;
        return i7;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfMatch(byte b) {
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] != b) {
            return false;
        }
        this.offset = i + 1;
        return true;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfMatchIdent(char c, char c2, char c3, char c4) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfMatchIdent(char c, char c2, char c3, char c4, char c5) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfMatchIdent(char c, char c2, char c3, char c4, char c5, char c6) {
        throw new JSONException("UnsupportedOperation");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public <T> T read(Class<T> cls) {
        JSONReader.Context context = this.context;
        return (T) context.provider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(this, null, null, 0L);
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public void read(Map map, long j) {
        Object readAny;
        Object readAny2;
        byte[] bArr = this.f12416v;
        int i = this.offset;
        if (bArr[i] == -90) {
            this.offset = i + 1;
            while (true) {
                byte[] bArr2 = this.f12416v;
                int i2 = this.offset;
                byte b = bArr2[i2];
                if (b == -91) {
                    this.offset = i2 + 1;
                    return;
                }
                if (b >= 73) {
                    readAny = readFieldName();
                } else {
                    readAny = readAny();
                }
                if (isReference()) {
                    String readReference = readReference();
                    if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                        map.put(readAny, map);
                    } else {
                        addResolveTask(map, readAny, JSONPath.m7282of(readReference));
                        map.put(readAny, null);
                    }
                } else {
                    byte[] bArr3 = this.f12416v;
                    int i3 = this.offset;
                    byte b2 = bArr3[i3];
                    if (b2 >= 73 && b2 <= 126) {
                        readAny2 = readString();
                    } else if (b2 >= -16 && b2 <= 47) {
                        this.offset = i3 + 1;
                        readAny2 = Integer.valueOf(b2);
                    } else if (b2 == -79) {
                        this.offset = i3 + 1;
                        readAny2 = Boolean.TRUE;
                    } else if (b2 == -80) {
                        this.offset = i3 + 1;
                        readAny2 = Boolean.FALSE;
                    } else if (b2 == -90) {
                        readAny2 = readObject();
                    } else {
                        readAny2 = readAny();
                    }
                    if (readAny2 != null || (this.context.features & JSONReader.Feature.IgnoreNullPropertyValue.mask) == 0) {
                        map.put(readAny, readAny2);
                    }
                }
            }
        } else {
            throw new JSONException("object not support input " + m7394n0(this.f12422y));
        }
    }

    public C1737g(JSONReader.Context context, byte[] bArr, int i, int i2) {
        super(context, true);
        this.f12416v = bArr;
        this.offset = i;
        this.f12418w = i2;
        this.f12420x = i + i2;
        this.f12413q0 = context.symbolTable;
        JSONFactory.C1722b[] c1722bArr = JSONFactory.f12217A;
        this.f12412k0 = c1722bArr[System.identityHashCode(Thread.currentThread()) & (c1722bArr.length - 1)];
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public List readArray(Type type) {
        if (nextIfNull()) {
            return null;
        }
        if (this.f12416v[this.offset] == -110) {
            Object readAny = readAny();
            if (readAny instanceof List) {
                return (List) readAny;
            }
            if (readAny instanceof Collection) {
                return new JSONArray((Collection<?>) readAny);
            }
            throw new JSONException("not support class " + readAny.getClass());
        }
        int startArray = startArray();
        JSONArray jSONArray = new JSONArray(startArray);
        for (int i = 0; i < startArray; i++) {
            jSONArray.add(read(type));
        }
        return jSONArray;
    }
}
