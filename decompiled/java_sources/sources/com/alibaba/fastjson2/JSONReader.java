package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.filter.ContextAutoTypeBeforeHandler;
import com.alibaba.fastjson2.filter.ExtraProcessor;
import com.alibaba.fastjson2.filter.Filter;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderBean;
import com.alibaba.fastjson2.reader.ObjectReaderImplObject;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.util.ReferenceKey;
import com.alibaba.fastjson2.util.TypeUtils;
import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.core.base.ParserBase;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public abstract class JSONReader implements Closeable {

    /* renamed from: f */
    public static final int f12274f = 1023;

    /* renamed from: g */
    public static final byte f12275g = 1;

    /* renamed from: h */
    public static final byte f12276h = 2;

    /* renamed from: i */
    public static final byte f12277i = 3;

    /* renamed from: j */
    public static final byte f12278j = 4;

    /* renamed from: k */
    public static final byte f12279k = 5;

    /* renamed from: l */
    public static final byte f12280l = 6;

    /* renamed from: m */
    public static final byte f12281m = 7;

    /* renamed from: n */
    public static final byte f12282n = 8;

    /* renamed from: o */
    public static final byte f12283o = 9;

    /* renamed from: p */
    public static final byte f12284p = 10;

    /* renamed from: q */
    public static final byte f12285q = 11;

    /* renamed from: r */
    public static final byte f12286r = 12;

    /* renamed from: s */
    public static final byte f12287s = 13;

    /* renamed from: t */
    public static final char f12288t = 26;

    /* renamed from: u */
    public static final long f12289u = 4294981376L;
    protected boolean boolValue;

    /* renamed from: ch */
    protected char f12290ch;
    protected boolean comma;
    protected Object complex;
    public final Context context;
    protected char[] doubleChars;

    /* renamed from: e */
    public List<C1729b> f12291e;
    protected short exponent;
    public final boolean jsonb;
    protected int level;
    protected int mag0;
    protected int mag1;
    protected int mag2;
    protected int mag3;
    protected boolean nameEscape;
    protected boolean negative;
    protected int offset;
    protected short scale;
    protected String stringValue;
    protected boolean typeRedirect;
    protected boolean valueEscape;
    protected byte valueType;
    protected boolean wasNull;

    /* loaded from: classes3.dex */
    public interface AutoTypeBeforeHandler extends Filter {
        default Class<?> apply(long j, Class<?> cls, long j2) {
            return null;
        }

        Class<?> apply(String str, Class<?> cls, long j);
    }

    /* loaded from: classes3.dex */
    public static final class Context {

        /* renamed from: a */
        public String f12292a;

        /* renamed from: b */
        public boolean f12293b;

        /* renamed from: c */
        public boolean f12294c;

        /* renamed from: d */
        public boolean f12295d;

        /* renamed from: e */
        public boolean f12296e;
        public ExtraProcessor extraProcessor;

        /* renamed from: f */
        public boolean f12297f;
        public long features;

        /* renamed from: g */
        public boolean f12298g;

        /* renamed from: h */
        public boolean f12299h;

        /* renamed from: i */
        public boolean f12300i;

        /* renamed from: j */
        public boolean f12301j;

        /* renamed from: k */
        public boolean f12302k;

        /* renamed from: l */
        public int f12303l;

        /* renamed from: m */
        public int f12304m;

        /* renamed from: n */
        public DateTimeFormatter f12305n;

        /* renamed from: o */
        public ZoneId f12306o;

        /* renamed from: p */
        public Locale f12307p;
        public final ObjectReaderProvider provider;

        /* renamed from: q */
        public TimeZone f12308q;

        /* renamed from: r */
        public Supplier<Map> f12309r;

        /* renamed from: s */
        public Supplier<List> f12310s;
        protected final SymbolTable symbolTable;

        /* renamed from: t */
        public AutoTypeBeforeHandler f12311t;

        public Context(ObjectReaderProvider objectReaderProvider) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = JSONFactory.f12225a;
            this.provider = objectReaderProvider;
            this.f12309r = JSONFactory.f12231g;
            this.f12310s = JSONFactory.f12232h;
            this.symbolTable = null;
            this.f12306o = JSONFactory.f12227c;
            String str = JSONFactory.f12226b;
            if (str != null) {
                setDateFormat(str);
            }
        }

        public void config(Feature... featureArr) {
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
        }

        public Supplier<List> getArraySupplier() {
            return this.f12310s;
        }

        public int getBufferSize() {
            return this.f12304m;
        }

        public AutoTypeBeforeHandler getContextAutoTypeBeforeHandler() {
            return this.f12311t;
        }

        public String getDateFormat() {
            return this.f12292a;
        }

        public DateTimeFormatter getDateFormatter() {
            String str;
            if (this.f12305n == null && (str = this.f12292a) != null && !this.f12297f && !this.f12299h && !this.f12298g) {
                Locale locale = this.f12307p;
                this.f12305n = locale == null ? DateTimeFormatter.ofPattern(str) : DateTimeFormatter.ofPattern(str, locale);
            }
            return this.f12305n;
        }

        public ExtraProcessor getExtraProcessor() {
            return this.extraProcessor;
        }

        public long getFeatures() {
            return this.features;
        }

        public Locale getLocale() {
            return this.f12307p;
        }

        public int getMaxLevel() {
            return this.f12303l;
        }

        public ObjectReader getObjectReader(Type type) {
            return this.provider.getObjectReader(type, (this.features & Feature.FieldBased.mask) != 0);
        }

        public ObjectReader getObjectReaderAutoType(long j) {
            return this.provider.getObjectReader(j);
        }

        public Supplier<Map> getObjectSupplier() {
            return this.f12309r;
        }

        public ObjectReaderProvider getProvider() {
            return this.provider;
        }

        public TimeZone getTimeZone() {
            return this.f12308q;
        }

        public ZoneId getZoneId() {
            if (this.f12306o == null) {
                this.f12306o = DateUtils.DEFAULT_ZONE_ID;
            }
            return this.f12306o;
        }

        public boolean isEnabled(Feature feature) {
            return (feature.mask & this.features) != 0;
        }

        public boolean isFormatHasHour() {
            return this.f12301j;
        }

        public boolean isFormatISO8601() {
            return this.f12299h;
        }

        public boolean isFormatMillis() {
            return this.f12297f;
        }

        public boolean isFormatUnixTime() {
            return this.f12298g;
        }

        public boolean isFormatyyyyMMdd8() {
            return this.f12296e;
        }

        public boolean isFormatyyyyMMddhhmmss19() {
            return this.f12293b;
        }

        public boolean isFormatyyyyMMddhhmmssT19() {
            return this.f12294c;
        }

        public void setArraySupplier(Supplier<List> supplier) {
            this.f12310s = supplier;
        }

        public void setBufferSize(int i) {
            this.f12304m = i;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:11:0x007d. Please report as an issue. */
        public void setDateFormat(String str) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            String str2;
            char c;
            boolean z6;
            if (str != null && str.isEmpty()) {
                str = null;
            }
            boolean z7 = false;
            if (str != null) {
                z3 = true;
                switch (str.hashCode()) {
                    case -1172057030:
                        if (str.equals("yyyy-MM-dd HH:mm")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1074095546:
                        if (str.equals("millis")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case -347789785:
                        if (str.equals("yyyyMMddHHmmssSSSZ")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case -288020395:
                        if (str.equals("unixtime")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case -159776256:
                        if (str.equals("yyyy-MM-dd")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1333195168:
                        if (str.equals(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS)) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1798231098:
                        if (str.equals("yyyy-MM-dd'T'HH:mm:ss")) {
                            c = 6;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1834843604:
                        if (str.equals("yyyy-MM-ddTHH:mm:ss")) {
                            c = 7;
                            break;
                        }
                        c = 65535;
                        break;
                    case 2095190916:
                        if (str.equals("iso8601")) {
                            c = '\b';
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        this.f12295d = true;
                        break;
                    case 1:
                        z2 = false;
                        z4 = false;
                        z5 = false;
                        z = true;
                        z3 = z5;
                        break;
                    case 2:
                        z6 = true;
                        this.f12293b = true;
                        z5 = z6;
                        z2 = true;
                        z4 = true;
                        z = false;
                        z3 = z;
                        break;
                    case 3:
                        z = false;
                        z2 = false;
                        z4 = false;
                        z5 = false;
                        z7 = true;
                        z3 = z5;
                        break;
                    case 4:
                        this.f12296e = true;
                        z = false;
                        z4 = false;
                        z5 = false;
                        z2 = true;
                        z3 = z5;
                        break;
                    case 5:
                    case 7:
                        z6 = false;
                        this.f12293b = true;
                        z5 = z6;
                        z2 = true;
                        z4 = true;
                        z = false;
                        z3 = z;
                        break;
                    case 6:
                        this.f12294c = true;
                        z = false;
                        z5 = false;
                        z2 = true;
                        z4 = true;
                        z3 = z5;
                        break;
                    case '\b':
                        z = false;
                        z2 = false;
                        z4 = false;
                        z5 = z4;
                        break;
                    default:
                        boolean z8 = str.indexOf(100) != -1;
                        if (str.indexOf(72) == -1 && str.indexOf(104) == -1 && str.indexOf(75) == -1 && str.indexOf(107) == -1) {
                            z3 = false;
                        }
                        z5 = false;
                        z2 = z8;
                        z4 = z3;
                        z = false;
                        z3 = z;
                        break;
                }
                str2 = this.f12292a;
                if (str2 != null && !str2.equals(str)) {
                    this.f12305n = null;
                }
                this.f12292a = str;
                this.f12298g = z7;
                this.f12297f = z;
                this.f12299h = z3;
                this.f12300i = z2;
                this.f12301j = z4;
                this.f12302k = z5;
            }
            z = false;
            z2 = false;
            z3 = false;
            z4 = false;
            z5 = z4;
            str2 = this.f12292a;
            if (str2 != null) {
                this.f12305n = null;
            }
            this.f12292a = str;
            this.f12298g = z7;
            this.f12297f = z;
            this.f12299h = z3;
            this.f12300i = z2;
            this.f12301j = z4;
            this.f12302k = z5;
        }

        public void setDateFormatter(DateTimeFormatter dateTimeFormatter) {
            this.f12305n = dateTimeFormatter;
        }

        public void setExtraProcessor(ExtraProcessor extraProcessor) {
            this.extraProcessor = extraProcessor;
        }

        public void setLocale(Locale locale) {
            this.f12307p = locale;
        }

        public void setMaxLevel(int i) {
            this.f12303l = i;
        }

        public void setObjectSupplier(Supplier<Map> supplier) {
            this.f12309r = supplier;
        }

        public void setTimeZone(TimeZone timeZone) {
            this.f12308q = timeZone;
        }

        public void setZoneId(ZoneId zoneId) {
            this.f12306o = zoneId;
        }

        public ObjectReader getObjectReaderAutoType(String str, Class cls) {
            Class<?> apply;
            AutoTypeBeforeHandler autoTypeBeforeHandler = this.f12311t;
            if (autoTypeBeforeHandler != null && (apply = autoTypeBeforeHandler.apply(str, (Class<?>) cls, this.features)) != null) {
                return this.provider.getObjectReader(apply, (this.features & Feature.FieldBased.mask) != 0);
            }
            return this.provider.getObjectReader(str, cls, this.features);
        }

        public void config(Filter filter, Feature... featureArr) {
            if (filter instanceof AutoTypeBeforeHandler) {
                this.f12311t = (AutoTypeBeforeHandler) filter;
            }
            if (filter instanceof ExtraProcessor) {
                this.extraProcessor = (ExtraProcessor) filter;
            }
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
        }

        public ObjectReader getObjectReaderAutoType(String str, Class cls, long j) {
            Class<?> apply;
            AutoTypeBeforeHandler autoTypeBeforeHandler = this.f12311t;
            if (autoTypeBeforeHandler != null && (apply = autoTypeBeforeHandler.apply(str, (Class<?>) cls, j)) != null) {
                return this.provider.getObjectReader(apply, (Feature.FieldBased.mask & j) != 0);
            }
            return this.provider.getObjectReader(str, cls, j | this.features);
        }

        public void config(Filter filter) {
            if (filter instanceof AutoTypeBeforeHandler) {
                this.f12311t = (AutoTypeBeforeHandler) filter;
            }
            if (filter instanceof ExtraProcessor) {
                this.extraProcessor = (ExtraProcessor) filter;
            }
        }

        public Context(ObjectReaderProvider objectReaderProvider, long j) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = j;
            this.provider = objectReaderProvider;
            this.f12309r = JSONFactory.f12231g;
            this.f12310s = JSONFactory.f12232h;
            this.symbolTable = null;
            this.f12306o = JSONFactory.f12227c;
            String str = JSONFactory.f12226b;
            if (str != null) {
                setDateFormat(str);
            }
        }

        public void config(Filter[] filterArr, Feature... featureArr) {
            for (Filter filter : filterArr) {
                if (filter instanceof AutoTypeBeforeHandler) {
                    this.f12311t = (AutoTypeBeforeHandler) filter;
                }
                if (filter instanceof ExtraProcessor) {
                    this.extraProcessor = (ExtraProcessor) filter;
                }
            }
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
        }

        public void config(Feature feature, boolean z) {
            if (z) {
                this.features = feature.mask | this.features;
            } else {
                this.features = (~feature.mask) & this.features;
            }
        }

        public Context(Feature... featureArr) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = JSONFactory.f12225a;
            this.provider = JSONFactory.defaultObjectReaderProvider;
            this.f12309r = JSONFactory.f12231g;
            this.f12310s = JSONFactory.f12232h;
            this.symbolTable = null;
            this.f12306o = JSONFactory.f12227c;
            String str = JSONFactory.f12226b;
            if (str != null) {
                setDateFormat(str);
            }
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
        }

        public Context(String str, Feature... featureArr) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = JSONFactory.f12225a;
            this.provider = JSONFactory.defaultObjectReaderProvider;
            this.f12309r = JSONFactory.f12231g;
            this.f12310s = JSONFactory.f12232h;
            this.symbolTable = null;
            this.f12306o = JSONFactory.f12227c;
            String str2 = JSONFactory.f12226b;
            if (str2 != null) {
                setDateFormat(str2);
            }
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
            setDateFormat(str);
        }

        public Context(ObjectReaderProvider objectReaderProvider, Feature... featureArr) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = JSONFactory.f12225a;
            this.provider = objectReaderProvider;
            this.f12309r = JSONFactory.f12231g;
            this.f12310s = JSONFactory.f12232h;
            this.symbolTable = null;
            this.f12306o = JSONFactory.f12227c;
            String str = JSONFactory.f12226b;
            if (str != null) {
                setDateFormat(str);
            }
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
        }

        public Context(ObjectReaderProvider objectReaderProvider, SymbolTable symbolTable) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = JSONFactory.f12225a;
            this.provider = objectReaderProvider;
            this.symbolTable = symbolTable;
            this.f12306o = JSONFactory.f12227c;
            String str = JSONFactory.f12226b;
            if (str != null) {
                setDateFormat(str);
            }
        }

        public Context(ObjectReaderProvider objectReaderProvider, SymbolTable symbolTable, Feature... featureArr) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = JSONFactory.f12225a;
            this.provider = objectReaderProvider;
            this.symbolTable = symbolTable;
            this.f12306o = JSONFactory.f12227c;
            String str = JSONFactory.f12226b;
            if (str != null) {
                setDateFormat(str);
            }
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
        }

        public Context(ObjectReaderProvider objectReaderProvider, SymbolTable symbolTable, Filter filter, Feature... featureArr) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = JSONFactory.f12225a;
            this.provider = objectReaderProvider;
            this.symbolTable = symbolTable;
            this.f12306o = JSONFactory.f12227c;
            String str = JSONFactory.f12226b;
            if (str != null) {
                setDateFormat(str);
            }
            config(filter);
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
        }

        public Context(ObjectReaderProvider objectReaderProvider, SymbolTable symbolTable, Filter[] filterArr, Feature... featureArr) {
            this.f12303l = 2048;
            this.f12304m = 524288;
            this.features = JSONFactory.f12225a;
            this.provider = objectReaderProvider;
            this.symbolTable = symbolTable;
            this.f12306o = JSONFactory.f12227c;
            String str = JSONFactory.f12226b;
            if (str != null) {
                setDateFormat(str);
            }
            config(filterArr, new Feature[0]);
            for (Feature feature : featureArr) {
                this.features |= feature.mask;
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum Feature {
        FieldBased(1),
        IgnoreNoneSerializable(2),
        ErrorOnNoneSerializable(4),
        SupportArrayToBean(8),
        InitStringFieldAsEmpty(16),
        SupportAutoType(32),
        SupportSmartMatch(64),
        UseNativeObject(128),
        SupportClassForName(256),
        IgnoreSetNullValue(512),
        UseDefaultConstructorAsPossible(1024),
        UseBigDecimalForFloats(2048),
        UseBigDecimalForDoubles(4096),
        ErrorOnEnumNotMatch(8192),
        TrimString(16384),
        ErrorOnNotSupportAutoType(32768),
        DuplicateKeyValueAsArray(65536),
        AllowUnQuotedFieldNames(131072),
        NonStringKeyAsString(262144),
        Base64StringAsByteArray(524288),
        IgnoreCheckClose(1048576),
        ErrorOnNullForPrimitives(2097152),
        NullOnError(4194304),
        IgnoreAutoTypeNotMatch(8388608),
        NonZeroNumberCastToBooleanAsTrue(16777216),
        IgnoreNullPropertyValue(SVG.f15804L),
        ErrorOnUnknownProperties(SVG.f15805M),
        EmptyStringAsNull(SVG.f15806N),
        NonErrorOnNumberOverflow(SVG.f15807O);

        public final long mask;

        Feature(long j) {
            this.mask = j;
        }

        /* renamed from: of */
        public static long m7321of(Feature[] featureArr) {
            long j = 0;
            if (featureArr == null) {
                return 0L;
            }
            for (Feature feature : featureArr) {
                j |= feature.mask;
            }
            return j;
        }
    }

    /* loaded from: classes3.dex */
    public static class SavePoint {
        protected final int current;
        protected final int offset;

        public SavePoint(int i, int i2) {
            this.offset = i;
            this.current = i2;
        }
    }

    /* renamed from: com.alibaba.fastjson2.JSONReader$a */
    /* loaded from: classes3.dex */
    public static final class C1728a implements BiFunction<Integer, int[], BigInteger> {

        /* renamed from: e */
        public static final BiFunction<Integer, int[], BigInteger> f12312e = new C1728a();

        @Override // java.util.function.BiFunction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger apply(Integer num, int[] iArr) {
            int length;
            int intValue = num.intValue();
            if (iArr.length == 0) {
                length = 0;
            } else {
                length = ((iArr.length - 1) << 5) + (32 - Integer.numberOfLeadingZeros(iArr[0]));
                if (intValue < 0) {
                    boolean z = Integer.bitCount(iArr[0]) == 1;
                    for (int i = 1; i < iArr.length && z; i++) {
                        z = iArr[i] == 0;
                    }
                    if (z) {
                        length--;
                    }
                }
            }
            int i2 = (length / 8) + 1;
            byte[] bArr = new byte[i2];
            int i3 = 0;
            int i4 = 0;
            int i5 = 4;
            for (int i6 = i2 - 1; i6 >= 0; i6--) {
                if (i5 == 4) {
                    int i7 = i4 + 1;
                    if (i4 >= 0) {
                        if (i4 < iArr.length) {
                            i3 = iArr[(iArr.length - i4) - 1];
                            if (intValue < 0) {
                                int length2 = iArr.length;
                                int i8 = length2 - 1;
                                while (i8 >= 0 && iArr[i8] == 0) {
                                    i8--;
                                }
                                i3 = i4 <= (length2 - i8) - 1 ? -i3 : ~i3;
                            }
                        } else if (intValue < 0) {
                            i3 = -1;
                        }
                        i4 = i7;
                        i5 = 1;
                    }
                    i3 = 0;
                    i4 = i7;
                    i5 = 1;
                } else {
                    i3 >>>= 8;
                    i5++;
                }
                bArr[i6] = (byte) i3;
            }
            return new BigInteger(bArr);
        }
    }

    /* renamed from: com.alibaba.fastjson2.JSONReader$b */
    /* loaded from: classes3.dex */
    public static class C1729b {

        /* renamed from: a */
        public final FieldReader f12313a;

        /* renamed from: b */
        public final Object f12314b;

        /* renamed from: c */
        public final Object f12315c;

        /* renamed from: d */
        public final JSONPath f12316d;

        public C1729b(FieldReader fieldReader, Object obj, Object obj2, JSONPath jSONPath) {
            this.f12313a = fieldReader;
            this.f12314b = obj;
            this.f12315c = obj2;
            this.f12316d = jSONPath;
        }

        public String toString() {
            return this.f12316d.toString();
        }
    }

    public JSONReader(Context context, boolean z) {
        this.context = context;
        this.jsonb = z;
    }

    /* renamed from: I */
    public static char m7283I(int i, int i2) {
        int[] iArr = JSONFactory.f12247w;
        return (char) ((iArr[i] << 4) + iArr[i2]);
    }

    /* renamed from: M */
    public static char m7284M(int i, int i2, int i3, int i4) {
        int[] iArr = JSONFactory.f12247w;
        return (char) ((iArr[i] << 12) + (iArr[i2] << 8) + (iArr[i3] << 4) + iArr[i4]);
    }

    public static AutoTypeBeforeHandler autoTypeFilter(String... strArr) {
        return new ContextAutoTypeBeforeHandler(strArr);
    }

    /* renamed from: f0 */
    public static boolean m7285f0(int i) {
        return (i >= 65 && i <= 90) || (i >= 97 && i <= 122) || i == 95 || i == 36 || ((i >= 48 && i <= 57) || i > 127);
    }

    /* renamed from: i0 */
    public static JSONException m7286i0(int i, int i2) {
        return new JSONException("illegal number, offset " + i + ", char " + ((char) i2));
    }

    /* renamed from: j0 */
    public static JSONException m7287j0(int i) {
        return new JSONException("syntax error, expect ',', but '" + ((char) i) + CloudStorageConstants.SINGLE_QUOTES);
    }

    /* renamed from: k0 */
    public static JSONException m7288k0(int i, int i2) {
        return new JSONException("syntax error, offset " + i + ", char " + ((char) i2));
    }

    /* renamed from: of */
    public static JSONReader m7303of(byte[] bArr) {
        return new C1739i(JSONFactory.createReadContext(), null, bArr, 0, bArr.length);
    }

    public static JSONReader ofJSONB(byte[] bArr) {
        return new C1737g(JSONFactory.createReadContext(), bArr, 0, bArr.length);
    }

    /* renamed from: H */
    public final char m7313H(int i) {
        if (i != 34 && i != 35 && i != 64) {
            if (i == 70) {
                return '\f';
            }
            if (i != 95) {
                if (i == 98) {
                    return '\b';
                }
                if (i == 102) {
                    return '\f';
                }
                if (i == 110) {
                    return '\n';
                }
                if (i == 114) {
                    return '\r';
                }
                if (i == 116) {
                    return '\t';
                }
                if (i == 118) {
                    return (char) 11;
                }
                switch (i) {
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                        break;
                    default:
                        switch (i) {
                            case 46:
                            case 47:
                                break;
                            case 48:
                                return (char) 0;
                            case 49:
                                return (char) 1;
                            case 50:
                                return (char) 2;
                            case 51:
                                return (char) 3;
                            case 52:
                                return (char) 4;
                            case 53:
                                return (char) 5;
                            case 54:
                                return (char) 6;
                            case 55:
                                return (char) 7;
                            default:
                                switch (i) {
                                    case 91:
                                    case 92:
                                    case 93:
                                        break;
                                    default:
                                        throw new JSONException(info("unclosed.str '\\" + ((char) i)));
                                }
                        }
                }
            }
        }
        return (char) i;
    }

    public final void addResolveTask(FieldReader fieldReader, Object obj, JSONPath jSONPath) {
        if (this.f12291e == null) {
            this.f12291e = new ArrayList();
        }
        this.f12291e.add(new C1729b(fieldReader, obj, fieldReader.fieldName, jSONPath));
    }

    public ObjectReader checkAutoType(Class cls, long j, long j2) {
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public final char current() {
        return this.f12290ch;
    }

    public final BigDecimal decimal(JSONObject jSONObject) {
        BigDecimal bigDecimal = jSONObject.getBigDecimal("value");
        if (bigDecimal == null) {
            bigDecimal = jSONObject.getBigDecimal("$numberDecimal");
        }
        if (bigDecimal != null) {
            return bigDecimal;
        }
        throw new JSONException("can not cast to decimal " + jSONObject);
    }

    /* renamed from: e0 */
    public final JSONException m7314e0(int i, int i2) {
        throw new JSONException("error, offset " + i + ", char " + ((char) i2));
    }

    public void endArray() {
        next();
    }

    public JSONException error() {
        return new JSONException(info("illegal ch " + this.f12290ch));
    }

    public final void errorOnNoneSerializable(Class cls) {
        if ((this.context.features & Feature.ErrorOnNoneSerializable.mask) == 0 || Serializable.class.isAssignableFrom(cls)) {
            return;
        }
        throw new JSONException("not support none-Serializable, class " + cls.getName());
    }

    /* renamed from: f */
    public final void m7315f(List<Object> list, int i, Object obj) {
        if (!(obj instanceof JSONPath)) {
            list.add(obj);
        } else {
            addResolveTask(list, i, (JSONPath) obj);
            list.add(null);
        }
    }

    public final long features(long j) {
        return this.context.features | j;
    }

    /* renamed from: g0 */
    public final JSONException m7316g0() {
        return new JSONException(info("not support unquoted name"));
    }

    public final BigDecimal getBigDecimal() {
        int[] iArr;
        int i;
        int[] iArr2;
        int i2;
        BigDecimal bigDecimal = null;
        if (this.wasNull) {
            return null;
        }
        byte b = this.valueType;
        if (b == 1) {
            int i3 = this.mag1;
            if (i3 == 0 && this.mag2 == 0 && (i = this.mag3) >= 0) {
                return BigDecimal.valueOf(this.negative ? -i : i);
            }
            int i4 = this.mag0;
            if (i4 != 0) {
                iArr = new int[]{i4, i3, this.mag2, this.mag3};
            } else if (i3 == 0) {
                int i5 = this.mag3;
                long j = i5 & 4294967295L;
                int i6 = this.mag2;
                long j2 = 4294967295L & i6;
                if (j2 <= 2147483647L) {
                    long j3 = (j2 << 32) + j;
                    if (this.negative) {
                        j3 = -j3;
                    }
                    return BigDecimal.valueOf(j3);
                }
                iArr = new int[]{i6, i5};
            } else {
                iArr = new int[]{i3, this.mag2, this.mag3};
            }
            return new BigDecimal(C1728a.f12312e.apply(Integer.valueOf(this.negative ? -1 : 1), iArr));
        }
        if (b != 2) {
            if (b == 3) {
                try {
                    return TypeUtils.toBigDecimal(this.stringValue);
                } catch (NumberFormatException e) {
                    throw new JSONException(this.info("read decimal error, value " + this.stringValue), e);
                }
            }
            if (b == 4) {
                return this.boolValue ? BigDecimal.ONE : BigDecimal.ZERO;
            }
            if (b != 6) {
                if (b == 8) {
                    return TypeUtils.toBigDecimal(this.stringValue);
                }
                throw new JSONException("TODO : " + ((int) this.valueType));
            }
            JSONObject jSONObject = (JSONObject) this.complex;
            BigDecimal bigDecimal2 = jSONObject.getBigDecimal("value");
            if (bigDecimal2 == null) {
                bigDecimal2 = jSONObject.getBigDecimal("$numberDecimal");
            }
            if (bigDecimal2 != null) {
                return bigDecimal2;
            }
            throw new JSONException("TODO : " + ((int) this.valueType));
        }
        if (this.exponent == 0 && this.mag0 == 0 && this.mag1 == 0) {
            int i7 = this.mag2;
            if (i7 != 0 || (i2 = this.mag3) < 0) {
                long j4 = this.mag3 & 4294967295L;
                long j5 = 4294967295L & i7;
                if (j5 <= 2147483647L) {
                    long j6 = (j5 << 32) + j4;
                    if (this.negative) {
                        j6 = -j6;
                    }
                    bigDecimal = BigDecimal.valueOf(j6, this.scale);
                }
            } else {
                if (this.negative) {
                    i2 = -i2;
                }
                bigDecimal = BigDecimal.valueOf(i2, this.scale);
            }
        }
        if (bigDecimal == null) {
            int i8 = this.mag0;
            if (i8 == 0) {
                int i9 = this.mag1;
                if (i9 == 0) {
                    int i10 = this.mag2;
                    iArr2 = i10 == 0 ? new int[]{this.mag3} : new int[]{i10, this.mag3};
                } else {
                    iArr2 = new int[]{i9, this.mag2, this.mag3};
                }
            } else {
                iArr2 = new int[]{i8, this.mag1, this.mag2, this.mag3};
            }
            bigDecimal = new BigDecimal(C1728a.f12312e.apply(Integer.valueOf(this.negative ? -1 : 1), iArr2), this.scale);
        }
        if (this.exponent == 0) {
            return bigDecimal;
        }
        return TypeUtils.toBigDecimal(Double.parseDouble(bigDecimal.toPlainString() + "E" + ((int) this.exponent)));
    }

    public final BigInteger getBigInteger() {
        Number number = getNumber();
        if (number == null) {
            return null;
        }
        return number instanceof BigInteger ? (BigInteger) number : BigInteger.valueOf(number.longValue());
    }

    public final Context getContext() {
        return this.context;
    }

    public abstract String getFieldName();

    public final int getInt32Value() {
        int intValueExact;
        int i;
        switch (this.valueType) {
            case 1:
            case 9:
            case 10:
                if (this.mag1 == 0 && this.mag2 == 0 && (i = this.mag3) != Integer.MIN_VALUE) {
                    return this.negative ? -i : i;
                }
                Number number = getNumber();
                if (number instanceof Long) {
                    long longValue = number.longValue();
                    if (longValue >= ParserBase.f21225q && longValue <= 2147483647L) {
                        return (int) longValue;
                    }
                    throw new JSONException(info("integer overflow " + longValue));
                }
                if (!(number instanceof BigInteger)) {
                    return number.intValue();
                }
                BigInteger bigInteger = (BigInteger) number;
                if ((this.context.features & Feature.NonErrorOnNumberOverflow.mask) != 0) {
                    return bigInteger.intValue();
                }
                try {
                    intValueExact = bigInteger.intValueExact();
                    return intValueExact;
                } catch (ArithmeticException unused) {
                    throw this.m7317h0();
                }
            case 2:
                return getNumber().intValue();
            case 3:
                return toInt32(this.stringValue);
            case 4:
                return this.boolValue ? 1 : 0;
            case 5:
                if ((this.context.features & Feature.ErrorOnNullForPrimitives.mask) == 0) {
                    return 0;
                }
                throw new JSONException(info("int value not support input null"));
            case 6:
                Number number2 = toNumber((Map) this.complex);
                if (number2 != null) {
                    return number2.intValue();
                }
                return 0;
            case 7:
                return toInt((List) this.complex);
            case 8:
                try {
                    return getBigDecimal().intValueExact();
                } catch (ArithmeticException unused2) {
                    throw this.m7317h0();
                }
            case 11:
            case 12:
            case 13:
                return getNumber().intValue();
            default:
                throw new JSONException("TODO : " + ((int) this.valueType));
        }
    }

    public final long getInt64Value() {
        long longValueExact;
        int i;
        switch (this.valueType) {
            case 1:
            case 9:
            case 10:
                if (this.mag1 == 0 && this.mag2 == 0 && (i = this.mag3) != Integer.MIN_VALUE) {
                    return this.negative ? -i : i;
                }
                Number number = getNumber();
                if (!(number instanceof BigInteger)) {
                    return number.longValue();
                }
                BigInteger bigInteger = (BigInteger) number;
                if ((this.context.features & Feature.NonErrorOnNumberOverflow.mask) != 0) {
                    return bigInteger.longValue();
                }
                try {
                    longValueExact = bigInteger.longValueExact();
                    return longValueExact;
                } catch (ArithmeticException unused) {
                    throw m7317h0();
                }
            case 2:
                return getNumber().longValue();
            case 3:
                return toInt64(this.stringValue);
            case 4:
                return this.boolValue ? 1L : 0L;
            case 5:
                if ((this.context.features & Feature.ErrorOnNullForPrimitives.mask) == 0) {
                    return 0L;
                }
                throw new JSONException(info("long value not support input null"));
            case 6:
                return toLong((Map) this.complex);
            case 7:
                return toInt((List) this.complex);
            case 8:
                try {
                    return getBigDecimal().longValueExact();
                } catch (ArithmeticException unused2) {
                    throw m7317h0();
                }
            case 11:
            case 12:
            case 13:
                return getNumber().longValue();
            default:
                throw new JSONException("TODO : " + ((int) this.valueType));
        }
    }

    public final Locale getLocale() {
        return this.context.getLocale();
    }

    public abstract long getNameHashCodeLCase();

    /* JADX WARN: Removed duplicated region for block: B:155:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Number getNumber() {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.JSONReader.getNumber():java.lang.Number");
    }

    public final ObjectReader getObjectReader(Type type) {
        Context context = this.context;
        return context.provider.getObjectReader(type, (context.features & Feature.FieldBased.mask) != 0);
    }

    public ObjectReader getObjectReaderAutoType(long j, Class cls, long j2) {
        Class<?> apply;
        ObjectReader objectReaderAutoType = this.context.getObjectReaderAutoType(j);
        if (objectReaderAutoType != null) {
            return objectReaderAutoType;
        }
        String string = getString();
        AutoTypeBeforeHandler autoTypeBeforeHandler = this.context.f12311t;
        if (autoTypeBeforeHandler != null && (apply = autoTypeBeforeHandler.apply(string, (Class<?>) cls, j2)) != null) {
            return this.context.provider.getObjectReader(apply, (j2 & Feature.FieldBased.mask) != 0);
        }
        Context context = this.context;
        return context.provider.getObjectReader(string, cls, j2 | context.features);
    }

    public final int getOffset() {
        return this.offset;
    }

    public abstract String getString();

    public abstract int getStringLength();

    public byte getType() {
        return Byte.MIN_VALUE;
    }

    public final ZoneId getZoneId() {
        return this.context.getZoneId();
    }

    /* renamed from: h0 */
    public JSONException m7317h0() {
        return new JSONException("illegal number, offset " + this.offset + ", char " + this.f12290ch);
    }

    public final void handleResolveTasks(Object obj) {
        if (this.f12291e == null) {
            return;
        }
        Object obj2 = null;
        for (int i = 0; i < this.f12291e.size(); i++) {
            C1729b c1729b = this.f12291e.get(i);
            JSONPath jSONPath = c1729b.f12316d;
            FieldReader fieldReader = c1729b.f12313a;
            if (!jSONPath.previous) {
                Context context = this.context;
                jSONPath.f12261a = context;
                if ((context.features & Feature.FieldBased.mask) != 0) {
                    JSONWriter.Context createWriteContext = JSONFactory.createWriteContext();
                    createWriteContext.f12331k |= JSONWriter.Feature.FieldBased.mask;
                    jSONPath.f12262b = createWriteContext;
                }
                obj2 = jSONPath.eval(obj);
            }
            Object obj3 = c1729b.f12315c;
            Object obj4 = c1729b.f12314b;
            if (obj3 != null) {
                if (obj4 instanceof Map) {
                    Map map = (Map) obj4;
                    if (!(obj3 instanceof ReferenceKey)) {
                        map.put(obj3, obj2);
                    } else if (map instanceof LinkedHashMap) {
                        int size = map.size();
                        if (size != 0) {
                            Object[] objArr = new Object[size];
                            Object[] objArr2 = new Object[size];
                            int i2 = 0;
                            for (Map.Entry entry : map.entrySet()) {
                                Object key = entry.getKey();
                                if (obj3 == key) {
                                    objArr[i2] = obj2;
                                } else {
                                    objArr[i2] = key;
                                }
                                objArr2[i2] = entry.getValue();
                                i2++;
                            }
                            map.clear();
                            for (int i3 = 0; i3 < size; i3++) {
                                map.put(objArr[i3], objArr2[i3]);
                            }
                        }
                    } else {
                        map.put(obj2, map.remove(obj3));
                    }
                } else if (obj3 instanceof Integer) {
                    if (obj4 instanceof List) {
                        int intValue = ((Integer) obj3).intValue();
                        List list = (List) obj4;
                        if (intValue == list.size()) {
                            list.add(obj2);
                        } else if (intValue >= list.size() || list.get(intValue) != null) {
                            list.add(intValue, obj2);
                        } else {
                            list.set(intValue, obj2);
                        }
                    } else if (obj4 instanceof Object[]) {
                        ((Object[]) obj4)[((Integer) obj3).intValue()] = obj2;
                    } else if (obj4 instanceof Collection) {
                        ((Collection) obj4).add(obj2);
                    }
                }
            }
            fieldReader.accept((FieldReader) obj4, obj2);
        }
    }

    public final boolean hasComma() {
        return this.comma;
    }

    public final String info() {
        return info(null);
    }

    public abstract boolean isArray();

    public boolean isBinary() {
        return false;
    }

    public final boolean isEnabled(Feature feature) {
        return (feature.mask & this.context.features) != 0;
    }

    public boolean isEnd() {
        return this.f12290ch == 26;
    }

    public final boolean isInitStringFieldAsEmpty() {
        return (this.context.features & Feature.InitStringFieldAsEmpty.mask) != 0;
    }

    public boolean isInt() {
        char c = this.f12290ch;
        return c == '-' || c == '+' || (c >= '0' && c <= '9');
    }

    public final boolean isJSONB() {
        return this.jsonb;
    }

    public abstract boolean isNull();

    public boolean isNumber() {
        char c = this.f12290ch;
        if (c == '+' || c == '-') {
            return true;
        }
        switch (c) {
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                return true;
            default:
                return false;
        }
    }

    public boolean isObject() {
        return this.f12290ch == '{';
    }

    public abstract boolean isReference();

    public boolean isString() {
        char c = this.f12290ch;
        return c == '\"' || c == '\'';
    }

    public final boolean isSupportAutoType(long j) {
        return ((this.context.features | j) & Feature.SupportAutoType.mask) != 0;
    }

    public final boolean isSupportAutoTypeOrHandler(long j) {
        Context context = this.context;
        return (((j | context.features) & Feature.SupportAutoType.mask) == 0 && context.f12311t == null) ? false : true;
    }

    public final boolean isSupportBeanArray() {
        return (this.context.features & Feature.SupportArrayToBean.mask) != 0;
    }

    public final boolean isSupportSmartMatch() {
        return (this.context.features & Feature.SupportSmartMatch.mask) != 0;
    }

    public final boolean isTypeRedirect() {
        return this.typeRedirect;
    }

    /* renamed from: j */
    public final void m7318j(byte[] bArr, int i, int i2) {
        int i3;
        char c;
        int i4;
        long j;
        long j2;
        int i5 = i2 - i;
        if (this.scale > 0) {
            i5--;
        }
        if (i5 > 38) {
            throw new JSONException("number too large : " + new String(bArr, i, i5));
        }
        int i6 = i5 % 9;
        int i7 = i + (i6 != 0 ? i6 : 9);
        int i8 = i + 1;
        char c2 = (char) bArr[i];
        char c3 = '.';
        if (c2 == '.') {
            int i9 = i8 + 1;
            char c4 = (char) bArr[i8];
            i3 = i7 + 1;
            i8 = i9;
            c2 = c4;
        } else {
            i3 = i7;
        }
        int i10 = c2 - '0';
        while (i8 < i7) {
            char c5 = (char) bArr[i8];
            if (c5 == '.') {
                i8++;
                c5 = (char) bArr[i8];
                i3++;
                if (i7 < i2) {
                    i7++;
                }
            }
            i10 = (i10 * 10) + (c5 - '0');
            i8++;
        }
        this.mag3 = i10;
        while (i3 < i2) {
            int i11 = i3 + 9;
            int i12 = i3 + 1;
            char c6 = (char) bArr[i3];
            if (c6 == c3) {
                i4 = i12 + 1;
                i11++;
                c = (char) bArr[i12];
            } else {
                c = c6;
                i4 = i12;
            }
            int i13 = i11;
            int i14 = c - '0';
            while (i4 < i11) {
                char c7 = (char) bArr[i4];
                if (c7 == c3) {
                    i4++;
                    c7 = (char) bArr[i4];
                    i13++;
                    i11++;
                }
                i14 = (i14 * 10) + (c7 - '0');
                i4++;
            }
            long j3 = i14 & 4294967295L;
            long j4 = 0;
            for (int i15 = 3; i15 >= 0; i15--) {
                if (i15 == 0) {
                    j2 = (1000000000 * (this.mag0 & 4294967295L)) + j4;
                    this.mag0 = (int) j2;
                } else if (i15 == 1) {
                    j2 = (1000000000 * (this.mag1 & 4294967295L)) + j4;
                    this.mag1 = (int) j2;
                } else if (i15 == 2) {
                    j2 = (1000000000 * (this.mag2 & 4294967295L)) + j4;
                    this.mag2 = (int) j2;
                } else {
                    if (i15 != 3) {
                        throw new ArithmeticException("BigInteger would overflow supported range");
                    }
                    j2 = (1000000000 * (this.mag3 & 4294967295L)) + j4;
                    this.mag3 = (int) j2;
                }
                j4 = j2 >>> 32;
            }
            long j5 = (this.mag3 & 4294967295L) + j3;
            this.mag3 = (int) j5;
            long j6 = j5 >>> 32;
            for (int i16 = 2; i16 >= 0; i16--) {
                if (i16 == 0) {
                    j = (this.mag0 & 4294967295L) + j6;
                    this.mag0 = (int) j;
                } else if (i16 == 1) {
                    j = (this.mag1 & 4294967295L) + j6;
                    this.mag1 = (int) j;
                } else if (i16 == 2) {
                    j = (this.mag2 & 4294967295L) + j6;
                    this.mag2 = (int) j;
                } else {
                    if (i16 != 3) {
                        throw new ArithmeticException("BigInteger would overflow supported range");
                    }
                    j = (this.mag3 & 4294967295L) + j6;
                    this.mag3 = (int) j;
                }
                j6 = j >>> 32;
            }
            i3 = i13;
            c3 = '.';
        }
    }

    /* renamed from: l0 */
    public final JSONException m7319l0() {
        return new JSONException(info("illegal value"));
    }

    public SavePoint mark() {
        return new SavePoint(this.offset, this.f12290ch);
    }

    public abstract void next();

    public abstract boolean nextIfArrayEnd();

    public abstract boolean nextIfArrayStart();

    public abstract boolean nextIfComma();

    public abstract boolean nextIfInfinity();

    public boolean nextIfMatch(byte b) {
        throw new JSONException("UnsupportedOperation");
    }

    public abstract boolean nextIfMatch(char c);

    public abstract boolean nextIfMatchIdent(char c, char c2, char c3);

    public abstract boolean nextIfMatchIdent(char c, char c2, char c3, char c4);

    public abstract boolean nextIfMatchIdent(char c, char c2, char c3, char c4, char c5);

    public abstract boolean nextIfMatchIdent(char c, char c2, char c3, char c4, char c5, char c6);

    public boolean nextIfMatchTypedAny() {
        throw new JSONException("UnsupportedOperation");
    }

    public abstract boolean nextIfNull();

    public abstract boolean nextIfNullOrEmptyString();

    public abstract boolean nextIfObjectEnd();

    public abstract boolean nextIfObjectStart();

    public abstract boolean nextIfSet();

    public <T> T read(Type type) {
        Context context = this.context;
        return (T) context.provider.getObjectReader(type, (context.features & Feature.FieldBased.mask) != 0).readObject(this, null, null, 0L);
    }

    public Object readAny() {
        return read(Object.class);
    }

    public List readArray(Type type) {
        char c;
        if (nextIfNull()) {
            return null;
        }
        if (nextIfArrayStart()) {
            Context context = this.context;
            ObjectReader objectReader = context.provider.getObjectReader(type, (context.features & Feature.FieldBased.mask) != 0);
            ArrayList arrayList = new ArrayList();
            while (!nextIfArrayEnd()) {
                int i = this.offset;
                Object readObject = objectReader.readObject(this, null, null, 0L);
                if (i != this.offset && (c = this.f12290ch) != '}' && c != 26) {
                    arrayList.add(readObject);
                } else {
                    throw new JSONException("illegal input : " + this.f12290ch + ", offset " + getOffset());
                }
            }
            boolean z = this.f12290ch == ',';
            this.comma = z;
            if (z) {
                next();
            }
            return arrayList;
        }
        throw new JSONException(info("syntax error : " + this.f12290ch));
    }

    public abstract BigDecimal readBigDecimal();

    public BigInteger readBigInteger() {
        readNumber0();
        return getBigInteger();
    }

    public byte[] readBinary() {
        if (this.f12290ch == 'x') {
            return readHex();
        }
        if (isString()) {
            String readString = readString();
            if (readString.isEmpty()) {
                return null;
            }
            if ((this.context.features & Feature.Base64StringAsByteArray.mask) != 0) {
                return IOUtils.decodeBase64(readString);
            }
            throw new JSONException(info("not support input " + readString));
        }
        if (!nextIfArrayStart()) {
            throw new JSONException(info("not support read binary"));
        }
        byte[] bArr = new byte[64];
        int i = 0;
        while (this.f12290ch != ']') {
            if (i == bArr.length) {
                int length = bArr.length;
                bArr = Arrays.copyOf(bArr, length + (length >> 1));
            }
            bArr[i] = (byte) readInt32Value();
            i++;
        }
        next();
        nextIfComma();
        return Arrays.copyOf(bArr, i);
    }

    public Boolean readBool() {
        if (nextIfNull()) {
            return null;
        }
        boolean readBoolValue = readBoolValue();
        if (readBoolValue || !this.wasNull) {
            return Boolean.valueOf(readBoolValue);
        }
        return null;
    }

    public abstract boolean readBoolValue();

    public Calendar readCalendar() {
        Date readDate = readDate();
        if (readDate == null) {
            return null;
        }
        Calendar calendar = Calendar.getInstance(this.context.getTimeZone());
        calendar.setTime(readDate);
        return calendar;
    }

    public char readCharValue() {
        String readString = readString();
        if (readString != null && !readString.isEmpty()) {
            return readString.charAt(0);
        }
        this.wasNull = true;
        return (char) 0;
    }

    public Character readCharacter() {
        String readString = readString();
        if (readString != null && !readString.isEmpty()) {
            return Character.valueOf(readString.charAt(0));
        }
        this.wasNull = true;
        return (char) 0;
    }

    public Date readDate() {
        long readMillisFromString;
        if (isInt()) {
            return new Date(readInt64Value());
        }
        if (readIfNull() || nextIfNullOrEmptyString()) {
            return null;
        }
        if (isTypeRedirect() && nextIfMatchIdent('\"', 'v', 'a', 'l', '\"')) {
            nextIfMatch(':');
            readMillisFromString = readInt64Value();
            nextIfObjectEnd();
            setTypeRedirect(false);
        } else {
            readMillisFromString = readMillisFromString();
        }
        if (readMillisFromString == 0 && this.wasNull) {
            return null;
        }
        return new Date(readMillisFromString);
    }

    public final Double readDouble() {
        if (nextIfNull()) {
            return null;
        }
        this.wasNull = false;
        double readDoubleValue = readDoubleValue();
        if (this.wasNull) {
            return null;
        }
        return Double.valueOf(readDoubleValue);
    }

    public abstract double readDoubleValue();

    public abstract String readFieldName();

    public abstract long readFieldNameHashCode();

    public abstract long readFieldNameHashCodeUnquote();

    public final String readFieldNameUnquote() {
        readFieldNameHashCodeUnquote();
        return getFieldName();
    }

    public final Float readFloat() {
        if (nextIfNull()) {
            return null;
        }
        this.wasNull = false;
        float readFloatValue = readFloatValue();
        if (this.wasNull) {
            return null;
        }
        return Float.valueOf(readFloatValue);
    }

    public abstract float readFloatValue();

    public abstract byte[] readHex();

    public abstract boolean readIfNull();

    public Instant readInstant() {
        if (nextIfNull()) {
            return null;
        }
        if (isNumber()) {
            long readInt64Value = readInt64Value();
            if (this.context.f12298g) {
                readInt64Value *= 1000;
            }
            return Instant.ofEpochMilli(readInt64Value);
        }
        if (isObject()) {
            return (Instant) getObjectReader(Instant.class).createInstance(readObject(), 0L);
        }
        ZonedDateTime readZonedDateTime = readZonedDateTime();
        if (readZonedDateTime == null) {
            return null;
        }
        return Instant.ofEpochSecond(readZonedDateTime.toEpochSecond(), readZonedDateTime.toLocalTime().getNano());
    }

    public Short readInt16() {
        Integer readInt32 = readInt32();
        if (readInt32 == null) {
            return null;
        }
        return Short.valueOf(readInt32.shortValue());
    }

    public short readInt16Value() {
        return (short) readInt32Value();
    }

    public abstract Integer readInt32();

    public abstract int readInt32Value();

    public abstract Long readInt64();

    public abstract long readInt64Value();

    public long[] readInt64ValueArray() {
        if (nextIfNull()) {
            return null;
        }
        if (!nextIfArrayStart()) {
            if (!isString()) {
                throw new JSONException(info("TODO"));
            }
            String readString = readString();
            if (readString.isEmpty()) {
                return null;
            }
            throw new JSONException(info("not support input " + readString));
        }
        long[] jArr = new long[8];
        int i = 0;
        while (!nextIfArrayEnd()) {
            if (isEnd()) {
                throw new JSONException(info("input end"));
            }
            if (i == jArr.length) {
                jArr = Arrays.copyOf(jArr, jArr.length << 1);
            }
            jArr[i] = readInt64Value();
            i++;
        }
        nextIfComma();
        return i == jArr.length ? jArr : Arrays.copyOf(jArr, i);
    }

    public Byte readInt8() {
        Integer readInt32 = readInt32();
        if (readInt32 == null) {
            return null;
        }
        return Byte.valueOf(readInt32.byteValue());
    }

    public byte readInt8Value() {
        return (byte) readInt32Value();
    }

    public final JSONArray readJSONArray() {
        JSONArray jSONArray = new JSONArray();
        read((List) jSONArray);
        return jSONArray;
    }

    public final JSONObject readJSONObject() {
        JSONObject jSONObject = new JSONObject();
        read(jSONObject, 0L);
        return jSONObject;
    }

    public List readList(Type[] typeArr) {
        char c;
        if (nextIfNull()) {
            return null;
        }
        if (!nextIfArrayStart()) {
            throw new JSONException("syntax error : " + this.f12290ch);
        }
        int length = typeArr.length;
        ArrayList arrayList = new ArrayList(length);
        int i = 0;
        while (!nextIfArrayEnd() && i < length) {
            int i2 = this.offset;
            int i3 = i + 1;
            Object read = read(typeArr[i]);
            if (i2 == this.offset || (c = this.f12290ch) == '}' || c == 26) {
                throw new JSONException("illegal input : " + this.f12290ch + ", offset " + getOffset());
            }
            arrayList.add(read);
            i = i3;
        }
        if (i != length) {
            throw new JSONException(info("element length mismatch"));
        }
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return arrayList;
    }

    public LocalDate readLocalDate() {
        LocalDateTime readLocalDateTime19;
        if (nextIfNull()) {
            return null;
        }
        if (isInt()) {
            long readInt64Value = readInt64Value();
            if (this.context.f12298g) {
                readInt64Value *= 1000;
            }
            return Instant.ofEpochMilli(readInt64Value).atZone(this.context.getZoneId()).toLocalDate();
        }
        Context context = this.context;
        if (context.f12292a == null || context.f12293b || context.f12294c || context.f12296e || context.f12299h) {
            int stringLength = getStringLength();
            if (stringLength == 19) {
                readLocalDateTime19 = readLocalDateTime19();
            } else if (stringLength != 20) {
                switch (stringLength) {
                    case 8:
                        LocalDate readLocalDate8 = readLocalDate8();
                        if (readLocalDate8 != null) {
                            readLocalDateTime19 = LocalDateTime.of(readLocalDate8, LocalTime.MIN);
                            break;
                        }
                        readLocalDateTime19 = null;
                        break;
                    case 9:
                        LocalDate readLocalDate9 = readLocalDate9();
                        if (readLocalDate9 != null) {
                            readLocalDateTime19 = LocalDateTime.of(readLocalDate9, LocalTime.MIN);
                            break;
                        }
                        readLocalDateTime19 = null;
                        break;
                    case 10:
                        LocalDate readLocalDate10 = readLocalDate10();
                        if (readLocalDate10 != null) {
                            readLocalDateTime19 = LocalDateTime.of(readLocalDate10, LocalTime.MIN);
                            break;
                        }
                        readLocalDateTime19 = null;
                        break;
                    case 11:
                        LocalDate readLocalDate11 = readLocalDate11();
                        if (readLocalDate11 != null) {
                            readLocalDateTime19 = LocalDateTime.of(readLocalDate11, LocalTime.MIN);
                            break;
                        }
                        readLocalDateTime19 = null;
                        break;
                    default:
                        if (stringLength > 20) {
                            readLocalDateTime19 = readLocalDateTimeX(stringLength);
                            break;
                        }
                        readLocalDateTime19 = null;
                        break;
                }
            } else {
                readLocalDateTime19 = readLocalDateTime20();
            }
            if (readLocalDateTime19 != null) {
                return readLocalDateTime19.toLocalDate();
            }
        }
        String readString = readString();
        if (readString.isEmpty() || "null".equals(readString)) {
            return null;
        }
        DateTimeFormatter dateFormatter = this.context.getDateFormatter();
        if (dateFormatter != null) {
            return this.context.f12301j ? LocalDateTime.parse(readString, dateFormatter).toLocalDate() : LocalDate.parse(readString, dateFormatter);
        }
        if (IOUtils.isNumber(readString)) {
            return Instant.ofEpochMilli(Long.parseLong(readString)).atZone(this.context.getZoneId()).toLocalDate();
        }
        throw new JSONException("not support input : " + readString);
    }

    public abstract LocalDate readLocalDate10();

    public abstract LocalDate readLocalDate11();

    public abstract LocalDate readLocalDate8();

    public abstract LocalDate readLocalDate9();

    /* JADX WARN: Type inference failed for: r4v11, types: [java.time.LocalDateTime] */
    /* JADX WARN: Type inference failed for: r4v27, types: [java.time.LocalDateTime] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.time.LocalDateTime] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.time.LocalDateTime] */
    public LocalDateTime readLocalDateTime() {
        if (isInt()) {
            return Instant.ofEpochMilli(readInt64Value()).atZone(this.context.getZoneId()).toLocalDateTime();
        }
        Context context = this.context;
        if (context.f12292a == null || context.f12293b || context.f12294c || context.f12296e || context.f12299h) {
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
                    LocalDateTime readLocalDateTime17 = readLocalDateTime17();
                    if (readLocalDateTime17 != null) {
                        return readLocalDateTime17;
                    }
                    break;
                case 18:
                    LocalDateTime readLocalDateTime18 = readLocalDateTime18();
                    if (readLocalDateTime18 != null) {
                        return readLocalDateTime18;
                    }
                    break;
                case 19:
                    LocalDateTime readLocalDateTime19 = readLocalDateTime19();
                    if (readLocalDateTime19 != null) {
                        return readLocalDateTime19;
                    }
                    break;
                case 20:
                    LocalDateTime readLocalDateTime20 = readLocalDateTime20();
                    if (readLocalDateTime20 != null) {
                        return readLocalDateTime20;
                    }
                    ZonedDateTime readZonedDateTimeX = readZonedDateTimeX(stringLength);
                    if (readZonedDateTimeX != null) {
                        return readZonedDateTimeX.toLocalDateTime();
                    }
                    break;
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
                    ZonedDateTime readZonedDateTimeX2 = readZonedDateTimeX(stringLength);
                    if (readZonedDateTimeX2 != null) {
                        ZoneId zoneId = this.context.getZoneId();
                        return !readZonedDateTimeX2.getZone().equals(zoneId) ? readZonedDateTimeX2.toInstant().atZone(zoneId).toLocalDateTime() : readZonedDateTimeX2.toLocalDateTime();
                    }
                    break;
            }
        }
        String readString = readString();
        if (readString.isEmpty() || "null".equals(readString)) {
            this.wasNull = true;
            return null;
        }
        DateTimeFormatter dateFormatter = this.context.getDateFormatter();
        if (dateFormatter != null) {
            return !this.context.f12301j ? LocalDateTime.of(LocalDate.parse(readString, dateFormatter), LocalTime.MIN) : LocalDateTime.parse(readString, dateFormatter);
        }
        if (IOUtils.isNumber(readString)) {
            long parseLong = Long.parseLong(readString);
            if (this.context.f12298g) {
                parseLong *= 1000;
            }
            return LocalDateTime.ofInstant(Instant.ofEpochMilli(parseLong), this.context.getZoneId());
        }
        if (readString.startsWith("/Date(") && readString.endsWith(")/")) {
            String substring = readString.substring(6, readString.length() - 2);
            int indexOf = substring.indexOf(43);
            if (indexOf == -1) {
                indexOf = substring.indexOf(45);
            }
            if (indexOf != -1) {
                substring = substring.substring(0, indexOf);
            }
            return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(substring)), this.context.getZoneId());
        }
        if ("0000-00-00 00:00:00".equals(readString)) {
            this.wasNull = true;
            return null;
        }
        throw new JSONException(info("read LocalDateTime error " + readString));
    }

    public abstract LocalDateTime readLocalDateTime12();

    public abstract LocalDateTime readLocalDateTime14();

    public abstract LocalDateTime readLocalDateTime16();

    public abstract LocalDateTime readLocalDateTime17();

    public abstract LocalDateTime readLocalDateTime18();

    public abstract LocalDateTime readLocalDateTime19();

    public abstract LocalDateTime readLocalDateTime20();

    public abstract LocalDateTime readLocalDateTimeX(int i);

    public LocalTime readLocalTime() {
        if (nextIfNull()) {
            return null;
        }
        if (isInt()) {
            return Instant.ofEpochMilli(readInt64Value()).atZone(this.context.getZoneId()).toLocalTime();
        }
        int stringLength = getStringLength();
        if (stringLength == 5) {
            return readLocalTime5();
        }
        switch (stringLength) {
            case 8:
                return readLocalTime8();
            case 9:
                return readLocalTime9();
            case 10:
                return readLocalTime10();
            case 11:
                return readLocalTime11();
            case 12:
                return readLocalTime12();
            default:
                switch (stringLength) {
                    case 18:
                        return readLocalTime18();
                    case 19:
                        return readLocalDateTime19().toLocalTime();
                    case 20:
                        return readLocalDateTime20().toLocalTime();
                    default:
                        String readString = readString();
                        if (readString.isEmpty() || "null".equals(readString)) {
                            return null;
                        }
                        if (IOUtils.isNumber(readString)) {
                            return Instant.ofEpochMilli(Long.parseLong(readString)).atZone(this.context.getZoneId()).toLocalTime();
                        }
                        throw new JSONException("not support len : " + readString);
                }
        }
    }

    public abstract LocalTime readLocalTime10();

    public abstract LocalTime readLocalTime11();

    public abstract LocalTime readLocalTime12();

    public abstract LocalTime readLocalTime18();

    public abstract LocalTime readLocalTime5();

    public abstract LocalTime readLocalTime8();

    public abstract LocalTime readLocalTime9();

    public abstract long readMillis19();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:73:0x0025. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long readMillisFromString() {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.JSONReader.readMillisFromString():long");
    }

    public abstract void readNull();

    public abstract Date readNullOrNewDate();

    public Number readNumber() {
        readNumber0();
        return getNumber();
    }

    public abstract void readNumber0();

    public final void readObject(Object obj, Feature... featureArr) {
        long j = 0;
        for (Feature feature : featureArr) {
            j |= feature.mask;
        }
        readObject(obj, j);
    }

    public abstract OffsetDateTime readOffsetDateTime();

    public OffsetTime readOffsetTime() {
        throw new JSONException("TODO");
    }

    public abstract String readPattern();

    public abstract String readReference();

    public abstract String readString();

    public String[] readStringArray() {
        String[] strArr = null;
        if (this.f12290ch == 'n' && nextIfNull()) {
            return null;
        }
        if (!nextIfArrayStart()) {
            char c = this.f12290ch;
            if (c != '\"' && c != '\'') {
                throw new JSONException(info("not support input"));
            }
            String readString = readString();
            if (readString.isEmpty()) {
                return null;
            }
            throw new JSONException(info("not support input " + readString));
        }
        int i = 0;
        while (!nextIfArrayEnd()) {
            if (isEnd()) {
                throw new JSONException(info("input end"));
            }
            if (strArr == null) {
                strArr = new String[16];
            } else if (i == strArr.length) {
                strArr = (String[]) Arrays.copyOf(strArr, strArr.length << 1);
            }
            strArr[i] = readString();
            i++;
        }
        if (strArr == null) {
            strArr = new String[0];
        }
        nextIfComma();
        return strArr.length == i ? strArr : (String[]) Arrays.copyOf(strArr, i);
    }

    public final String readStringNotMatch() {
        char c = this.f12290ch;
        if (c != '+' && c != '-') {
            if (c == '[') {
                return toString(readArray());
            }
            if (c != 'f') {
                if (c == 'n') {
                    readNull();
                    return null;
                }
                if (c != 't') {
                    if (c == '{') {
                        return toString(readObject());
                    }
                    switch (c) {
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                            break;
                        default:
                            throw new JSONException(info("illegal input : " + this.f12290ch));
                    }
                }
            }
            boolean readBoolValue = readBoolValue();
            this.boolValue = readBoolValue;
            return readBoolValue ? "true" : "false";
        }
        readNumber0();
        return getNumber().toString();
    }

    public long readTypeHashCode() {
        return readValueHashCode();
    }

    public abstract UUID readUUID();

    public abstract long readValueHashCode();

    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x0043. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.time.ZonedDateTime readZonedDateTime() {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.JSONReader.readZonedDateTime():java.time.ZonedDateTime");
    }

    public abstract ZonedDateTime readZonedDateTimeX(int i);

    public void reset(SavePoint savePoint) {
        this.offset = savePoint.offset;
        this.f12290ch = (char) savePoint.current;
    }

    public final void setTypeRedirect(boolean z) {
        this.typeRedirect = z;
    }

    public abstract void skipComment();

    public abstract boolean skipName();

    public abstract void skipValue();

    public int startArray() {
        if (nextIfArrayStart()) {
            return Integer.MAX_VALUE;
        }
        throw new JSONException(info("illegal input, expect '[', but " + this.f12290ch));
    }

    public final int toInt(List list) {
        if (list.size() == 1) {
            Object obj = list.get(0);
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            if (obj instanceof String) {
                return Integer.parseInt((String) obj);
            }
        }
        throw new JSONException("parseLong error, field : value " + list);
    }

    public final int toInt32(String str) {
        if (IOUtils.isNumber(str)) {
            return Integer.parseInt(str);
        }
        throw new JSONException("parseInt error, value : " + str);
    }

    public final long toInt64(String str) {
        if (IOUtils.isNumber(str)) {
            return Long.parseLong(str);
        }
        if (str.length() > 10 && str.length() < 40) {
            try {
                return DateUtils.parseMillis(str, this.context.f12306o);
            } catch (JSONException | DateTimeException unused) {
            }
        }
        throw new JSONException("parseLong error, value : " + str);
    }

    public final long toLong(Map map) {
        if (map.get("val") instanceof Number) {
            return ((Number) r2).intValue();
        }
        throw new JSONException("parseLong error, value : " + map);
    }

    public final Number toNumber(Map map) {
        Object obj = map.get("val");
        if (obj instanceof Number) {
            return (Number) obj;
        }
        return null;
    }

    public final String toString(List list) {
        JSONWriter m7324of = JSONWriter.m7324of();
        m7324of.setRootObject(list);
        m7324of.write(list);
        return m7324of.toString();
    }

    /* renamed from: w */
    public final void m7320w(char[] cArr, int i, int i2) {
        int i3;
        char c;
        int i4;
        long j;
        long j2;
        int i5 = i2 - i;
        if (this.scale > 0) {
            i5--;
        }
        if (i5 > 38) {
            throw new JSONException("number too large : " + new String(cArr, i, i5));
        }
        int i6 = i5 % 9;
        int i7 = i + (i6 != 0 ? i6 : 9);
        int i8 = i + 1;
        char c2 = cArr[i];
        char c3 = '.';
        if (c2 == '.') {
            int i9 = i8 + 1;
            char c4 = cArr[i8];
            i3 = i7 + 1;
            i8 = i9;
            c2 = c4;
        } else {
            i3 = i7;
        }
        int i10 = c2 - '0';
        while (i8 < i7) {
            char c5 = cArr[i8];
            if (c5 == '.') {
                i8++;
                c5 = cArr[i8];
                i3++;
                if (i7 < i2) {
                    i7++;
                }
            }
            i10 = (i10 * 10) + (c5 - '0');
            i8++;
        }
        this.mag3 = i10;
        while (i3 < i2) {
            int i11 = i3 + 9;
            int i12 = i3 + 1;
            char c6 = cArr[i3];
            if (c6 == c3) {
                i4 = i12 + 1;
                i11++;
                c = cArr[i12];
            } else {
                c = c6;
                i4 = i12;
            }
            int i13 = i11;
            int i14 = c - '0';
            while (i4 < i11) {
                char c7 = cArr[i4];
                if (c7 == c3) {
                    i4++;
                    c7 = cArr[i4];
                    i13++;
                    i11++;
                }
                i14 = (i14 * 10) + (c7 - '0');
                i4++;
            }
            long j3 = 0;
            for (int i15 = 3; i15 >= 0; i15--) {
                if (i15 == 0) {
                    j2 = (1000000000 * (this.mag0 & 4294967295L)) + j3;
                    this.mag0 = (int) j2;
                } else if (i15 == 1) {
                    j2 = (1000000000 * (this.mag1 & 4294967295L)) + j3;
                    this.mag1 = (int) j2;
                } else if (i15 == 2) {
                    j2 = (1000000000 * (this.mag2 & 4294967295L)) + j3;
                    this.mag2 = (int) j2;
                } else {
                    if (i15 != 3) {
                        throw new ArithmeticException("BigInteger would overflow supported range");
                    }
                    j2 = (1000000000 * (this.mag3 & 4294967295L)) + j3;
                    this.mag3 = (int) j2;
                }
                j3 = j2 >>> 32;
            }
            long j4 = (this.mag3 & 4294967295L) + (i14 & 4294967295L);
            this.mag3 = (int) j4;
            long j5 = j4 >>> 32;
            for (int i16 = 2; i16 >= 0; i16--) {
                if (i16 == 0) {
                    j = (this.mag0 & 4294967295L) + j5;
                    this.mag0 = (int) j;
                } else if (i16 == 1) {
                    j = (this.mag1 & 4294967295L) + j5;
                    this.mag1 = (int) j;
                } else if (i16 == 2) {
                    j = (this.mag2 & 4294967295L) + j5;
                    this.mag2 = (int) j;
                } else {
                    if (i16 != 3) {
                        throw new ArithmeticException("BigInteger would overflow supported range");
                    }
                    j = (this.mag3 & 4294967295L) + j5;
                    this.mag3 = (int) j;
                }
                j5 = j >>> 32;
            }
            i3 = i13;
            c3 = '.';
        }
    }

    public boolean wasNull() {
        return this.wasNull;
    }

    public static AutoTypeBeforeHandler autoTypeFilter(boolean z, String... strArr) {
        return new ContextAutoTypeBeforeHandler(z, strArr);
    }

    @Deprecated
    /* renamed from: of */
    public static JSONReader m7290of(Context context, byte[] bArr) {
        return new C1739i(context, null, bArr, 0, bArr.length);
    }

    public String info(String str) {
        if (str != null && !str.isEmpty()) {
            return str + ", offset " + this.offset;
        }
        return "offset " + this.offset;
    }

    public final boolean isSupportBeanArray(long j) {
        return ((this.context.features | j) & Feature.SupportArrayToBean.mask) != 0;
    }

    public final boolean isSupportSmartMatch(long j) {
        return ((this.context.features | j) & Feature.SupportSmartMatch.mask) != 0;
    }

    public static AutoTypeBeforeHandler autoTypeFilter(Class... clsArr) {
        return new ContextAutoTypeBeforeHandler(clsArr);
    }

    /* renamed from: of */
    public static JSONReader m7308of(byte[] bArr, Context context) {
        return new C1739i(context, null, bArr, 0, bArr.length);
    }

    @Deprecated
    public static JSONReader ofJSONB(Context context, byte[] bArr) {
        return new C1737g(context, bArr, 0, bArr.length);
    }

    public static AutoTypeBeforeHandler autoTypeFilter(boolean z, Class... clsArr) {
        return new ContextAutoTypeBeforeHandler(z, clsArr);
    }

    /* renamed from: of */
    public static JSONReader m7309of(char[] cArr) {
        return new C1738h(JSONFactory.createReadContext(), null, cArr, 0, cArr.length);
    }

    public static JSONReader ofJSONB(byte[] bArr, Context context) {
        return new C1737g(context, bArr, 0, bArr.length);
    }

    public final void addResolveTask(Map map, Object obj, JSONPath jSONPath) {
        if (this.f12291e == null) {
            this.f12291e = new ArrayList();
        }
        if (map instanceof LinkedHashMap) {
            map.put(obj, null);
        }
        this.f12291e.add(new C1729b(null, map, obj, jSONPath));
    }

    public final void read(List list) {
        if (nextIfArrayStart()) {
            int i = this.level + 1;
            this.level = i;
            if (i < this.context.f12303l) {
                while (!nextIfArrayEnd()) {
                    list.add(ObjectReaderImplObject.INSTANCE.readObject(this, null, null, 0L));
                    nextIfComma();
                }
                this.level--;
                nextIfComma();
                return;
            }
            throw new JSONException("level too large : " + this.level);
        }
        throw new JSONException("illegal input, offset " + this.offset + ", char " + this.f12290ch);
    }

    public final void readObject(Object obj, long j) {
        if (obj != null) {
            Class<?> cls = obj.getClass();
            Context context = this.context;
            ObjectReader objectReader = context.provider.getObjectReader(cls, ((context.features | j) & Feature.FieldBased.mask) != 0);
            if (objectReader instanceof ObjectReaderBean) {
                ((ObjectReaderBean) objectReader).readObject(this, obj, j);
                return;
            } else {
                if (obj instanceof Map) {
                    read((Map) obj, j);
                    return;
                }
                throw new JSONException("read object not support");
            }
        }
        throw new JSONException("object is null");
    }

    public final Number toNumber(List list) {
        if (list.size() != 1) {
            return null;
        }
        Object obj = list.get(0);
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            return TypeUtils.toBigDecimal((String) obj);
        }
        return null;
    }

    public static JSONReader ofJSONB(byte[] bArr, Feature... featureArr) {
        Context createReadContext = JSONFactory.createReadContext();
        createReadContext.config(featureArr);
        return new C1737g(createReadContext, bArr, 0, bArr.length);
    }

    public final String toString(Map map) {
        JSONWriter m7324of = JSONWriter.m7324of();
        m7324of.setRootObject(map);
        m7324of.write(map);
        return m7324of.toString();
    }

    @Deprecated
    /* renamed from: of */
    public static JSONReader m7291of(Context context, char[] cArr) {
        return new C1738h(context, null, cArr, 0, cArr.length);
    }

    /* renamed from: of */
    public static JSONReader m7312of(char[] cArr, Context context) {
        return new C1738h(context, null, cArr, 0, cArr.length);
    }

    /* renamed from: of */
    public static JSONReader m7306of(byte[] bArr, int i, int i2, Charset charset) {
        Context createReadContext = JSONFactory.createReadContext();
        if (charset == StandardCharsets.UTF_8) {
            return new C1739i(createReadContext, null, bArr, i, i2);
        }
        if (charset == StandardCharsets.UTF_16) {
            return new C1738h(createReadContext, bArr, i, i2);
        }
        if (charset != StandardCharsets.US_ASCII && charset != StandardCharsets.ISO_8859_1) {
            return m7299of(new String(bArr, i, i2, charset), createReadContext);
        }
        return new C1736f(createReadContext, null, bArr, i, i2);
    }

    public static JSONReader ofJSONB(byte[] bArr, int i, int i2) {
        return new C1737g(JSONFactory.createReadContext(), bArr, i, i2);
    }

    public final void addResolveTask(Collection collection, int i, JSONPath jSONPath) {
        if (this.f12291e == null) {
            this.f12291e = new ArrayList();
        }
        this.f12291e.add(new C1729b(null, collection, Integer.valueOf(i), jSONPath));
    }

    public static JSONReader ofJSONB(byte[] bArr, int i, int i2, Context context) {
        return new C1737g(context, bArr, i, i2);
    }

    public static JSONReader ofJSONB(byte[] bArr, int i, int i2, SymbolTable symbolTable) {
        return new C1737g(JSONFactory.createReadContext(symbolTable), bArr, i, i2);
    }

    public final void addResolveTask(Object[] objArr, int i, JSONPath jSONPath) {
        if (this.f12291e == null) {
            this.f12291e = new ArrayList();
        }
        this.f12291e.add(new C1729b(null, objArr, Integer.valueOf(i), jSONPath));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x00bc. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:38:0x00bf. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:49:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Object> readObject() {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.JSONReader.readObject():java.util.Map");
    }

    public final void read(Collection collection) {
        if (nextIfArrayStart()) {
            int i = this.level + 1;
            this.level = i;
            if (i < this.context.f12303l) {
                while (!nextIfArrayEnd()) {
                    collection.add(readAny());
                    nextIfComma();
                }
                this.level--;
                nextIfComma();
                return;
            }
            throw new JSONException("level too large : " + this.level);
        }
        throw new JSONException("illegal input, offset " + this.offset + ", char " + this.f12290ch);
    }

    public final Object[] readArray(Type[] typeArr) {
        if (nextIfNull()) {
            return null;
        }
        if (nextIfArrayStart()) {
            Object[] objArr = new Object[typeArr.length];
            int i = 0;
            boolean z = false;
            while (true) {
                if (i >= typeArr.length) {
                    break;
                }
                if (i != 0) {
                    if (!nextIfArrayEnd()) {
                        if (isEnd()) {
                            break;
                        }
                    } else {
                        z = true;
                        break;
                    }
                }
                objArr[i] = read(typeArr[i]);
                if (i == typeArr.length - 1) {
                    z = true;
                }
                i++;
            }
            if (z) {
                return objArr;
            }
            throw new JSONException(info("syntax error"));
        }
        throw new JSONException(info("syntax error"));
    }

    /* renamed from: of */
    public static JSONReader m7307of(byte[] bArr, int i, int i2, Charset charset, Context context) {
        if (charset == StandardCharsets.UTF_8) {
            return new C1739i(context, null, bArr, i, i2);
        }
        if (charset == StandardCharsets.UTF_16) {
            return new C1738h(context, bArr, i, i2);
        }
        if (charset != StandardCharsets.US_ASCII && charset != StandardCharsets.ISO_8859_1) {
            return m7299of(new String(bArr, i, i2, charset), context);
        }
        return new C1736f(context, null, bArr, i, i2);
    }

    /* renamed from: of */
    public static JSONReader m7304of(byte[] bArr, int i, int i2) {
        return new C1739i(JSONFactory.createReadContext(), null, bArr, i, i2);
    }

    /* renamed from: of */
    public static JSONReader m7305of(byte[] bArr, int i, int i2, Context context) {
        return new C1739i(context, null, bArr, i, i2);
    }

    /* renamed from: of */
    public static JSONReader m7310of(char[] cArr, int i, int i2) {
        return new C1738h(JSONFactory.createReadContext(), null, cArr, i, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x00ea. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x00ed. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void read(java.util.Map r18, long r19) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.JSONReader.read(java.util.Map, long):void");
    }

    /* renamed from: of */
    public static JSONReader m7311of(char[] cArr, int i, int i2, Context context) {
        return new C1738h(context, null, cArr, i, i2);
    }

    public final void readArray(List list, Type type) {
        readArray((Collection) list, type);
    }

    /* renamed from: of */
    public static JSONReader m7300of(URL url, Context context) throws IOException {
        InputStream openStream = url.openStream();
        try {
            JSONReader m7293of = m7293of(openStream, StandardCharsets.UTF_8, context);
            if (openStream != null) {
                openStream.close();
            }
            return m7293of;
        } catch (Throwable th) {
            if (openStream != null) {
                try {
                    openStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final void readArray(Collection collection, Type type) {
        boolean z;
        if (!nextIfArrayStart()) {
            if (isString()) {
                String readString = readString();
                if (type != String.class) {
                    Function typeConvert = this.context.provider.getTypeConvert(String.class, type);
                    if (typeConvert != null) {
                        if (readString.indexOf(44) != -1) {
                            for (String str : readString.split(",")) {
                                collection.add(typeConvert.apply(str));
                            }
                        } else {
                            collection.add(typeConvert.apply(readString));
                        }
                    } else {
                        throw new JSONException(info("not support input " + readString));
                    }
                } else {
                    collection.add(readString);
                }
            } else {
                collection.add(read(type));
            }
            z = this.f12290ch == ',';
            this.comma = z;
            if (z) {
                next();
                return;
            }
            return;
        }
        while (!nextIfArrayEnd()) {
            collection.add(read(type));
            char c = this.f12290ch;
            if (c == '}' || c == 26) {
                throw new JSONException(info());
            }
        }
        z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
    }

    /* renamed from: of */
    public static JSONReader m7292of(InputStream inputStream, Charset charset) {
        return m7293of(inputStream, charset, new Context(JSONFactory.defaultObjectReaderProvider));
    }

    /* renamed from: of */
    public static JSONReader m7293of(InputStream inputStream, Charset charset, Context context) {
        if (charset != StandardCharsets.UTF_8 && charset != null) {
            if (charset == StandardCharsets.UTF_16) {
                return new C1738h(context, inputStream);
            }
            if (charset == StandardCharsets.US_ASCII) {
                return new C1736f(context, inputStream);
            }
            throw new JSONException("not support charset " + charset);
        }
        return new C1739i(context, inputStream);
    }

    /* renamed from: of */
    public static JSONReader m7294of(Reader reader) {
        return new C1738h(JSONFactory.createReadContext(), reader);
    }

    /* renamed from: of */
    public static JSONReader m7295of(Reader reader, Context context) {
        return new C1738h(context, reader);
    }

    /* renamed from: of */
    public static JSONReader m7302of(ByteBuffer byteBuffer, Charset charset) {
        return m7301of(byteBuffer, JSONFactory.createReadContext(), charset);
    }

    /* renamed from: of */
    public static JSONReader m7301of(ByteBuffer byteBuffer, Context context, Charset charset) {
        if (charset != StandardCharsets.UTF_8 && charset != null) {
            throw new JSONException("not support charset " + charset);
        }
        return new C1739i(context, byteBuffer);
    }

    @Deprecated
    /* renamed from: of */
    public static JSONReader m7289of(Context context, String str) {
        return m7299of(str, context);
    }

    /* renamed from: of */
    public static JSONReader m7296of(String str) {
        str.getClass();
        return new C1738h(new Context(JSONFactory.defaultObjectReaderProvider), str, 0, str.length());
    }

    /* renamed from: of */
    public static JSONReader m7299of(String str, Context context) {
        if (str != null && context != null) {
            return new C1738h(context, str, 0, str.length());
        }
        throw null;
    }

    /* renamed from: of */
    public static JSONReader m7297of(String str, int i, int i2) {
        str.getClass();
        return new C1738h(JSONFactory.createReadContext(), str, str.toCharArray(), i, i2);
    }

    public List readArray() {
        Object readString;
        List jSONArray;
        List jSONArray2;
        next();
        int i = this.level + 1;
        this.level = i;
        if (i < this.context.f12303l) {
            List<Object> list = null;
            Object obj = null;
            Object obj2 = null;
            int i2 = 0;
            while (true) {
                char c = this.f12290ch;
                if (c != '\"' && c != '\'') {
                    if (c != '+' && c != '-') {
                        if (c == '[') {
                            readString = readArray();
                        } else if (c != ']') {
                            if (c != 'f') {
                                if (c == 'n') {
                                    readNull();
                                    readString = null;
                                } else if (c != 't') {
                                    if (c != '{') {
                                        switch (c) {
                                            case '/':
                                                skipComment();
                                                break;
                                        }
                                    } else {
                                        Context context = this.context;
                                        if (context.f12311t == null && (context.features & Feature.SupportAutoType.mask) == 0) {
                                            if (isReference()) {
                                                readString = JSONPath.m7282of(readReference());
                                            } else {
                                                readString = readObject();
                                            }
                                        } else {
                                            readString = ObjectReaderImplObject.INSTANCE.readObject(this, null, null, 0L);
                                        }
                                    }
                                }
                            }
                            readString = Boolean.valueOf(readBoolValue());
                        } else {
                            next();
                            if (list == null) {
                                Context context2 = this.context;
                                Supplier<List> supplier = context2.f12310s;
                                if (supplier != null) {
                                    jSONArray2 = supplier.get();
                                } else if (context2.isEnabled(Feature.UseNativeObject)) {
                                    jSONArray2 = i2 == 2 ? new ArrayList<>(2) : new ArrayList<>(1);
                                } else {
                                    Supplier<List> supplier2 = this.context.f12310s;
                                    if (supplier2 != null) {
                                        jSONArray2 = supplier2.get();
                                    } else {
                                        jSONArray2 = i2 == 2 ? new JSONArray(2) : new JSONArray(1);
                                    }
                                }
                                list = jSONArray2;
                                if (i2 == 1) {
                                    m7315f(list, 0, obj);
                                } else if (i2 == 2) {
                                    m7315f(list, 0, obj);
                                    m7315f(list, 1, obj2);
                                }
                            }
                            boolean z = this.f12290ch == ',';
                            this.comma = z;
                            if (z) {
                                next();
                            }
                            this.level--;
                            return list;
                        }
                    }
                    readNumber0();
                    readString = getNumber();
                } else {
                    readString = readString();
                }
                if (i2 == 0) {
                    obj = readString;
                } else if (i2 == 1) {
                    obj2 = readString;
                } else if (i2 == 2) {
                    Supplier<List> supplier3 = this.context.f12310s;
                    if (supplier3 != null) {
                        jSONArray = supplier3.get();
                    } else {
                        jSONArray = new JSONArray();
                    }
                    list = jSONArray;
                    m7315f(list, 0, obj);
                    m7315f(list, 1, obj2);
                    m7315f(list, i2, readString);
                } else {
                    m7315f(list, i2, readString);
                }
                i2++;
            }
            throw new JSONException("TODO : " + this.f12290ch);
        }
        throw new JSONException("level too large : " + this.level);
    }

    /* renamed from: of */
    public static JSONReader m7298of(String str, int i, int i2, Context context) {
        if (str != null && context != null) {
            return new C1738h(context, str, str.toCharArray(), i, i2);
        }
        throw null;
    }

    public final void read(Map map, Type type, Type type2, long j) {
        Object readObject;
        Object put;
        if (nextIfObjectStart()) {
            ObjectReader objectReader = this.context.getObjectReader(type);
            ObjectReader objectReader2 = this.context.getObjectReader(type2);
            long j2 = j | this.context.features;
            int i = 0;
            while (true) {
                if (this.f12290ch == '/') {
                    skipComment();
                }
                if (nextIfMatch('}')) {
                    nextIfComma();
                    return;
                }
                if (i != 0 && !this.comma) {
                    throw new JSONException(info());
                }
                if (type == String.class) {
                    readObject = readFieldName();
                } else {
                    readObject = objectReader.readObject(this, null, null, 0L);
                    nextIfMatch(':');
                }
                Object readObject2 = objectReader2.readObject(this, null, null, 0L);
                if ((readObject2 != null || (Feature.IgnoreNullPropertyValue.mask & j2) == 0) && (put = map.put(readObject, readObject2)) != null && (Feature.DuplicateKeyValueAsArray.mask & j2) != 0) {
                    if (put instanceof Collection) {
                        ((Collection) put).add(readObject2);
                        map.put(readObject, put);
                    } else {
                        map.put(readObject, JSONArray.m7266of(put, readObject2));
                    }
                }
                i++;
            }
        } else {
            throw new JSONException("illegal input， offset " + this.offset + ", char " + this.f12290ch);
        }
    }

    public <T> T read(Class<T> cls) {
        Context context = this.context;
        return (T) context.provider.getObjectReader(cls, (context.features & Feature.FieldBased.mask) != 0).readObject(this, null, null, 0L);
    }

    public void read(Map map, ObjectReader objectReader, long j) {
        Object put;
        nextIfObjectStart();
        long j2 = this.context.features | j;
        int i = 0;
        while (true) {
            if (this.f12290ch == '/') {
                skipComment();
            }
            if (nextIfObjectEnd()) {
                nextIfComma();
                return;
            }
            if (i != 0 && !this.comma) {
                throw new JSONException(info());
            }
            String readFieldName = readFieldName();
            Object readObject = objectReader.readObject(this, objectReader.getObjectClass(), readFieldName, j);
            if ((readObject != null || (Feature.IgnoreNullPropertyValue.mask & j2) == 0) && (put = map.put(readFieldName, readObject)) != null && (Feature.DuplicateKeyValueAsArray.mask & j2) != 0) {
                if (put instanceof Collection) {
                    ((Collection) put).add(readObject);
                    map.put(readFieldName, put);
                } else {
                    map.put(readFieldName, JSONArray.m7266of(put, readObject));
                }
            }
            i++;
        }
    }
}
