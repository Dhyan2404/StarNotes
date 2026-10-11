package com.alibaba.fastjson2;

import com.alibaba.fastjson2.filter.AfterFilter;
import com.alibaba.fastjson2.filter.BeforeFilter;
import com.alibaba.fastjson2.filter.ContextNameFilter;
import com.alibaba.fastjson2.filter.ContextValueFilter;
import com.alibaba.fastjson2.filter.Filter;
import com.alibaba.fastjson2.filter.LabelFilter;
import com.alibaba.fastjson2.filter.NameFilter;
import com.alibaba.fastjson2.filter.PropertyFilter;
import com.alibaba.fastjson2.filter.PropertyPreFilter;
import com.alibaba.fastjson2.filter.ValueFilter;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
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
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes3.dex */
public abstract class JSONWriter implements Closeable {

    /* renamed from: e */
    public static final char[] f12320e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    protected final Charset charset;
    public final Context context;
    protected int indent;
    public final boolean jsonb;
    protected String lastReference;
    protected int level;
    protected final int maxArraySize;
    protected int off;
    protected Path path;
    protected boolean pretty;
    protected final char quote;
    protected IdentityHashMap<Object, Path> refs;
    protected Object rootObject;
    protected boolean startObject;
    public final SymbolTable symbolTable;
    public final boolean useSingleQuote;
    public final boolean utf16;
    public final boolean utf8;

    /* loaded from: classes3.dex */
    public static final class Context {

        /* renamed from: a */
        public DateTimeFormatter f12321a;

        /* renamed from: b */
        public String f12322b;

        /* renamed from: c */
        public Locale f12323c;

        /* renamed from: d */
        public TimeZone f12324d;

        /* renamed from: e */
        public boolean f12325e;

        /* renamed from: f */
        public boolean f12326f;

        /* renamed from: g */
        public boolean f12327g;

        /* renamed from: h */
        public boolean f12328h;

        /* renamed from: i */
        public boolean f12329i;

        /* renamed from: j */
        public boolean f12330j;

        /* renamed from: k */
        public long f12331k;

        /* renamed from: l */
        public ZoneId f12332l;

        /* renamed from: m */
        public boolean f12333m;

        /* renamed from: n */
        public PropertyPreFilter f12334n;

        /* renamed from: o */
        public PropertyFilter f12335o;

        /* renamed from: p */
        public NameFilter f12336p;
        public final ObjectWriterProvider provider;

        /* renamed from: q */
        public ValueFilter f12337q;

        /* renamed from: r */
        public BeforeFilter f12338r;

        /* renamed from: s */
        public AfterFilter f12339s;

        /* renamed from: t */
        public LabelFilter f12340t;

        /* renamed from: u */
        public ContextValueFilter f12341u;

        /* renamed from: v */
        public ContextNameFilter f12342v;

