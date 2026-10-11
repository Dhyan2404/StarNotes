package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.filter.Filter;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderBean;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.MultiType;
import com.alibaba.fastjson2.util.ParameterizedTypeImpl;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.sunia.HTREnginev2.t4h;
import com.twelvemonkeys.image.ImageUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public interface JSONB {

    /* loaded from: classes3.dex */
    public interface Constants {
        public static final int ARRAY_FIX_LEN = 15;
        public static final byte BC_ARRAY = -92;
        public static final byte BC_ARRAY_FIX_0 = -108;
        public static final byte BC_ARRAY_FIX_MAX = -93;
        public static final byte BC_ARRAY_FIX_MIN = -108;
        public static final byte BC_BIGINT = -69;
        public static final byte BC_BIGINT_LONG = -70;
        public static final byte BC_BINARY = -111;
        public static final byte BC_CHAR = -112;
        public static final byte BC_DECIMAL = -71;
        public static final byte BC_DECIMAL_LONG = -72;
        public static final byte BC_DOUBLE = -75;
        public static final byte BC_DOUBLE_LONG = -76;
        public static final byte BC_DOUBLE_NUM_0 = -78;
        public static final byte BC_DOUBLE_NUM_1 = -77;
        public static final byte BC_FALSE = -80;
        public static final byte BC_FLOAT = -73;
        public static final byte BC_FLOAT_INT = -74;
        public static final byte BC_INT16 = -68;
        public static final byte BC_INT32 = 72;
        public static final byte BC_INT32_BYTE_MAX = 63;
        public static final byte BC_INT32_BYTE_MIN = 48;
        public static final byte BC_INT32_BYTE_ZERO = 56;
        public static final byte BC_INT32_NUM_0 = 0;
        public static final byte BC_INT32_NUM_1 = 1;
        public static final byte BC_INT32_NUM_16 = 16;
        public static final byte BC_INT32_NUM_MAX = 47;
        public static final byte BC_INT32_NUM_MIN = -16;
        public static final byte BC_INT32_SHORT_MAX = 71;
        public static final byte BC_INT32_SHORT_MIN = 64;
        public static final byte BC_INT32_SHORT_ZERO = 68;
        public static final byte BC_INT64 = -66;
        public static final byte BC_INT64_BYTE_MAX = -41;
        public static final byte BC_INT64_BYTE_MIN = -56;
        public static final byte BC_INT64_BYTE_ZERO = -48;
        public static final byte BC_INT64_INT = -65;
        public static final byte BC_INT64_NUM_MAX = -17;
        public static final byte BC_INT64_NUM_MIN = -40;
        public static final byte BC_INT64_SHORT_MAX = -57;
        public static final byte BC_INT64_SHORT_MIN = -64;
        public static final byte BC_INT64_SHORT_ZERO = -60;
        public static final byte BC_INT8 = -67;
        public static final byte BC_LOCAL_DATE = -87;
        public static final byte BC_LOCAL_DATETIME = -88;
        public static final byte BC_LOCAL_TIME = -89;
        public static final byte BC_NULL = -81;
        public static final byte BC_OBJECT = -90;
        public static final byte BC_OBJECT_END = -91;
        public static final byte BC_REFERENCE = -109;
        public static final byte BC_STR_ASCII = 121;
        public static final byte BC_STR_ASCII_FIX_0 = 73;
        public static final byte BC_STR_ASCII_FIX_1 = 74;
        public static final byte BC_STR_ASCII_FIX_32 = 105;
        public static final byte BC_STR_ASCII_FIX_36 = 109;
        public static final byte BC_STR_ASCII_FIX_4 = 77;
        public static final byte BC_STR_ASCII_FIX_5 = 78;
        public static final byte BC_STR_ASCII_FIX_MAX = 120;
        public static final byte BC_STR_ASCII_FIX_MIN = 73;
        public static final byte BC_STR_GB18030 = 126;
        public static final byte BC_STR_UTF16 = 123;
        public static final byte BC_STR_UTF16BE = 125;
        public static final byte BC_STR_UTF16LE = 124;
        public static final byte BC_STR_UTF8 = 122;
        public static final byte BC_SYMBOL = Byte.MAX_VALUE;
        public static final byte BC_TIMESTAMP = -82;
        public static final byte BC_TIMESTAMP_MILLIS = -85;
        public static final byte BC_TIMESTAMP_MINUTES = -83;
        public static final byte BC_TIMESTAMP_SECONDS = -84;
        public static final byte BC_TIMESTAMP_WITH_TIMEZONE = -86;
        public static final byte BC_TRUE = -79;
        public static final byte BC_TYPED_ANY = -110;
        public static final int INT32_BYTE_MAX = 2047;
        public static final int INT32_BYTE_MIN = -2048;
        public static final int INT32_SHORT_MAX = 262143;
        public static final int INT32_SHORT_MIN = -262144;
        public static final int INT64_BYTE_MAX = 2047;
        public static final int INT64_BYTE_MIN = -2048;
        public static final int INT64_NUM_HIGH_VALUE = 15;
        public static final int INT64_NUM_LOW_VALUE = -8;
        public static final int INT64_SHORT_MAX = 262143;
        public static final int INT64_SHORT_MIN = -262144;
        public static final int STR_ASCII_FIX_LEN = 47;
    }

    static <T> T copy(T t, JSONWriter.Feature... featureArr) {
        return (T) JSON.copy(t, featureArr);
    }

    static void dump(byte[] bArr) {
        System.out.println(toJSONString(bArr, true));
    }

    static byte[] fromJSONBytes(byte[] bArr) {
        JSONReader m7303of = JSONReader.m7303of(bArr);
        return toBytes(m7303of.getObjectReader(Object.class).readObject(m7303of, null, null, 0L));
    }

    static byte[] fromJSONString(String str) {
        return toBytes(JSON.parse(str));
    }

    static Object parse(byte[] bArr, JSONReader.Context context) {
        C1737g c1737g = new C1737g(context, bArr, 0, bArr.length);
        try {
            Object readAny = c1737g.readAny();
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(readAny);
            }
            c1737g.close();
            return readAny;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONArray parseArray(byte[] bArr) {
        C1737g c1737g = new C1737g(new JSONReader.Context(JSONFactory.defaultObjectReaderProvider), bArr, 0, bArr.length);
        try {
            JSONArray jSONArray = (JSONArray) c1737g.readArray();
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(jSONArray);
            }
            c1737g.close();
            return jSONArray;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(byte[] bArr) {
        C1737g c1737g = new C1737g(new JSONReader.Context(JSONFactory.defaultObjectReaderProvider), bArr, 0, bArr.length);
        try {
            JSONObject jSONObject = (JSONObject) c1737g.readObject();
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(jSONObject);
            }
            c1737g.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static SymbolTable symbolTable(String... strArr) {
        return new SymbolTable(strArr);
    }

    static byte[] toBytes(boolean z) {
        byte[] bArr = new byte[1];
        bArr[0] = z ? Constants.BC_TRUE : Constants.BC_FALSE;
        return bArr;
    }

    static String toJSONString(byte[] bArr) {
        return new C1731a(bArr, false).toString();
    }

    static String typeName(byte b) {
        if (b == 72) {
            return "INT32 " + Integer.toString(b);
        }
        if (b == Byte.MAX_VALUE) {
            return "SYMBOL " + Integer.toString(b);
        }
        switch (b) {
            case -111:
                return "BINARY " + Integer.toString(b);
            case -110:
                return "TYPED_ANY " + Integer.toString(b);
            case -109:
                return "REFERENCE " + Integer.toString(b);
            default:
                switch (b) {
                    case -91:
                        return "OBJECT_END " + Integer.toString(b);
                    case ImageUtil.ROTATE_90_CCW /* -90 */:
                        return "OBJECT " + Integer.toString(b);
                    case -89:
                        return "LOCAL_TIME " + Integer.toString(b);
                    case -88:
                        return "LOCAL_DATETIME " + Integer.toString(b);
                    case t4h.f84864j /* -87 */:
                        return "LOCAL_DATE " + Integer.toString(b);
                    case -86:
                        return "TIMESTAMP_WITH_TIMEZONE " + Integer.toString(b);
                    case -85:
                        return "TIMESTAMP_MILLIS " + Integer.toString(b);
                    case -84:
                        return "TIMESTAMP_SECONDS " + Integer.toString(b);
                    case -83:
                        return "TIMESTAMP_MINUTES " + Integer.toString(b);
                    case -82:
                        return "TIMESTAMP " + Integer.toString(b);
                    case -81:
                        return "NULL " + Integer.toString(b);
                    case -80:
                        return "FALSE " + Integer.toString(b);
                    case -79:
                        return "TRUE " + Integer.toString(b);
                    case -78:
                    case -77:
                    case -76:
                    case -75:
                        return "DOUBLE " + Integer.toString(b);
                    case -74:
                    case -73:
                        return "FLOAT " + Integer.toString(b);
                    case -72:
                    case -71:
                        return "DECIMAL " + Integer.toString(b);
                    case -70:
                    case -69:
                        return "BIGINT " + Integer.toString(b);
                    case -68:
                        return "INT16 " + Integer.toString(b);
                    case -67:
                        return "INT8 " + Integer.toString(b);
                    case -66:
                    case -65:
                        return "INT64 " + Integer.toString(b);
                    default:
                        switch (b) {
                            case 122:
                                return "STR_UTF8 " + Integer.toString(b);
                            case 123:
                                return "STR_UTF16 " + Integer.toString(b);
                            case 124:
                                return "STR_UTF16LE " + Integer.toString(b);
                            case 125:
                                return "STR_UTF16BE " + Integer.toString(b);
                            default:
                                if (b >= -108 && b <= -92) {
                                    return "ARRAY " + Integer.toString(b);
                                }
                                if (b >= 73 && b <= 121) {
                                    return "STR_ASCII " + Integer.toString(b);
                                }
                                if (b >= -16 && b <= 47) {
                                    return "INT32 " + Integer.toString(b);
                                }
                                if (b >= 48 && b <= 63) {
                                    return "INT32 " + Integer.toString(b);
                                }
                                if (b >= 64 && b <= 71) {
                                    return "INT32 " + Integer.toString(b);
                                }
                                if (b >= -40 && b <= -17) {
                                    return "INT64 " + Integer.toString(b);
                                }
                                if (b >= -56 && b <= -41) {
                                    return "INT64 " + Integer.toString(b);
                                }
                                if (b < -64 || b > -57) {
                                    return Integer.toString(b);
                                }
                                return "INT64 " + Integer.toString(b);
                        }
                }
        }
    }

    static int writeInt(byte[] bArr, int i, int i2) {
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
            bArr[i] = (byte) ((i2 >> 16) + 68);
            bArr[i + 1] = (byte) (i2 >> 8);
            bArr[i + 2] = (byte) i2;
            return 3;
        }
        bArr[i] = Constants.BC_INT32;
        bArr[i + 1] = (byte) (i2 >>> 24);
        bArr[i + 2] = (byte) (i2 >>> 16);
        bArr[i + 3] = (byte) (i2 >>> 8);
        bArr[i + 4] = (byte) i2;
        return 5;
    }

    static int writeTo(OutputStream outputStream, Object obj, JSONWriter.Feature... featureArr) {
        try {
            JSONWriter c1740j = new C1740j(new JSONWriter.Context(JSONFactory.defaultObjectWriterProvider), null);
            try {
                c1740j.config(featureArr);
                if (obj == null) {
                    c1740j.writeNull();
                } else {
                    c1740j.setRootObject(obj);
                    Class<?> cls = obj.getClass();
                    c1740j.getObjectWriter(cls, cls).writeJSONB(c1740j, obj, null, null, 0L);
                }
                int flushTo = c1740j.flushTo(outputStream);
                c1740j.close();
                return flushTo;
            } finally {
            }
        } catch (IOException e) {
            throw new JSONException("writeJSONString error", e);
        }
    }

    static byte[] toBytes(int i) {
        if (i >= -16 && i <= 47) {
            return new byte[]{(byte) i};
        }
        C1740j c1740j = new C1740j(new JSONWriter.Context(JSONFactory.defaultObjectWriterProvider), null);
        try {
            c1740j.writeInt32(i);
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static String toJSONString(byte[] bArr, boolean z) {
        return new C1731a(bArr, z).toString();
    }

    static void dump(byte[] bArr, SymbolTable symbolTable) {
        System.out.println(new C1731a(bArr, symbolTable, true).toString());
    }

    static String toJSONString(byte[] bArr, SymbolTable symbolTable) {
        return new C1731a(bArr, symbolTable, false).toString();
    }

    static Object parse(byte[] bArr, JSONReader.Feature... featureArr) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        boolean z = (context.features & JSONReader.Feature.FieldBased.mask) != 0;
        C1737g c1737g = new C1737g(context, bArr, 0, bArr.length);
        try {
            Object readJSONBObject = objectReaderProvider.getObjectReader(Object.class, z).readJSONBObject(c1737g, null, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(readJSONBObject);
            }
            c1737g.close();
            return readJSONBObject;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONArray parseArray(InputStream inputStream, JSONReader.Context context) {
        C1737g c1737g = new C1737g(context, inputStream);
        try {
            JSONArray jSONArray = (JSONArray) c1737g.readArray();
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(jSONArray);
            }
            c1737g.close();
            return jSONArray;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(byte[] bArr, JSONReader.Feature... featureArr) {
        C1737g c1737g = new C1737g(new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr), bArr, 0, bArr.length);
        try {
            JSONObject jSONObject = (JSONObject) c1737g.readObject();
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(jSONObject);
            }
            c1737g.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toBytes(byte b) {
        C1740j c1740j = new C1740j(new JSONWriter.Context(JSONFactory.defaultObjectWriterProvider), null);
        try {
            c1740j.writeInt8(b);
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toBytes(short s) {
        C1740j c1740j = new C1740j(new JSONWriter.Context(JSONFactory.defaultObjectWriterProvider), null);
        try {
            c1740j.writeInt16(s);
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(byte[] bArr, Type type) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ParameterizedTypeImpl parameterizedTypeImpl = new ParameterizedTypeImpl(new Type[]{type}, null, List.class);
        C1737g c1737g = new C1737g(new JSONReader.Context(JSONFactory.defaultObjectReaderProvider), bArr, 0, bArr.length);
        try {
            List<T> list = (List) c1737g.read(parameterizedTypeImpl);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(list);
            }
            c1737g.close();
            return list;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(InputStream inputStream, JSONReader.Context context) {
        C1737g c1737g = new C1737g(context, inputStream);
        try {
            JSONObject jSONObject = (JSONObject) c1737g.readObject();
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(jSONObject);
            }
            c1737g.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static Object parse(InputStream inputStream, JSONReader.Context context) {
        C1737g c1737g = new C1737g(context, inputStream);
        try {
            Object readAny = c1737g.readAny();
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(readAny);
            }
            c1737g.close();
            return readAny;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toBytes(long j) {
        if (j >= -8 && j <= 15) {
            return new byte[]{(byte) ((j - (-8)) - 40)};
        }
        C1740j c1740j = new C1740j(new JSONWriter.Context(JSONFactory.defaultObjectWriterProvider), null);
        try {
            c1740j.writeInt64(j);
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Class<T> cls) {
        T t;
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        boolean z = (context.features & JSONReader.Feature.FieldBased.mask) != 0;
        C1737g c1737g = new C1737g(context, bArr, 0, bArr.length);
        try {
            if (cls == Object.class) {
                t = (T) c1737g.readAny();
            } else {
                t = (T) objectReaderProvider.getObjectReader(cls, z).readJSONBObject(c1737g, cls, null, 0L);
            }
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(byte[] bArr, Type type, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ParameterizedTypeImpl parameterizedTypeImpl = new ParameterizedTypeImpl(new Type[]{type}, null, List.class);
        C1737g c1737g = new C1737g(new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr), bArr, 0, bArr.length);
        try {
            List<T> list = (List) c1737g.read(parameterizedTypeImpl);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(list);
            }
            c1737g.close();
            return list;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toBytes(String str) {
        if (str == null) {
            return new byte[]{Constants.BC_NULL};
        }
        C1740j c1740j = new C1740j(new JSONWriter.Context(JSONFactory.defaultObjectWriterProvider), null);
        try {
            c1740j.writeString(str);
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static Object parse(byte[] bArr, SymbolTable symbolTable, JSONReader.Feature... featureArr) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, symbolTable, featureArr);
        boolean z = (context.features & JSONReader.Feature.FieldBased.mask) != 0;
        C1737g c1737g = new C1737g(context, bArr, 0, bArr.length);
        try {
            Object readJSONBObject = objectReaderProvider.getObjectReader(Object.class, z).readJSONBObject(c1737g, null, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(readJSONBObject);
            }
            c1737g.close();
            return readJSONBObject;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toBytes(String str, Charset charset) {
        byte b;
        if (str == null) {
            return new byte[]{Constants.BC_NULL};
        }
        if (charset == StandardCharsets.UTF_16) {
            b = 123;
        } else if (charset == StandardCharsets.UTF_16BE) {
            b = 125;
        } else if (charset == StandardCharsets.UTF_16LE) {
            b = Constants.BC_STR_UTF16LE;
        } else if (charset == StandardCharsets.UTF_8) {
            b = Constants.BC_STR_UTF8;
        } else if (charset == StandardCharsets.US_ASCII || charset == StandardCharsets.ISO_8859_1) {
            b = Constants.BC_STR_ASCII;
        } else {
            if (charset == null || !TTFFont.CHARSET_GB18030.equals(charset.name())) {
                return toBytes(str);
            }
            b = Constants.BC_STR_GB18030;
        }
        byte[] bytes = str.getBytes(charset);
        int length = bytes.length + 2;
        if (bytes.length > 47) {
            if (bytes.length <= 2047) {
                length++;
            } else {
                length = bytes.length <= 262143 ? length + 2 : length + 4;
            }
        }
        byte[] bArr = new byte[length];
        bArr[0] = b;
        System.arraycopy(bytes, 0, bArr, writeInt(bArr, 1, bytes.length) + 1, bytes.length);
        return bArr;
    }

    static <T> List<T> parseArray(byte[] bArr, Type... typeArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        C1737g c1737g = new C1737g(new JSONReader.Context(JSONFactory.defaultObjectReaderProvider), bArr, 0, bArr.length);
        try {
            List<T> readList = c1737g.readList(typeArr);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(readList);
            }
            c1737g.close();
            return readList;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1737g = new C1737g(context, bArr, 0, bArr.length);
        T t = (T) objectReader.readJSONBObject(c1737g, type, null, 0L);
        if (c1737g.f12291e != null) {
            c1737g.handleResolveTasks(t);
        }
        return t;
    }

    static <T> List<T> parseArray(byte[] bArr, Type[] typeArr, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        C1737g c1737g = new C1737g(new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr), bArr, 0, bArr.length);
        try {
            List<T> readList = c1737g.readList(typeArr);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(readList);
            }
            c1737g.close();
            return readList;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type... typeArr) {
        return (T) parseObject(bArr, new MultiType(typeArr));
    }

    static <T> T parseObject(byte[] bArr, Type type, SymbolTable symbolTable) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, symbolTable);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1737g = new C1737g(context, bArr, 0, bArr.length);
        T t = (T) objectReader.readJSONBObject(c1737g, type, null, 0L);
        if (c1737g.f12291e != null) {
            c1737g.handleResolveTasks(t);
        }
        return t;
    }

    static byte[] toBytes(Object obj) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider);
        C1740j c1740j = new C1740j(context, null);
        try {
            if (obj == null) {
                c1740j.writeNull();
            } else {
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0).writeJSONB(c1740j, obj, null, null, 0L);
            }
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type, SymbolTable symbolTable, JSONReader.Feature... featureArr) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, symbolTable, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1737g = new C1737g(context, bArr, 0, bArr.length);
        try {
            T t = (T) objectReader.readJSONBObject(c1737g, type, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toBytes(Object obj, JSONWriter.Context context) {
        if (context == null) {
            context = JSONFactory.createWriteContext();
        }
        C1740j c1740j = new C1740j(context, null);
        try {
            if (obj == null) {
                c1740j.writeNull();
            } else {
                c1740j.rootObject = obj;
                c1740j.path = JSONWriter.Path.ROOT;
                boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
                Class<?> cls = obj.getClass();
                ObjectWriter objectWriter = context.provider.getObjectWriter(cls, cls, z);
                if ((context.f12331k & JSONWriter.Feature.BeanToArray.mask) != 0) {
                    objectWriter.writeArrayMappingJSONB(c1740j, obj, null, null, 0L);
                } else {
                    objectWriter.writeJSONB(c1740j, obj, null, null, 0L);
                }
            }
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Class<T> cls, Filter filter, JSONReader.Feature... featureArr) {
        T t;
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        context.config(filter, featureArr);
        C1737g c1737g = new C1737g(context, bArr, 0, bArr.length);
        for (JSONReader.Feature feature : featureArr) {
            try {
                context.features |= feature.mask;
            } catch (Throwable th) {
                try {
                    c1737g.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (cls == Object.class) {
            if (c1737g.getType() == -110) {
                t = (T) c1737g.checkAutoType(Object.class, 0L, 0L).readJSONBObject(c1737g, cls, null, context.features);
            } else {
                t = (T) c1737g.readAny();
            }
        } else {
            t = (T) objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(c1737g, cls, null, 0L);
        }
        if (c1737g.f12291e != null) {
            c1737g.handleResolveTasks(t);
        }
        c1737g.close();
        return t;
    }

    static byte[] toBytes(Object obj, SymbolTable symbolTable) {
        JSONWriter.Context context = new JSONWriter.Context(JSONFactory.defaultObjectWriterProvider);
        C1740j c1740j = new C1740j(context, symbolTable);
        try {
            if (obj == null) {
                c1740j.writeNull();
            } else {
                c1740j.setRootObject(obj);
                Class<?> cls = obj.getClass();
                context.getObjectWriter(cls, cls).writeJSONB(c1740j, obj, null, null, 0L);
            }
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type, SymbolTable symbolTable, Filter[] filterArr, JSONReader.Feature... featureArr) {
        T t;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, symbolTable);
        context.config(filterArr, featureArr);
        C1737g c1737g = new C1737g(context, bArr, 0, bArr.length);
        for (JSONReader.Feature feature : featureArr) {
            try {
                context.features |= feature.mask;
            } catch (Throwable th) {
                try {
                    c1737g.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (type == Object.class) {
            if (c1737g.getType() == -110) {
                t = (T) c1737g.checkAutoType(Object.class, 0L, 0L).readJSONBObject(c1737g, type, null, context.features);
            } else {
                t = (T) c1737g.readAny();
            }
        } else {
            t = (T) objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(c1737g, type, null, 0L);
        }
        if (c1737g.f12291e != null) {
            c1737g.handleResolveTasks(t);
        }
        c1737g.close();
        return t;
    }

    static byte[] toBytes(Object obj, SymbolTable symbolTable, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        C1740j c1740j = new C1740j(context, symbolTable);
        try {
            if (obj == null) {
                c1740j.writeNull();
            } else {
                c1740j.setRootObject(obj);
                Class<?> cls = obj.getClass();
                ObjectWriter objectWriter = objectWriterProvider.getObjectWriter(cls, cls, (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0);
                if ((context.f12331k & JSONWriter.Feature.BeanToArray.mask) != 0) {
                    objectWriter.writeArrayMappingJSONB(c1740j, obj, null, null, 0L);
                } else {
                    objectWriter.writeJSONB(c1740j, obj, null, null, 0L);
                }
            }
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toBytes(Object obj, SymbolTable symbolTable, Filter[] filterArr, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        context.configFilter(filterArr);
        C1740j c1740j = new C1740j(context, symbolTable);
        try {
            if (obj == null) {
                c1740j.writeNull();
            } else {
                c1740j.setRootObject(obj);
                Class<?> cls = obj.getClass();
                ObjectWriter objectWriter = objectWriterProvider.getObjectWriter(cls, cls, (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0);
                if ((context.f12331k & JSONWriter.Feature.BeanToArray.mask) != 0) {
                    objectWriter.writeArrayMappingJSONB(c1740j, obj, null, null, 0L);
                } else {
                    objectWriter.writeJSONB(c1740j, obj, null, null, 0L);
                }
            }
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, TypeReference typeReference, JSONReader.Feature... featureArr) {
        return (T) parseObject(bArr, typeReference.getType(), featureArr);
    }

    static <T> T parseObject(InputStream inputStream, Class cls, JSONReader.Feature... featureArr) throws IOException {
        return (T) parseObject(inputStream, cls, JSONFactory.createReadContext(featureArr));
    }

    static <T> T parseObject(InputStream inputStream, Type type, JSONReader.Feature... featureArr) throws IOException {
        return (T) parseObject(inputStream, type, JSONFactory.createReadContext(featureArr));
    }

    static <T> T parseObject(InputStream inputStream, Type type, JSONReader.Context context) throws IOException {
        T t;
        C1737g c1737g = new C1737g(context, inputStream);
        try {
            if (type == Object.class) {
                t = (T) c1737g.readAny();
            } else {
                t = (T) context.getObjectReader(type).readJSONBObject(c1737g, type, null, 0L);
            }
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toBytes(Object obj, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        C1740j c1740j = new C1740j(context, null);
        try {
            if (obj == null) {
                c1740j.writeNull();
            } else {
                c1740j.rootObject = obj;
                c1740j.path = JSONWriter.Path.ROOT;
                boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
                Class<?> cls = obj.getClass();
                ObjectWriter objectWriter = objectWriterProvider.getObjectWriter(cls, cls, z);
                if ((context.f12331k & JSONWriter.Feature.BeanToArray.mask) != 0) {
                    objectWriter.writeArrayMappingJSONB(c1740j, obj, null, null, 0L);
                } else {
                    objectWriter.writeJSONB(c1740j, obj, null, null, 0L);
                }
            }
            byte[] bytes = c1740j.getBytes();
            c1740j.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1740j.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(InputStream inputStream, Class cls, JSONReader.Context context) throws IOException {
        T t;
        C1737g c1737g = new C1737g(context, inputStream);
        try {
            if (cls == Object.class) {
                t = (T) c1737g.readAny();
            } else {
                t = (T) context.getObjectReader(cls).readJSONBObject(c1737g, cls, null, 0L);
            }
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(InputStream inputStream, int i, Type type, JSONReader.Context context) throws IOException {
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b c1722b = JSONFactory.f12217A[identityHashCode & (r1.length - 1)];
        AtomicReferenceFieldUpdater<JSONFactory.C1722b, byte[]> atomicReferenceFieldUpdater = JSONFactory.f12220D;
        byte[] andSet = atomicReferenceFieldUpdater.getAndSet(c1722b, null);
        if (andSet == null) {
            andSet = new byte[8192];
        }
        try {
            if (andSet.length < i) {
                andSet = new byte[i];
            }
            int read = inputStream.read(andSet, 0, i);
            if (read == i) {
                T t = (T) parseObject(andSet, 0, i, type, context);
                atomicReferenceFieldUpdater.lazySet(c1722b, andSet);
                return t;
            }
            throw new IllegalArgumentException("deserialize failed. expected read length: " + i + " but actual read: " + read);
        } catch (Throwable th) {
            JSONFactory.f12220D.lazySet(c1722b, andSet);
            throw th;
        }
    }

    static <T> T parseObject(InputStream inputStream, int i, Type type, JSONReader.Feature... featureArr) throws IOException {
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b c1722b = JSONFactory.f12217A[identityHashCode & (r1.length - 1)];
        AtomicReferenceFieldUpdater<JSONFactory.C1722b, byte[]> atomicReferenceFieldUpdater = JSONFactory.f12220D;
        byte[] andSet = atomicReferenceFieldUpdater.getAndSet(c1722b, null);
        if (andSet == null) {
            andSet = new byte[8192];
        }
        try {
            if (andSet.length < i) {
                andSet = new byte[i];
            }
            int read = inputStream.read(andSet, 0, i);
            if (read == i) {
                T t = (T) parseObject(andSet, 0, i, type, featureArr);
                atomicReferenceFieldUpdater.lazySet(c1722b, andSet);
                return t;
            }
            throw new IllegalArgumentException("deserialize failed. expected read length: " + i + " but actual read: " + read);
        } catch (Throwable th) {
            JSONFactory.f12220D.lazySet(c1722b, andSet);
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Class<T> cls, JSONReader.Feature... featureArr) {
        T t;
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        C1737g c1737g = new C1737g(context, bArr, 0, bArr.length);
        try {
            if (cls == Object.class) {
                if (c1737g.getType() == -110) {
                    t = (T) c1737g.checkAutoType(Object.class, 0L, 0L).readJSONBObject(c1737g, cls, null, context.features);
                } else {
                    t = (T) c1737g.readAny();
                }
            } else {
                ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
                if ((context.features & JSONReader.Feature.SupportArrayToBean.mask) != 0 && c1737g.isArray() && (objectReader instanceof ObjectReaderBean)) {
                    t = (T) objectReader.readArrayMappingJSONBObject(c1737g, cls, null, 0L);
                } else {
                    t = (T) objectReader.readJSONBObject(c1737g, cls, null, 0L);
                }
            }
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Class<T> cls, JSONReader.Context context) {
        T t;
        JSONReader c1737g = new C1737g(context, bArr, 0, bArr.length);
        try {
            if (cls == Object.class) {
                if (c1737g.getType() == -110) {
                    t = (T) c1737g.checkAutoType(Object.class, 0L, 0L).readJSONBObject(c1737g, cls, null, context.features);
                } else {
                    t = (T) c1737g.readAny();
                }
            } else {
                ObjectReader objectReader = context.provider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
                if ((context.features & JSONReader.Feature.SupportArrayToBean.mask) != 0 && c1737g.isArray() && (objectReader instanceof ObjectReaderBean)) {
                    t = (T) objectReader.readArrayMappingJSONBObject(c1737g, cls, null, 0L);
                } else {
                    t = (T) objectReader.readJSONBObject(c1737g, cls, null, 0L);
                }
            }
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type, JSONReader.Feature... featureArr) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        C1737g c1737g = new C1737g(context, bArr, 0, bArr.length);
        try {
            T t = (T) objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(c1737g, type, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Class<T> cls) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        C1737g c1737g = new C1737g(context, bArr, i, i2);
        try {
            T t = (T) objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(c1737g, cls, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Type type) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        C1737g c1737g = new C1737g(context, bArr, i, i2);
        try {
            T t = (T) objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(c1737g, type, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Class<T> cls, JSONReader.Feature... featureArr) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        for (JSONReader.Feature feature : featureArr) {
            context.features |= feature.mask;
        }
        C1737g c1737g = new C1737g(context, bArr, i, i2);
        try {
            T t = (T) objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(c1737g, cls, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Type type, JSONReader.Context context) {
        C1737g c1737g = new C1737g(context, bArr, i, i2);
        try {
            T t = (T) context.provider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readJSONBObject(c1737g, type, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Type type, JSONReader.Feature... featureArr) {
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        ObjectReader objectReader = context.getObjectReader(type);
        JSONReader c1737g = new C1737g(context, bArr, i, i2);
        try {
            T t = (T) objectReader.readJSONBObject(c1737g, type, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Class<T> cls, SymbolTable symbolTable) {
        JSONReader c1737g = new C1737g(JSONFactory.createReadContext(symbolTable), bArr, i, i2);
        try {
            T t = (T) c1737g.getObjectReader(cls).readJSONBObject(c1737g, cls, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Type type, SymbolTable symbolTable) {
        JSONReader c1737g = new C1737g(JSONFactory.createReadContext(symbolTable), bArr, i, i2);
        try {
            T t = (T) c1737g.getObjectReader(type).readJSONBObject(c1737g, type, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Class<T> cls, SymbolTable symbolTable, JSONReader.Feature... featureArr) {
        JSONReader.Context createReadContext = JSONFactory.createReadContext(symbolTable, featureArr);
        ObjectReader objectReader = createReadContext.getObjectReader(cls);
        JSONReader c1737g = new C1737g(createReadContext, bArr, i, i2);
        try {
            T t = (T) objectReader.readJSONBObject(c1737g, cls, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Type type, SymbolTable symbolTable, JSONReader.Feature... featureArr) {
        JSONReader.Context createReadContext = JSONFactory.createReadContext(symbolTable, featureArr);
        ObjectReader objectReader = createReadContext.getObjectReader(type);
        JSONReader c1737g = new C1737g(createReadContext, bArr, i, i2);
        try {
            T t = (T) objectReader.readJSONBObject(c1737g, type, null, 0L);
            if (c1737g.f12291e != null) {
                c1737g.handleResolveTasks(t);
            }
            c1737g.close();
            return t;
        } catch (Throwable th) {
            try {
                c1737g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
