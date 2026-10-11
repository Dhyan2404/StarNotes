package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.filter.Filter;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplList;
import com.alibaba.fastjson2.reader.ObjectReaderImplMap;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.NameCacheEntry;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.ZoneId;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public final class JSONFactory {

    /* renamed from: A */
    public static final C1722b[] f12217A;

    /* renamed from: B */
    public static final int f12218B = 1048576;

    /* renamed from: C */
    public static final AtomicReferenceFieldUpdater<C1722b, char[]> f12219C;

    /* renamed from: D */
    public static final AtomicReferenceFieldUpdater<C1722b, byte[]> f12220D;

    /* renamed from: E */
    public static final ObjectReader<JSONArray> f12221E;

    /* renamed from: F */
    public static final ObjectReader<JSONObject> f12222F;

    /* renamed from: G */
    public static final char[] f12223G;

    /* renamed from: H */
    public static final byte[] f12224H;

    /* renamed from: a */
    public static long f12225a;

    /* renamed from: b */
    public static String f12226b;

    /* renamed from: c */
    public static ZoneId f12227c;

    /* renamed from: d */
    public static long f12228d;
    public static final ObjectReaderProvider defaultObjectReaderProvider;
    public static final ObjectWriterProvider defaultObjectWriterProvider;

    /* renamed from: e */
    public static String f12229e;

    /* renamed from: f */
    public static ZoneId f12230f;

    /* renamed from: g */
    public static Supplier<Map> f12231g;

    /* renamed from: h */
    public static Supplier<List> f12232h;

    /* renamed from: k */
    public static Class f12235k;

    /* renamed from: l */
    public static Supplier f12236l;

    /* renamed from: m */
    public static Function f12237m;

    /* renamed from: n */
    public static Function f12238n;

    /* renamed from: o */
    public static Class f12239o;

    /* renamed from: p */
    public static Supplier f12240p;

    /* renamed from: q */
    public static volatile boolean f12241q;

    /* renamed from: i */
    public static final NameCacheEntry[] f12233i = new NameCacheEntry[8192];

    /* renamed from: j */
    public static final C1725e[] f12234j = new C1725e[8192];

    /* renamed from: r */
    public static final BigDecimal f12242r = BigDecimal.valueOf(-9007199254740991L);

    /* renamed from: s */
    public static final BigDecimal f12243s = BigDecimal.valueOf(9007199254740991L);

    /* renamed from: t */
    public static final BigInteger f12244t = BigInteger.valueOf(-9007199254740991L);

    /* renamed from: u */
    public static final BigInteger f12245u = BigInteger.valueOf(9007199254740991L);

    /* renamed from: v */
    public static final char[] f12246v = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', PhoneNumberUtil.f36455s, '/'};

    /* renamed from: w */
    public static final int[] f12247w = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 13, 14, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 13, 14, 15};

    /* renamed from: x */
    public static final float[] f12248x = {1.0f, 10.0f, 100.0f, 1000.0f, 10000.0f, 100000.0f, 1000000.0f, 1.0E7f, 1.0E8f, 1.0E9f, 1.0E10f};

    /* renamed from: y */
    public static final double[] f12249y = {1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d, 1.0E9d, 1.0E10d, 1.0E11d, 1.0E12d, 1.0E13d, 1.0E14d, 1.0E15d, 1.0E16d, 1.0E17d, 1.0E18d, 1.0E19d, 1.0E20d, 1.0E21d, 1.0E22d};

    /* renamed from: z */
    public static final Double f12250z = Double.valueOf(0.0d);

    /* renamed from: com.alibaba.fastjson2.JSONFactory$b */
    /* loaded from: classes3.dex */
    public static final class C1722b {

        /* renamed from: a */
        public volatile char[] f12251a;

        /* renamed from: b */
        public volatile byte[] f12252b;
    }

    /* renamed from: com.alibaba.fastjson2.JSONFactory$c */
    /* loaded from: classes3.dex */
    public static final class C1723c implements Function {
        public C1723c() {
        }

        @Override // java.util.function.Function
        public Object apply(Object obj) {
            return ((com.alibaba.fastjson.JSONObject) obj).getInnerMap();
        }
    }

    /* renamed from: com.alibaba.fastjson2.JSONFactory$d */
    /* loaded from: classes3.dex */
    public static final class C1724d implements Function {
        public C1724d() {
        }

        @Override // java.util.function.Function
        public Object apply(Object obj) {
            return new com.alibaba.fastjson.JSONObject((Map<String, Object>) obj);
        }
    }

    /* renamed from: com.alibaba.fastjson2.JSONFactory$e */
    /* loaded from: classes3.dex */
    public static final class C1725e {

        /* renamed from: a */
        public final String f12253a;

        /* renamed from: b */
        public final long f12254b;

        /* renamed from: c */
        public final long f12255c;

        public C1725e(String str, long j, long j2) {
            this.f12253a = str;
            this.f12254b = j;
            this.f12255c = j2;
        }
    }

    static {
        C1722b[] c1722bArr = new C1722b[16];
        for (int i = 0; i < 16; i++) {
            c1722bArr[i] = new C1722b();
        }
        f12217A = c1722bArr;
        f12219C = AtomicReferenceFieldUpdater.newUpdater(C1722b.class, char[].class, "a");
        f12220D = AtomicReferenceFieldUpdater.newUpdater(C1722b.class, byte[].class, "b");
        defaultObjectWriterProvider = new ObjectWriterProvider();
        defaultObjectReaderProvider = new ObjectReaderProvider();
        f12221E = ObjectReaderImplList.JSON_ARRAY_READER;
        f12222F = ObjectReaderImplMap.INSTANCE_OBJECT;
        f12223G = new char[256];
        f12224H = new byte[55];
        for (int i2 = 0; i2 < 256; i2++) {
            int i3 = (i2 >> 4) & 15;
            int i4 = i2 & 15;
            f12223G[i2] = (char) (((i3 < 10 ? i3 + 48 : (i3 + 97) - 10) << 8) + (i4 < 10 ? i4 + 48 : (i4 + 97) - 10));
        }
        for (char c = '0'; c <= '9'; c = (char) (c + 1)) {
            int i5 = c - '0';
            f12224H[i5] = (byte) i5;
        }
        for (char c2 = 'a'; c2 <= 'f'; c2 = (char) (c2 + 1)) {
            f12224H[c2 - '0'] = (byte) ((c2 - 'a') + 10);
        }
        for (char c3 = 'A'; c3 <= 'F'; c3 = (char) (c3 + 1)) {
            f12224H[c3 - '0'] = (byte) ((c3 - 'A') + 10);
        }
    }

    public static Map createJSONObject1(Map map) {
        return new com.alibaba.fastjson.JSONObject((Map<String, Object>) map);
    }

    public static JSONReader.Context createReadContext() {
        return new JSONReader.Context(defaultObjectReaderProvider);
    }

    public static JSONWriter.Context createWriteContext() {
        return new JSONWriter.Context(defaultObjectWriterProvider);
    }

    public static Function getBuilderJSONObject1x() {
        if (f12238n == null && !f12241q && getClassJSONObject1x() != null) {
            f12238n = new C1724d();
        }
        return f12238n;
    }

    public static Class getClassJSONArray1x() {
        if (f12239o == null && !f12241q) {
            try {
                f12239o = com.alibaba.fastjson.JSONArray.class;
            } catch (Throwable unused) {
                f12241q = true;
            }
        }
        return f12239o;
    }

    public static Class getClassJSONObject1x() {
        if (f12235k == null && !f12241q) {
            try {
                f12235k = com.alibaba.fastjson.JSONObject.class;
            } catch (Throwable unused) {
                f12241q = true;
            }
        }
        return f12235k;
    }

    public static Supplier<List> getDefaultArraySupplier() {
        return f12232h;
    }

    public static ObjectReaderProvider getDefaultObjectReaderProvider() {
        return defaultObjectReaderProvider;
    }

    public static Supplier<Map> getDefaultObjectSupplier() {
        return f12231g;
    }

    public static ObjectWriterProvider getDefaultObjectWriterProvider() {
        return defaultObjectWriterProvider;
    }

    public static Function getInnerMap() {
        if (f12237m == null && !f12241q && getClassJSONObject1x() != null) {
            f12237m = new C1723c();
        }
        return f12237m;
    }

    public static void setDefaultArraySupplier(Supplier<List> supplier) {
        f12232h = supplier;
    }

    public static void setDefaultObjectSupplier(Supplier<Map> supplier) {
        f12231g = supplier;
    }

    public static JSONReader.Context createReadContext(long j) {
        return new JSONReader.Context(defaultObjectReaderProvider, j);
    }

    public static JSONWriter.Context createWriteContext(ObjectWriterProvider objectWriterProvider, JSONWriter.Feature... featureArr) {
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider);
        context.config(featureArr);
        return context;
    }

    public static JSONReader.Context createReadContext(JSONReader.Feature... featureArr) {
        return new JSONReader.Context(defaultObjectReaderProvider, featureArr);
    }

    public static JSONReader.Context createReadContext(Filter filter, JSONReader.Feature... featureArr) {
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider, featureArr);
        context.config(filter);
        return context;
    }

    public static JSONWriter.Context createWriteContext(JSONWriter.Feature... featureArr) {
        return new JSONWriter.Context(defaultObjectWriterProvider, featureArr);
    }

    public static JSONReader.Context createReadContext(Filter[] filterArr, JSONReader.Feature... featureArr) {
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider, featureArr);
        context.config(filterArr, new JSONReader.Feature[0]);
        return context;
    }

    public static JSONReader.Context createReadContext(ObjectReaderProvider objectReaderProvider, JSONReader.Feature... featureArr) {
        if (objectReaderProvider == null) {
            objectReaderProvider = defaultObjectReaderProvider;
        }
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        context.config(featureArr);
        return context;
    }

    public static JSONReader.Context createReadContext(SymbolTable symbolTable) {
        return new JSONReader.Context(defaultObjectReaderProvider, symbolTable);
    }

    public static JSONReader.Context createReadContext(SymbolTable symbolTable, JSONReader.Feature... featureArr) {
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider, symbolTable);
        context.config(featureArr);
        return context;
    }

    public static JSONReader.Context createReadContext(Supplier<Map> supplier, JSONReader.Feature... featureArr) {
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider);
        context.setObjectSupplier(supplier);
        context.config(featureArr);
        return context;
    }

    public static JSONReader.Context createReadContext(Supplier<Map> supplier, Supplier<List> supplier2, JSONReader.Feature... featureArr) {
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider);
        context.setObjectSupplier(supplier);
        context.setArraySupplier(supplier2);
        context.config(featureArr);
        return context;
    }
}