        public Context(ObjectWriterProvider objectWriterProvider) {
            if (objectWriterProvider != null) {
                this.f12331k = JSONFactory.f12228d;
                this.provider = objectWriterProvider;
                this.f12332l = JSONFactory.f12230f;
                String str = JSONFactory.f12229e;
                if (str != null) {
                    setDateFormat(str);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("objectWriterProvider must not null");
        }

        public void config(Feature... featureArr) {
            for (Feature feature : featureArr) {
                this.f12331k |= feature.mask;
            }
        }

        public void configFilter(Filter... filterArr) {
            if (filterArr == null) {
                return;
            }
            for (Filter filter : filterArr) {
                if (filter instanceof NameFilter) {
                    NameFilter nameFilter = this.f12336p;
                    if (nameFilter == null) {
                        this.f12336p = (NameFilter) filter;
                    } else {
                        this.f12336p = NameFilter.compose(nameFilter, (NameFilter) filter);
                    }
                }
                if (filter instanceof ValueFilter) {
                    ValueFilter valueFilter = this.f12337q;
                    if (valueFilter == null) {
                        this.f12337q = (ValueFilter) filter;
                    } else {
                        this.f12337q = ValueFilter.compose(valueFilter, (ValueFilter) filter);
                    }
                }
                if (filter instanceof PropertyFilter) {
                    this.f12335o = (PropertyFilter) filter;
                }
                if (filter instanceof PropertyPreFilter) {
                    this.f12334n = (PropertyPreFilter) filter;
                }
                if (filter instanceof BeforeFilter) {
                    this.f12338r = (BeforeFilter) filter;
                }
                if (filter instanceof AfterFilter) {
                    this.f12339s = (AfterFilter) filter;
                }
                if (filter instanceof LabelFilter) {
                    this.f12340t = (LabelFilter) filter;
                }
                if (filter instanceof ContextValueFilter) {
                    this.f12341u = (ContextValueFilter) filter;
                }
                if (filter instanceof ContextNameFilter) {
                    this.f12342v = (ContextNameFilter) filter;
                }
            }
            this.f12333m = (this.f12334n == null && this.f12335o == null && this.f12336p == null && this.f12337q == null && this.f12338r == null && this.f12339s == null && this.f12340t == null && this.f12341u == null && this.f12342v == null) ? false : true;
        }

        public AfterFilter getAfterFilter() {
            return this.f12339s;
        }

        public BeforeFilter getBeforeFilter() {
            return this.f12338r;
        }

        public ContextNameFilter getContextNameFilter() {
            return this.f12342v;
        }

        public ContextValueFilter getContextValueFilter() {
            return this.f12341u;
        }

        public String getDateFormat() {
            return this.f12322b;
        }

        public DateTimeFormatter getDateFormatter() {
            String str;
            if (this.f12321a == null && (str = this.f12322b) != null && !this.f12325e && !this.f12326f && !this.f12327g) {
                Locale locale = this.f12323c;
                this.f12321a = locale == null ? DateTimeFormatter.ofPattern(str) : DateTimeFormatter.ofPattern(str, locale);
            }
            return this.f12321a;
        }

        public long getFeatures() {
            return this.f12331k;
        }

        public LabelFilter getLabelFilter() {
            return this.f12340t;
        }

        public NameFilter getNameFilter() {
            return this.f12336p;
        }

        public <T> ObjectWriter<T> getObjectWriter(Class<T> cls) {
            return this.provider.getObjectWriter(cls, cls, (this.f12331k & Feature.FieldBased.mask) != 0);
        }

        public PropertyFilter getPropertyFilter() {
            return this.f12335o;
        }

        public PropertyPreFilter getPropertyPreFilter() {
            return this.f12334n;
        }

        public ObjectWriterProvider getProvider() {
            return this.provider;
        }

        public ValueFilter getValueFilter() {
            return this.f12337q;
        }

        public ZoneId getZoneId() {
            if (this.f12332l == null) {
                this.f12332l = DateUtils.DEFAULT_ZONE_ID;
            }
            return this.f12332l;
        }

        public boolean isDateFormatHasDay() {
            return this.f12329i;
        }

        public boolean isDateFormatHasHour() {
            return this.f12330j;
        }

        public boolean isDateFormatISO8601() {
            return this.f12326f;
        }

        public boolean isDateFormatMillis() {
            return this.f12325e;
        }

        public boolean isDateFormatUnixTime() {
            return this.f12327g;
        }

        public boolean isEnabled(Feature feature) {
            return (feature.mask & this.f12331k) != 0;
        }

        public boolean isFormatyyyyMMddhhmmss19() {
            return this.f12328h;
        }

        public void setAfterFilter(AfterFilter afterFilter) {
            this.f12339s = afterFilter;
            if (afterFilter != null) {
                this.f12333m = true;
            }
        }

        public void setBeforeFilter(BeforeFilter beforeFilter) {
            this.f12338r = beforeFilter;
            if (beforeFilter != null) {
                this.f12333m = true;
            }
        }

        public void setContextNameFilter(ContextNameFilter contextNameFilter) {
            this.f12342v = contextNameFilter;
            if (contextNameFilter != null) {
                this.f12333m = true;
            }
        }

        public void setContextValueFilter(ContextValueFilter contextValueFilter) {
            this.f12341u = contextValueFilter;
            if (contextValueFilter != null) {
                this.f12333m = true;
            }
        }

        public void setDateFormat(String str) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            if (str == null || !str.equals(this.f12322b)) {
                this.f12321a = null;
            }
            if (str != null && !str.isEmpty()) {
                boolean z5 = false;
                boolean z6 = true;
                char c = 65535;
                switch (str.hashCode()) {
                    case -1074095546:
                        if (str.equals("millis")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -288020395:
                        if (str.equals("unixtime")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1333195168:
                        if (str.equals(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1834843604:
                        if (str.equals("yyyy-MM-ddTHH:mm:ss")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 2095190916:
                        if (str.equals("iso8601")) {
                            c = 4;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        z = false;
                        z2 = false;
                        z3 = false;
                        z4 = false;
                        z5 = true;
                        z6 = z4;
                        break;
                    case 1:
                        z2 = false;
                        z3 = false;
                        z4 = false;
                        z = true;
                        z6 = z4;
                        break;
                    case 2:
                        z = false;
                        z2 = true;
                        z3 = true;
                        z4 = true;
                        z6 = false;
                        break;
                    case 3:
                        str = "yyyy-MM-dd'T'HH:mm:ss";
                        z = false;
                        z4 = false;
                        z2 = true;
                        z3 = true;
                        z6 = z4;
                        break;
                    case 4:
                        z = false;
                        z2 = false;
                        z3 = false;
                        z4 = false;
                        break;
                    default:
                        z2 = str.contains("d");
                        z = false;
                        z4 = false;
                        z3 = str.contains("H");
                        z6 = z4;
                        break;
                }
                this.f12325e = z5;
                this.f12326f = z6;
                this.f12327g = z;
                this.f12329i = z2;
                this.f12330j = z3;
                this.f12328h = z4;
            }
            this.f12322b = str;
        }

        public void setLabelFilter(LabelFilter labelFilter) {
            this.f12340t = labelFilter;
            if (labelFilter != null) {
                this.f12333m = true;
            }
        }

        public void setNameFilter(NameFilter nameFilter) {
            this.f12336p = nameFilter;
            if (nameFilter != null) {
                this.f12333m = true;
            }
        }

        public void setPropertyFilter(PropertyFilter propertyFilter) {
            this.f12335o = propertyFilter;
            if (propertyFilter != null) {
                this.f12333m = true;
            }
        }

        public void setPropertyPreFilter(PropertyPreFilter propertyPreFilter) {
            this.f12334n = propertyPreFilter;
            if (propertyPreFilter != null) {
                this.f12333m = true;
            }
        }

        public void setTimeZone(TimeZone timeZone) {
            this.f12324d = timeZone;
        }

        public void setValueFilter(ValueFilter valueFilter) {
            this.f12337q = valueFilter;
            if (valueFilter != null) {
                this.f12333m = true;
            }
        }

        public void setZoneId(ZoneId zoneId) {
            this.f12332l = zoneId;
        }

        public boolean isEnabled(long j) {
            return (this.f12331k & j) != 0;
        }

        public void config(Feature feature, boolean z) {
            if (z) {
                this.f12331k = feature.mask | this.f12331k;
            } else {
                this.f12331k = (~feature.mask) & this.f12331k;
            }
        }

        public <T> ObjectWriter<T> getObjectWriter(Type type, Class<T> cls) {
            return this.provider.getObjectWriter(type, cls, (this.f12331k & Feature.FieldBased.mask) != 0);
        }

        public Context(Feature... featureArr) {
            this.f12331k = JSONFactory.f12228d;
            this.provider = JSONFactory.defaultObjectWriterProvider;
            this.f12332l = JSONFactory.f12230f;
            String str = JSONFactory.f12229e;
            if (str != null) {
                setDateFormat(str);
            }
            for (Feature feature : featureArr) {
                this.f12331k |= feature.mask;
            }
        }

        public Context(String str, Feature... featureArr) {
            this.f12331k = JSONFactory.f12228d;
            this.provider = JSONFactory.defaultObjectWriterProvider;
            this.f12332l = JSONFactory.f12230f;
            for (Feature feature : featureArr) {
                this.f12331k |= feature.mask;
            }
            str = str == null ? JSONFactory.f12229e : str;
            if (str != null) {
                setDateFormat(str);
            }
        }

        public Context(ObjectWriterProvider objectWriterProvider, String str, Filter filter, Feature... featureArr) {
            this.f12331k = JSONFactory.f12228d;
            this.provider = objectWriterProvider;
            this.f12332l = JSONFactory.f12230f;
            for (Feature feature : featureArr) {
                this.f12331k |= feature.mask;
            }
            configFilter(filter);
            str = str == null ? JSONFactory.f12229e : str;
            if (str != null) {
                setDateFormat(str);
            }
        }

        public Context(ObjectWriterProvider objectWriterProvider, Feature... featureArr) {
            if (objectWriterProvider != null) {
                this.f12331k = JSONFactory.f12228d;
                this.provider = objectWriterProvider;
                this.f12332l = JSONFactory.f12230f;
                for (Feature feature : featureArr) {
                    this.f12331k |= feature.mask;
                }
                String str = JSONFactory.f12229e;
                if (str != null) {
                    setDateFormat(str);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("objectWriterProvider must not null");
        }
    }

    /* loaded from: classes3.dex */
    public enum Feature {
        FieldBased(1),
        IgnoreNoneSerializable(2),
        ErrorOnNoneSerializable(4),
        BeanToArray(8),
        WriteNulls(16),
        WriteMapNullValue(16),
        BrowserCompatible(32),
        NullAsDefaultValue(64),
        WriteBooleanAsNumber(128),
        WriteNonStringValueAsString(256),
        WriteClassName(512),
        NotWriteRootClassName(1024),
        NotWriteHashMapArrayListClassName(2048),
        NotWriteDefaultValue(4096),
        WriteEnumsUsingName(8192),
        WriteEnumUsingToString(16384),
        IgnoreErrorGetter(32768),
        PrettyFormat(65536),
        ReferenceDetection(131072),
        WriteNameAsSymbol(262144),
        WriteBigDecimalAsPlain(524288),
        UseSingleQuotes(1048576),
        MapSortField(2097152),
        WriteNullListAsEmpty(4194304),
        WriteNullStringAsEmpty(8388608),
        WriteNullNumberAsZero(16777216),
        WriteNullBooleanAsFalse(SVG.f15804L),
        NotWriteEmptyArray(SVG.f15805M),
        WriteNonStringKeyAsString(SVG.f15806N),
        WritePairAsJavaBean(SVG.f15807O),
        OptimizedForAscii(SVG.f15808P),
        EscapeNoneAscii(1073741824),
        WriteByteArrayAsBase64(SVG.f15810R),
        IgnoreNonFieldGetter(4294967296L),
        LargeObject(8589934592L),
        WriteLongAsString(SVG.f15813U),
        BrowserSecure(SVG.f15814V),
        WriteEnumUsingOrdinal(SVG.f15815W),
        WriteThrowableClassName(SVG.f15816X),
        UnquoteFieldName(274877906944L),
        NotWriteSetClassName(549755813888L),
        NotWriteNumberClassName(1099511627776L),
        SortMapEntriesByKeys(2199023255552L);

        public final long mask;

        Feature(long j) {
            this.mask = j;
        }
    }

    public JSONWriter(Context context, SymbolTable symbolTable, boolean z, Charset charset) {
        this.context = context;
        this.symbolTable = symbolTable;
        this.charset = charset;
        this.jsonb = z;
        this.utf8 = !z && charset == StandardCharsets.UTF_8;
        this.utf16 = !z && charset == StandardCharsets.UTF_16;
        boolean z2 = (z || (context.f12331k & Feature.UseSingleQuotes.mask) == 0) ? false : true;
        this.useSingleQuote = z2;
        this.quote = z2 ? Chars.QUOTE : '\"';
        long j = context.f12331k;
        this.maxArraySize = (Feature.LargeObject.mask & j) != 0 ? 1073741824 : 67108864;
        this.pretty = (j & Feature.PrettyFormat.mask) != 0;
    }

    /* renamed from: f */
    public static boolean m7323f(GenericArrayType genericArrayType, Class cls) {
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (genericComponentType instanceof ParameterizedType) {
            genericComponentType = ((ParameterizedType) genericComponentType).getRawType();
        }
        if (cls.isArray()) {
            return cls.getComponentType().equals(genericComponentType);
        }
        return false;
    }

    /* renamed from: of */
    public static JSONWriter m7324of() {
        Context context = new Context(JSONFactory.defaultObjectWriterProvider);
        if ((JSONFactory.f12228d & Feature.OptimizedForAscii.mask) != 0) {
            return new C1742l(context);
        }
        return new C1741k(context);
    }

    public static JSONWriter ofJSONB() {
        return new C1740j(new Context(JSONFactory.defaultObjectWriterProvider), null);
    }

    public static JSONWriter ofPretty() {
        return m7327of(Feature.PrettyFormat);
    }

    public static JSONWriter ofUTF16(Feature... featureArr) {
        return new C1741k(JSONFactory.createWriteContext(featureArr));
    }

    public static JSONWriter ofUTF8() {
        return new C1742l(JSONFactory.createWriteContext());
    }

    public final void checkAndWriteTypeName(Object obj, Class cls) {
        Class<?> cls2;
        long j = this.context.f12331k;
        if ((Feature.WriteClassName.mask & j) == 0 || obj == null || (cls2 = obj.getClass()) == cls) {
            return;
        }
        if ((Feature.NotWriteHashMapArrayListClassName.mask & j) == 0 || !(cls2 == HashMap.class || cls2 == ArrayList.class)) {
            if ((j & Feature.NotWriteRootClassName.mask) == 0 || obj != this.rootObject) {
                writeTypeName(TypeUtils.getTypeName((Class) cls2));
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public final void config(Feature... featureArr) {
        this.context.config(featureArr);
    }

    public final boolean containsReference(Object obj) {
        IdentityHashMap<Object, Path> identityHashMap = this.refs;
        return identityHashMap != null && identityHashMap.containsKey(obj);
    }

    public abstract void endArray();

    public abstract void endObject();

    public abstract int flushTo(OutputStream outputStream) throws IOException;

    public abstract int flushTo(OutputStream outputStream, Charset charset) throws IOException;

    public void flushTo(Writer writer) {
        try {
            writer.write(toString());
            this.off = 0;
        } catch (IOException e) {
            throw new JSONException("flushTo error", e);
        }
    }

    public abstract byte[] getBytes();

    public abstract byte[] getBytes(Charset charset);

    public final Charset getCharset() {
        return this.charset;
    }

    public final Context getContext() {
        return this.context;
    }

    public final long getFeatures() {
        return this.context.f12331k;
    }

    public final ObjectWriter getObjectWriter(Class cls) {
        Context context = this.context;
        return context.provider.getObjectWriter(cls, cls, (context.f12331k & Feature.FieldBased.mask) != 0);
    }

    public final SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public final boolean hasFilter() {
        return this.context.f12333m;
    }

    public final boolean isBeanToArray() {
        return (this.context.f12331k & Feature.BeanToArray.mask) != 0;
    }

    public final boolean isEnabled(Feature feature) {
        return (feature.mask & this.context.f12331k) != 0;
    }

    public final boolean isIgnoreErrorGetter() {
        return (this.context.f12331k & Feature.IgnoreErrorGetter.mask) != 0;
    }

    public final boolean isIgnoreNoneSerializable() {
        return (this.context.f12331k & Feature.IgnoreNoneSerializable.mask) != 0;
    }

    public final boolean isRefDetect() {
        return (this.context.f12331k & Feature.ReferenceDetection.mask) != 0;
    }

    public final boolean isUTF16() {
        return this.utf16;
    }

    public final boolean isUTF8() {
        return this.utf8;
    }

    public final boolean isUseSingleQuotes() {
        return this.useSingleQuote;
    }

    public final boolean isWriteMapTypeInfo(Object obj, Class cls, long j) {
        Class<?> cls2;
        if (obj == null || (cls2 = obj.getClass()) == cls) {
            return false;
        }
        long j2 = j | this.context.f12331k;
        if ((Feature.WriteClassName.mask & j2) == 0) {
            return false;
        }
        if ((Feature.NotWriteHashMapArrayListClassName.mask & j2) == 0 || cls2 != HashMap.class) {
            return (j2 & Feature.NotWriteRootClassName.mask) == 0 || obj != this.rootObject;
        }
        return false;
    }

    public final boolean isWriteNulls() {
        return (this.context.f12331k & Feature.WriteNulls.mask) != 0;
    }

    public final boolean isWriteTypeInfo(Object obj, Class cls) {
        Class<?> cls2;
        long j = this.context.f12331k;
        if ((Feature.WriteClassName.mask & j) == 0 || obj == null || (cls2 = obj.getClass()) == cls) {
            return false;
        }
        if ((Feature.NotWriteHashMapArrayListClassName.mask & j) == 0 || !(cls2 == HashMap.class || cls2 == ArrayList.class)) {
            return (j & Feature.NotWriteRootClassName.mask) == 0 || obj != this.rootObject;
        }
        return false;
    }

    public final int level() {
        return this.level;
    }

    public final void popPath(Object obj) {
        Path path = this.path;
        if (path == null || (this.context.f12331k & Feature.ReferenceDetection.mask) == 0 || obj == Collections.EMPTY_LIST || obj == Collections.EMPTY_SET) {
            return;
        }
        this.path = path.parent;
    }

    public final boolean removeReference(Object obj) {
        IdentityHashMap<Object, Path> identityHashMap = this.refs;
        return (identityHashMap == null || identityHashMap.remove(obj) == null) ? false : true;
    }

    public final String setPath(String str, Object obj) {
        Path path;
        Path path2;
        if (!isRefDetect(obj)) {
            return null;
        }
        this.path = new Path(this.path, str);
        if (obj == this.rootObject) {
            path2 = Path.ROOT;
        } else {
            IdentityHashMap<Object, Path> identityHashMap = this.refs;
            if (identityHashMap == null || (path = identityHashMap.get(obj)) == null) {
                if (this.refs == null) {
                    this.refs = new IdentityHashMap<>(8);
                }
                this.refs.put(obj, this.path);
                return null;
            }
            path2 = path;
        }
        return path2.toString();
    }

    public final void setRootObject(Object obj) {
        this.rootObject = obj;
        this.path = Path.ROOT;
    }

    public abstract int size();

    public abstract void startArray();

    public void startArray(int i) {
        throw new JSONException("UnsupportedOperation");
    }

    public abstract void startObject();

    public void write(List list) {
        if (list == null) {
            writeArrayNull();
            return;
        }
        long j = Feature.ReferenceDetection.mask | Feature.PrettyFormat.mask | Feature.NotWriteEmptyArray.mask | Feature.NotWriteDefaultValue.mask;
        Context context = this.context;
        if ((j & context.f12331k) != 0) {
            context.getObjectWriter(list.getClass()).write(this, list, null, null, 0L);
            return;
        }
        write0('[');
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (i != 0) {
                write0(',');
            }
            writeAny(obj);
        }
        write0(']');
    }

    public abstract void write0(char c);

    public void writeAny(Object obj) {
        if (obj == null) {
            writeNull();
        } else {
            Class<?> cls = obj.getClass();
            this.context.getObjectWriter(cls, cls).write(this, obj, null, null, 0L);
        }
    }

    public void writeArrayNull() {
        writeRaw((this.context.f12331k & (Feature.NullAsDefaultValue.mask | Feature.WriteNullListAsEmpty.mask)) != 0 ? "[]" : "null");
    }

    public final void writeAs(Object obj, Class cls) {
        if (obj == null) {
            writeNull();
        } else {
            this.context.getObjectWriter(cls).write(this, obj, null, null, 0L);
        }
    }

    public abstract void writeBase64(byte[] bArr);

    public final void writeBigInt(BigInteger bigInteger) {
        writeBigInt(bigInteger, 0L);
    }

    public abstract void writeBigInt(BigInteger bigInteger, long j);

    public void writeBinary(byte[] bArr) {
        if (bArr == null) {
            writeArrayNull();
            return;
        }
        if ((this.context.f12331k & Feature.WriteByteArrayAsBase64.mask) != 0) {
            writeBase64(bArr);
            return;
        }
        startArray();
        for (int i = 0; i < bArr.length; i++) {
            if (i != 0) {
                writeComma();
            }
            writeInt32(bArr[i]);
        }
        endArray();
    }

    public void writeBool(boolean z) {
        if ((this.context.f12331k & Feature.WriteBooleanAsNumber.mask) != 0) {
            write0(z ? '1' : '0');
        } else {
            writeRaw(z ? "true" : "false");
        }
    }

    public final void writeBooleanNull() {
        if ((this.context.f12331k & (Feature.NullAsDefaultValue.mask | Feature.WriteNullBooleanAsFalse.mask)) != 0) {
            writeBool(false);
        } else {
            writeNull();
        }
    }

    public abstract void writeChar(char c);

    public abstract void writeColon();

    public abstract void writeComma();

    public abstract void writeDateTime14(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract void writeDateTime19(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract void writeDateTimeISO8601(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z);

    public abstract void writeDateYYYMMDD10(int i, int i2, int i3);

    public abstract void writeDateYYYMMDD8(int i, int i2, int i3);

    public final void writeDecimal(BigDecimal bigDecimal) {
        writeDecimal(bigDecimal, 0L, null);
    }

    public abstract void writeDecimal(BigDecimal bigDecimal, long j, DecimalFormat decimalFormat);

    public abstract void writeDouble(double d);

    public final void writeDouble(double d, DecimalFormat decimalFormat) {
        if (decimalFormat != null && !this.jsonb) {
            if (!Double.isNaN(d) && !Double.isInfinite(d)) {
                writeRaw(decimalFormat.format(d));
                return;
            } else {
                writeNull();
                return;
            }
        }
        writeDouble(d);
    }

    public abstract void writeDouble(double[] dArr);

    public void writeDoubleArray(double d, double d2) {
        startArray();
        writeDouble(d);
        writeComma();
        writeDouble(d2);
        endArray();
    }

    public void writeEnum(Enum r7) {
        if (r7 == null) {
            writeNull();
            return;
        }
        long j = this.context.f12331k;
        if ((Feature.WriteEnumUsingToString.mask & j) != 0) {
            writeString(r7.toString());
        } else if ((j & Feature.WriteEnumsUsingName.mask) != 0) {
            writeString(r7.name());
        } else {
            writeInt32(r7.ordinal());
        }
    }

    public abstract void writeFloat(float f);

    public final void writeFloat(float f, DecimalFormat decimalFormat) {
        if (decimalFormat != null && !this.jsonb) {
            if (!Float.isNaN(f) && !Float.isInfinite(f)) {
                writeRaw(decimalFormat.format(f));
                return;
            } else {
                writeNull();
                return;
            }
        }
        writeFloat(f);
    }

    public abstract void writeHex(byte[] bArr);

    public void writeInstant(Instant instant) {
        if (instant == null) {
            writeNull();
        } else {
            writeString(DateTimeFormatter.ISO_INSTANT.format(instant));
        }
    }

    public abstract void writeInt16(short s);

    public void writeInt16(short[] sArr) {
        if (sArr == null) {
            writeArrayNull();
            return;
        }
        startArray();
        for (int i = 0; i < sArr.length; i++) {
            if (i != 0) {
                writeComma();
            }
            writeInt16(sArr[i]);
        }
        endArray();
    }

    public abstract void writeInt32(int i);

    public void writeInt32(Integer num) {
        if (num == null) {
            writeNull();
        } else {
            writeInt32(num.intValue());
        }
    }

    public abstract void writeInt32(int[] iArr);

    public abstract void writeInt64(long j);

    public void writeInt64(Long l) {
        if (l == null) {
            writeInt64Null();
        } else {
            writeInt64(l.longValue());
        }
    }

    public abstract void writeInt64(long[] jArr);

    public final void writeInt64Null() {
        if ((this.context.f12331k & (Feature.NullAsDefaultValue.mask | Feature.WriteNullNumberAsZero.mask)) != 0) {
            writeInt64(0L);
        } else {
            writeNull();
        }
    }

    public abstract void writeInt8(byte b);

    public abstract void writeLocalDate(LocalDate localDate);

    public abstract void writeLocalDateTime(LocalDateTime localDateTime);

    public final boolean writeLocalDateWithFormat(LocalDate localDate, Context context) {
        if (context.f12327g || context.f12325e) {
            long epochMilli = LocalDateTime.of(localDate, LocalTime.MIN).atZone(context.getZoneId()).toInstant().toEpochMilli();
            if (!context.f12325e) {
                epochMilli /= 1000;
            }
            writeInt64(epochMilli);
            return true;
        }
        DateTimeFormatter dateFormatter = context.getDateFormatter();
        if (dateFormatter == null) {
            return false;
        }
        writeString(context.isDateFormatHasHour() ? dateFormatter.format(LocalDateTime.of(localDate, LocalTime.MIN)) : dateFormatter.format(localDate));
        return true;
    }

    public abstract void writeLocalTime(LocalTime localTime);

    public void writeMillis(long j) {
        writeInt64(j);
    }

    public void writeName(String str) {
        boolean z = false;
        if (this.startObject) {
            this.startObject = false;
        } else {
            writeComma();
        }
        boolean z2 = (this.context.f12331k & Feature.UnquoteFieldName.mask) != 0;
        if (!z2 || (str.indexOf(this.quote) < 0 && str.indexOf(92) < 0)) {
            z = z2;
        }
        if (z) {
            writeRaw(str);
        } else {
            writeString(str);
        }
    }

    public void writeNameAny(Object obj) {
        if (this.startObject) {
            this.startObject = false;
        } else {
            writeComma();
        }
        writeAny(obj);
    }

    public abstract void writeNameRaw(byte[] bArr);

    public void writeNameRaw(byte[] bArr, int i, int i2) {
        throw new JSONException("UnsupportedOperation");
    }

    public abstract void writeNameRaw(char[] cArr);

    public abstract void writeNameRaw(char[] cArr, int i, int i2);

    public final void writeNameValue(String str, Object obj) {
        writeName(str);
        writeAny(obj);
    }

    public void writeNull() {
        writeRaw("null");
    }

    public final void writeNumberNull() {
        if ((this.context.f12331k & (Feature.NullAsDefaultValue.mask | Feature.WriteNullNumberAsZero.mask)) != 0) {
            writeInt32(0);
        } else {
            writeNull();
        }
    }

    public abstract void writeOffsetDateTime(OffsetDateTime offsetDateTime);

    public abstract void writeOffsetTime(OffsetTime offsetTime);

    public void writeRaw(byte b) {
        throw new JSONException("UnsupportedOperation");
    }

    public abstract void writeRaw(char c);

    public abstract void writeRaw(String str);

    public abstract void writeRaw(byte[] bArr);

    public abstract void writeReference(String str);

    public final void writeString(Reader reader) {
        writeRaw(this.quote);
        try {
            char[] cArr = new char[2048];
            while (true) {
                int read = reader.read(cArr, 0, 2048);
                if (read < 0) {
                    writeRaw(this.quote);
                    return;
                } else if (read > 0) {
                    writeString(cArr, 0, read, false);
                }
            }
        } catch (Exception e) {
            throw new JSONException("read string from reader error", e);
        }
    }

    public abstract void writeString(String str);

    public abstract void writeString(char[] cArr);

    public abstract void writeString(char[] cArr, int i, int i2);

    public abstract void writeString(char[] cArr, int i, int i2, boolean z);

    public abstract void writeString(String[] strArr);

    public abstract void writeStringLatin1(byte[] bArr);

    public void writeStringNull() {
        long j = this.context.f12331k;
        writeRaw(((Feature.NullAsDefaultValue.mask | Feature.WriteNullStringAsEmpty.mask) & j) != 0 ? (j & Feature.UseSingleQuotes.mask) != 0 ? "''" : "\"\"" : "null");
    }

    public abstract void writeStringUTF16(byte[] bArr);

    public void writeSymbol(int i) {
        throw new JSONException("UnsupportedOperation");
    }

    public abstract void writeTimeHHMMSS8(int i, int i2, int i3);

    public void writeTypeName(String str) {
        throw new JSONException("UnsupportedOperation");
    }

    public abstract void writeUUID(UUID uuid);

    public abstract void writeZonedDateTime(ZonedDateTime zonedDateTime);

    public static JSONWriter ofJSONB(Context context) {
        return new C1740j(context, null);
    }

    public static JSONWriter ofPretty(JSONWriter jSONWriter) {
        if (!jSONWriter.pretty) {
            jSONWriter.pretty = true;
            jSONWriter.context.f12331k |= Feature.PrettyFormat.mask;
        }
        return jSONWriter;
    }

    public final void config(Feature feature, boolean z) {
        this.context.config(feature, z);
    }

    public final long getFeatures(long j) {
        return this.context.f12331k | j;
    }

    public final boolean hasFilter(long j) {
        Context context = this.context;
        return context.f12333m || (context.f12331k & j) != 0;
    }

    public final boolean isEnabled(long j) {
        return (this.context.f12331k & j) != 0;
    }

    public final boolean isIgnoreNoneSerializable(Object obj) {
        return ((this.context.f12331k & Feature.IgnoreNoneSerializable.mask) == 0 || obj == null || Serializable.class.isAssignableFrom(obj.getClass())) ? false : true;
    }

    public final boolean isRefDetect(Object obj) {
        return ((this.context.f12331k & Feature.ReferenceDetection.mask) == 0 || obj == null || ObjectWriterProvider.isNotReferenceDetect(obj.getClass())) ? false : true;
    }

    public void startArray(Object obj, int i) {
        throw new JSONException("UnsupportedOperation");
    }

    public final void writeDecimal(BigDecimal bigDecimal, long j) {
        writeDecimal(bigDecimal, j, null);
    }

    public void writeNameRaw(byte[] bArr, long j) {
        throw new JSONException("UnsupportedOperation");
    }

    public final void writeRaw(char[] cArr) {
        writeRaw(cArr, 0, cArr.length);
    }

    public void writeSymbol(String str) {
        writeString(str);
    }

    public boolean writeTypeName(byte[] bArr, long j) {
        throw new JSONException("UnsupportedOperation");
    }

    public static JSONWriter ofJSONB(Context context, SymbolTable symbolTable) {
        return new C1740j(context, symbolTable);
    }

    public static JSONWriter ofUTF8(Context context) {
        return new C1742l(context);
    }

    public final ObjectWriter getObjectWriter(Type type, Class cls) {
        Context context = this.context;
        return context.provider.getObjectWriter(type, cls, (context.f12331k & Feature.FieldBased.mask) != 0);
    }

    public final boolean hasFilter(boolean z) {
        Context context = this.context;
        return context.f12333m || (z && (context.f12331k & Feature.IgnoreNonFieldGetter.mask) != 0);
    }

    public final void writeInt32(int i, String str) {
        if (str != null && !this.jsonb) {
            writeString(String.format(str, Integer.valueOf(i)));
        } else {
            writeInt32(i);
        }
    }

    public void writeRaw(char[] cArr, int i, int i2) {
        throw new JSONException("UnsupportedOperation");
    }

    /* loaded from: classes3.dex */
    public static final class Path {
        public static final Path ROOT = new Path((Path) null, "$");

        /* renamed from: a */
        public final String f12343a;

        /* renamed from: b */
        public final int f12344b;

        /* renamed from: c */
        public String f12345c;

        /* renamed from: d */
        public Path f12346d;

        /* renamed from: e */
        public Path f12347e;
        public final Path parent;

        public Path(Path path, String str) {
            this.parent = path;
            this.f12343a = str;
            this.f12344b = -1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Path.class != obj.getClass()) {
                return false;
            }
            Path path = (Path) obj;
            if (this.f12344b == path.f12344b && this.parent == path.parent) {
                return true;
            }
            Path path2 = this.parent;
            if (path2 != null && path2.equals(path.parent) && this.f12343a == path.f12343a) {
                return true;
            }
            String str = this.f12343a;
            return str != null && str.equals(path.f12343a);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.parent, this.f12343a, Integer.valueOf(this.f12344b)});
        }

        public String toString() {
            int i;
            int i2;
            String str = this.f12345c;
            if (str != null) {
                return str;
            }
            byte[] bArr = new byte[16];
            Path[] pathArr = new Path[4];
            int i3 = 0;
            for (Path path = this; path != null; path = path.parent) {
                if (pathArr.length == i3) {
                    pathArr = (Path[]) Arrays.copyOf(pathArr, pathArr.length + 4);
                }
                pathArr[i3] = path;
                i3++;
            }
            int i4 = i3 - 1;
            boolean z = true;
            int i5 = 0;
            for (int i6 = i4; i6 >= 0; i6--) {
                Path path2 = pathArr[i6];
                String str2 = path2.f12343a;
                if (str2 == null) {
                    int i7 = path2.f12344b;
                    int stringSize = IOUtils.stringSize(i7);
                    while (i5 + stringSize + 2 >= bArr.length) {
                        bArr = Arrays.copyOf(bArr, bArr.length + (bArr.length >> 1));
                    }
                    bArr[i5] = UTF8JsonGenerator.f21287g;
                    int writeInt32 = IOUtils.writeInt32(bArr, i5 + 1, i7);
                    bArr[writeInt32] = UTF8JsonGenerator.f21288h;
                    i5 = writeInt32 + 1;
                } else {
                    int i8 = i5 + 1;
                    if (i8 >= bArr.length) {
                        bArr = Arrays.copyOf(bArr, bArr.length + (bArr.length >> 1));
                    }
                    if (i6 != i4) {
                        bArr[i5] = Cea608Decoder.f26822e0;
                        i5 = i8;
                    }
                    int i9 = 0;
                    while (i9 < str2.length()) {
                        char charAt = str2.charAt(i9);
                        if (charAt != '`' && charAt != '~') {
                            switch (charAt) {
                                case '!':
                                case '\"':
                                case '#':
                                    break;
                                default:
                                    switch (charAt) {
                                        case '%':
                                        case '&':
                                        case '\'':
                                        case '(':
                                        case ')':
                                        case '*':
                                        case '+':
                                            break;
                                        default:
                                            switch (charAt) {
                                                case '-':
                                                case '.':
                                                case '/':
                                                    break;
                                                default:
                                                    switch (charAt) {
                                                        case ':':
                                                        case ';':
                                                        case '<':
                                                        case '=':
                                                        case '>':
                                                        case '?':
                                                        case '@':
                                                            break;
                                                        default:
                                                            switch (charAt) {
                                                                case '[':
                                                                case '\\':
                                                                case ']':
                                                                case '^':
                                                                    break;
                                                                default:
                                                                    if (charAt >= 1 && charAt <= 127) {
                                                                        if (i5 == bArr.length) {
                                                                            bArr = Arrays.copyOf(bArr, bArr.length + (bArr.length >> 1));
                                                                        }
                                                                        bArr[i5] = (byte) charAt;
                                                                        i5++;
                                                                        break;
                                                                    } else {
                                                                        if (charAt < 55296 || charAt >= 57344) {
                                                                            if (charAt <= 2047) {
                                                                                int i10 = i5 + 1;
                                                                                if (i10 >= bArr.length) {
                                                                                    bArr = Arrays.copyOf(bArr, bArr.length + (bArr.length >> 1));
                                                                                }
                                                                                bArr[i5] = (byte) (((charAt >> 6) & 31) | 192);
                                                                                i5 = i10 + 1;
                                                                                bArr[i10] = (byte) ((charAt & '?') | 128);
                                                                                z = false;
                                                                                break;
                                                                            } else {
                                                                                if (i5 + 2 >= bArr.length) {
                                                                                    bArr = Arrays.copyOf(bArr, bArr.length + (bArr.length >> 1));
                                                                                }
                                                                                int i11 = i5 + 1;
                                                                                bArr[i5] = (byte) (((charAt >> '\f') & 15) | 224);
                                                                                int i12 = i11 + 1;
                                                                                bArr[i11] = (byte) ((63 & (charAt >> 6)) | 128);
                                                                                i = i12 + 1;
                                                                                bArr[i12] = (byte) ((charAt & '?') | 128);
                                                                            }
                                                                        } else if (charAt < 56320) {
                                                                            if (str2.length() - i6 < 2) {
                                                                                i2 = -1;
                                                                            } else {
                                                                                char charAt2 = str2.charAt(i6 + 1);
                                                                                if (charAt2 < 56320 || charAt2 >= 57344) {
                                                                                    i = i5 + 1;
                                                                                    bArr[i5] = 63;
                                                                                } else {
                                                                                    i2 = ((charAt << '\n') + charAt2) - 56613888;
                                                                                }
                                                                            }
                                                                            if (i2 < 0) {
                                                                                if (i5 == bArr.length) {
                                                                                    bArr = Arrays.copyOf(bArr, bArr.length + (bArr.length >> 1));
                                                                                }
                                                                                i = i5 + 1;
                                                                                bArr[i5] = 63;
                                                                            } else {
                                                                                if (i5 + 3 >= bArr.length) {
                                                                                    bArr = Arrays.copyOf(bArr, bArr.length + (bArr.length >> 1));
                                                                                }
                                                                                int i13 = i5 + 1;
                                                                                bArr[i5] = (byte) ((i2 >> 18) | 240);
                                                                                int i14 = i13 + 1;
                                                                                bArr[i13] = (byte) (((i2 >> 12) & 63) | 128);
                                                                                int i15 = i14 + 1;
                                                                                bArr[i14] = (byte) ((63 & (i2 >> 6)) | 128);
                                                                                bArr[i15] = (byte) ((i2 & 63) | 128);
                                                                                i9++;
                                                                                i = i15 + 1;
                                                                            }
                                                                        } else {
                                                                            i = i5 + 1;
                                                                            bArr[i5] = 63;
                                                                        }
                                                                        i5 = i;
                                                                        z = false;
                                                                    }
                                                                    break;
                                                            }
                                                    }
                                            }
                                    }
                            }
                        }
                        int i16 = i5 + 1;
                        if (i16 >= bArr.length) {
                            bArr = Arrays.copyOf(bArr, bArr.length + (bArr.length >> 1));
                        }
                        bArr[i5] = UTF8JsonGenerator.f21291k;
                        i5 = i16 + 1;
                        bArr[i16] = (byte) charAt;
                        i9++;
                    }
                }
            }
            String str3 = new String(bArr, 0, i5, z ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8);
            this.f12345c = str3;
            return str3;
        }

        public Path(Path path, int i) {
            this.parent = path;
            this.f12343a = null;
            this.f12344b = i;
        }
    }

    public static JSONWriter ofJSONB(Feature... featureArr) {
        return new C1740j(new Context(JSONFactory.defaultObjectWriterProvider, featureArr), null);
    }

    public static JSONWriter ofUTF8(Feature... featureArr) {
        return new C1742l(JSONFactory.createWriteContext(featureArr));
    }

    public void writeBool(boolean[] zArr) {
        if (zArr == null) {
            writeArrayNull();
            return;
        }
        startArray();
        for (int i = 0; i < zArr.length; i++) {
            if (i != 0) {
                writeComma();
            }
            writeBool(zArr[i]);
        }
        endArray();
    }

    public void writeInstant(long j, int i) {
        writeInstant(Instant.ofEpochSecond(j, i));
    }

    public void writeRaw(char c, char c2) {
        writeRaw(c);
        writeRaw(c2);
    }

    /* renamed from: of */
    public static JSONWriter m7326of(ObjectWriterProvider objectWriterProvider, Feature... featureArr) {
        Context context = new Context(objectWriterProvider);
        context.config(featureArr);
        return m7325of(context);
    }

    public static JSONWriter ofJSONB(SymbolTable symbolTable) {
        return new C1740j(new Context(JSONFactory.defaultObjectWriterProvider), symbolTable);
    }

    public void writeString(List<String> list) {
        startArray();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                writeComma();
            }
            writeString(list.get(i));
        }
        endArray();
    }

    public final boolean isWriteTypeInfo(Object obj, Type type) {
        Class<?> cls;
        long j = this.context.f12331k;
        if ((Feature.WriteClassName.mask & j) == 0 || obj == null) {
            return false;
        }
        Class<?> cls2 = obj.getClass();
        if (type instanceof Class) {
            cls = (Class) type;
        } else {
            if (type instanceof GenericArrayType) {
                if (m7323f((GenericArrayType) type, cls2)) {
                    return false;
                }
            } else if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                if (rawType instanceof Class) {
                    cls = (Class) rawType;
                }
            }
            cls = null;
        }
        if (cls2 == cls) {
            return false;
        }
        if ((Feature.NotWriteHashMapArrayListClassName.mask & j) == 0 || !(cls2 == HashMap.class || cls2 == ArrayList.class)) {
            return (j & Feature.NotWriteRootClassName.mask) == 0 || obj != this.rootObject;
        }
        return false;
    }

    public final void writeDouble(double[] dArr, DecimalFormat decimalFormat) {
        if (decimalFormat == null || this.jsonb) {
            writeDouble(dArr);
            return;
        }
        if (dArr == null) {
            writeNull();
            return;
        }
        startArray();
        for (int i = 0; i < dArr.length; i++) {
            if (i != 0) {
                writeComma();
            }
            writeRaw(decimalFormat.format(dArr[i]));
        }
        endArray();
    }

    public void writeFloat(float[] fArr) {
        if (fArr == null) {
            writeNull();
            return;
        }
        startArray();
        for (int i = 0; i < fArr.length; i++) {
            if (i != 0) {
                writeComma();
            }
            writeFloat(fArr[i]);
        }
        endArray();
    }

    /* renamed from: of */
    public static JSONWriter m7325of(Context context) {
        if (context == null) {
            context = JSONFactory.createWriteContext();
        }
        if ((context.f12331k & Feature.OptimizedForAscii.mask) != 0) {
            return new C1742l(context);
        }
        return new C1741k(context);
    }

    public final void writeName(long j) {
        if (this.startObject) {
            this.startObject = false;
        } else {
            writeComma();
        }
        writeInt64(j);
    }

    public final String setPath(FieldWriter fieldWriter, Object obj) {
        Path path;
        IdentityHashMap<Object, Path> identityHashMap;
        if (!isRefDetect(obj)) {
            return null;
        }
        Path path2 = this.path;
        Path path3 = Path.ROOT;
        if (path2 == path3) {
            path = fieldWriter.getRootParentPath();
        } else {
            path = fieldWriter.getPath(path2);
        }
        this.path = path;
        if (obj == this.rootObject || ((identityHashMap = this.refs) != null && (path3 = identityHashMap.get(obj)) != null)) {
            return path3.toString();
        }
        if (this.refs == null) {
            this.refs = new IdentityHashMap<>(8);
        }
        this.refs.put(obj, this.path);
        return null;
    }

    /* renamed from: of */
    public static JSONWriter m7327of(Feature... featureArr) {
        Context createWriteContext = JSONFactory.createWriteContext(featureArr);
        if ((createWriteContext.f12331k & Feature.OptimizedForAscii.mask) != 0) {
            return new C1742l(createWriteContext);
        }
        return new C1741k(createWriteContext);
    }

    public void write(Map map) {
        if (map == null) {
            writeNull();
            return;
        }
        long j = Feature.ReferenceDetection.mask | Feature.PrettyFormat.mask | Feature.NotWriteEmptyArray.mask | Feature.NotWriteDefaultValue.mask;
        Context context = this.context;
        if ((j & context.f12331k) != 0) {
            context.getObjectWriter(map.getClass()).write(this, map, null, null, 0L);
            return;
        }
        write0('{');
        boolean z = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!z) {
                write0(',');
            }
            writeAny(entry.getKey());
            write0(':');
            writeAny(entry.getValue());
            z = false;
        }
        write0('}');
    }

    public final void writeName(int i) {
        if (this.startObject) {
            this.startObject = false;
        } else {
            writeComma();
        }
        writeInt32(i);
    }

    public final void writeFloat(float[] fArr, DecimalFormat decimalFormat) {
        if (decimalFormat == null || this.jsonb) {
            writeFloat(fArr);
            return;
        }
        if (fArr == null) {
            writeNull();
            return;
        }
        startArray();
        for (int i = 0; i < fArr.length; i++) {
            if (i != 0) {
                writeComma();
            }
            writeRaw(decimalFormat.format(fArr[i]));
        }
        endArray();
    }

    public final String setPath(int i, Object obj) {
        Path path;
        Path path2;
        Path path3;
        if (!isRefDetect(obj)) {
            return null;
        }
        if (i == 0) {
            Path path4 = this.path;
            path = path4.f12346d;
            if (path == null) {
                path = new Path(this.path, i);
                path4.f12346d = path;
            }
        } else if (i == 1) {
            Path path5 = this.path;
            path = path5.f12347e;
            if (path == null) {
                path = new Path(this.path, i);
                path5.f12347e = path;
            }
        } else {
            path = new Path(this.path, i);
        }
        this.path = path;
        if (obj == this.rootObject) {
            path3 = Path.ROOT;
        } else {
            IdentityHashMap<Object, Path> identityHashMap = this.refs;
            if (identityHashMap == null || (path2 = identityHashMap.get(obj)) == null) {
                if (this.refs == null) {
                    this.refs = new IdentityHashMap<>(8);
                }
                this.refs.put(obj, this.path);
                return null;
            }
            path3 = path2;
        }
        return path3.toString();
    }

    public final boolean isWriteTypeInfo(Object obj) {
        Class<?> cls;
        long j = this.context.f12331k;
        if ((Feature.WriteClassName.mask & j) == 0) {
            return false;
        }
        if ((Feature.NotWriteHashMapArrayListClassName.mask & j) == 0 || obj == null || !((cls = obj.getClass()) == HashMap.class || cls == ArrayList.class)) {
            return (j & Feature.NotWriteRootClassName.mask) == 0 || obj != this.rootObject;
        }
        return false;
    }

    public final void writeFloat(Float f) {
        if (f == null) {
            writeNumberNull();
        } else {
            writeDouble(f.floatValue());
        }
    }

    public final boolean isWriteTypeInfo(Object obj, Type type, long j) {
        Class<?> cls;
        long j2 = j | this.context.f12331k;
        if ((Feature.WriteClassName.mask & j2) == 0 || obj == null) {
            return false;
        }
        Class<?> cls2 = obj.getClass();
        if (type instanceof Class) {
            cls = (Class) type;
        } else {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                if (rawType instanceof Class) {
                    cls = (Class) rawType;
                }
            }
            cls = null;
        }
        if (cls2 == cls) {
            return false;
        }
        if ((Feature.NotWriteHashMapArrayListClassName.mask & j2) != 0) {
            if (cls2 == HashMap.class) {
                if (cls == null || cls == Object.class || cls == Map.class || cls == AbstractMap.class) {
                    return false;
                }
            } else if (cls2 == ArrayList.class) {
                return false;
            }
        }
        return (j2 & Feature.NotWriteRootClassName.mask) == 0 || obj != this.rootObject;
    }

    public void write(JSONObject jSONObject) {
        write((Map) jSONObject);
    }

    public final boolean isWriteTypeInfo(Object obj, Class cls, long j) {
        Class<?> cls2;
        if (obj == null || (cls2 = obj.getClass()) == cls) {
            return false;
        }
        long j2 = j | this.context.f12331k;
        if ((Feature.WriteClassName.mask & j2) == 0) {
            return false;
        }
        if ((Feature.NotWriteHashMapArrayListClassName.mask & j2) != 0) {
            if (cls2 == HashMap.class) {
                if (cls == null || cls == Object.class || cls == Map.class || cls == AbstractMap.class) {
                    return false;
                }
            } else if (cls2 == ArrayList.class) {
                return false;
            }
        }
        return (j2 & Feature.NotWriteRootClassName.mask) == 0 || obj != this.rootObject;
    }

    public final boolean isWriteTypeInfo(Object obj, long j) {
        Class<?> cls;
        long j2 = j | this.context.f12331k;
        if ((Feature.WriteClassName.mask & j2) == 0) {
            return false;
        }
        if ((Feature.NotWriteHashMapArrayListClassName.mask & j2) == 0 || obj == null || !((cls = obj.getClass()) == HashMap.class || cls == ArrayList.class)) {
            return (j2 & Feature.NotWriteRootClassName.mask) == 0 || obj != this.rootObject;
        }
        return false;
    }
}
