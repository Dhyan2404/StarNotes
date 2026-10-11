package com.alibaba.fastjson2.writer;

import androidx.core.app.C0619b;
import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.PropertyNamingStrategy;
import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.fastjson2.annotation.JSONType;
import com.alibaba.fastjson2.codec.BeanInfo;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.filter.Filter;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.JdbcSupport;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.ack;
import com.sunia.HTREnginev2.adk;
import com.sunia.HTREnginev2.bck;
import com.sunia.HTREnginev2.bdk;
import com.sunia.HTREnginev2.cck;
import com.sunia.HTREnginev2.cdk;
import com.sunia.HTREnginev2.dck;
import com.sunia.HTREnginev2.ddk;
import com.sunia.HTREnginev2.eck;
import com.sunia.HTREnginev2.fck;
import com.sunia.HTREnginev2.fdk;
import com.sunia.HTREnginev2.gck;
import com.sunia.HTREnginev2.gdk;
import com.sunia.HTREnginev2.hck;
import com.sunia.HTREnginev2.hdk;
import com.sunia.HTREnginev2.ibk;
import com.sunia.HTREnginev2.ick;
import com.sunia.HTREnginev2.idk;
import com.sunia.HTREnginev2.jbk;
import com.sunia.HTREnginev2.jck;
import com.sunia.HTREnginev2.jdk;
import com.sunia.HTREnginev2.kbk;
import com.sunia.HTREnginev2.kck;
import com.sunia.HTREnginev2.kdk;
import com.sunia.HTREnginev2.lck;
import com.sunia.HTREnginev2.ldk;
import com.sunia.HTREnginev2.mck;
import com.sunia.HTREnginev2.mdk;
import com.sunia.HTREnginev2.nck;
import com.sunia.HTREnginev2.ndk;
import com.sunia.HTREnginev2.obk;
import com.sunia.HTREnginev2.ock;
import com.sunia.HTREnginev2.odk;
import com.sunia.HTREnginev2.pbk;
import com.sunia.HTREnginev2.pck;
import com.sunia.HTREnginev2.pdk;
import com.sunia.HTREnginev2.qbk;
import com.sunia.HTREnginev2.qck;
import com.sunia.HTREnginev2.qdk;
import com.sunia.HTREnginev2.rbk;
import com.sunia.HTREnginev2.rck;
import com.sunia.HTREnginev2.sbk;
import com.sunia.HTREnginev2.sck;
import com.sunia.HTREnginev2.tbk;
import com.sunia.HTREnginev2.tck;
import com.sunia.HTREnginev2.ubk;
import com.sunia.HTREnginev2.uck;
import com.sunia.HTREnginev2.vbk;
import com.sunia.HTREnginev2.vck;
import com.sunia.HTREnginev2.wbk;
import com.sunia.HTREnginev2.wck;
import com.sunia.HTREnginev2.xck;
import com.sunia.HTREnginev2.ybk;
import com.sunia.HTREnginev2.zbk;
import com.sunia.HTREnginev2.zck;
import java.io.File;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Clob;
import java.time.Duration;
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
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;

/* loaded from: classes3.dex */
public class ObjectWriterProvider {

    /* renamed from: g */
    public static final int f12872g = 2;

    /* renamed from: h */
    public static final int f12873h = 4;

    /* renamed from: i */
    public static final int f12874i = 8;

    /* renamed from: j */
    public static final int f12875j = 16;

    /* renamed from: k */
    public static final int f12876k = 32;

    /* renamed from: l */
    public static ObjectWriterAdapter f12877l = null;

    /* renamed from: m */
    public static final int f12878m = 16384;

    /* renamed from: n */
    public static final int[] f12879n;

    /* renamed from: o */
    public static final int[] f12880o;

    /* renamed from: a */
    public final ConcurrentMap<Type, ObjectWriter> f12881a;

    /* renamed from: b */
    public final ConcurrentMap<Type, ObjectWriter> f12882b;

    /* renamed from: c */
    public final ConcurrentMap<Class, Class> f12883c;

    /* renamed from: d */
    public final ObjectWriterCreator f12884d;

    /* renamed from: e */
    public final PropertyNamingStrategy f12885e;

    /* renamed from: f */
    public volatile long f12886f;

    /* renamed from: com.alibaba.fastjson2.writer.ObjectWriterProvider$a */
    /* loaded from: classes3.dex */
    public static class C1752a implements ObjectWriter {

        /* renamed from: a */
        public static final C1752a f12887a = new C1752a();

        @Override // com.alibaba.fastjson2.writer.ObjectWriter
        public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        }
    }

    static {
        Class[] clsArr = {Boolean.TYPE, Boolean.class, Character.class, Character.TYPE, Byte.class, Byte.TYPE, Short.class, Short.TYPE, Integer.class, Integer.TYPE, Long.class, Long.TYPE, Float.class, Float.TYPE, Double.class, Double.TYPE, BigInteger.class, BigDecimal.class, String.class, Currency.class, Date.class, UUID.class, Locale.class, String.class, StackTraceElement.class, Collections.emptyList().getClass(), Collections.emptyMap().getClass(), Collections.emptySet().getClass()};
        int[] iArr = new int[28];
        for (int i = 0; i < 28; i++) {
            iArr[i] = System.identityHashCode(clsArr[i]);
        }
        Arrays.sort(iArr);
        f12879n = iArr;
        int[] copyOf = Arrays.copyOf(iArr, 31);
        copyOf[copyOf.length - 1] = System.identityHashCode(Class.class);
        copyOf[copyOf.length - 2] = System.identityHashCode(int[].class);
        copyOf[copyOf.length - 3] = System.identityHashCode(long[].class);
        Arrays.sort(copyOf);
        f12880o = copyOf;
    }

    public ObjectWriterProvider() {
        this((PropertyNamingStrategy) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m7621g(Annotation annotation, FieldInfo fieldInfo, Method method) {
        String name = method.getName();
        char c = 0;
        try {
            Object invoke = method.invoke(annotation, new Object[0]);
            switch (name.hashCode()) {
                case -1371565692:
                    if (name.equals("serializeUsing")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case -1268779017:
                    if (name.equals(Constants.ATTRNAME_FORMAT)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -1206994319:
                    if (name.equals("ordinal")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -987658292:
                    if (name.equals("unwrapped")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -940893828:
                    if (name.equals("serialzeFeatures")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -659125328:
                    if (name.equals("defaultValue")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -573479200:
                    if (name.equals("serialize")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 3373707:
                    if (name.equals("name")) {
                        break;
                    }
                    c = 65535;
                    break;
                case 12396273:
                    if (name.equals("jsonDirect")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 102727412:
                    if (name.equals(C0619b.f5199k)) {
                        c = 2;
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
                    String str = (String) invoke;
                    if (str.isEmpty()) {
                        return;
                    }
                    fieldInfo.fieldName = str;
                    return;
                case 1:
                    m7627i(fieldInfo, (String) invoke);
                    return;
                case 2:
                    String str2 = (String) invoke;
                    if (str2.isEmpty()) {
                        return;
                    }
                    fieldInfo.label = str2;
                    return;
                case 3:
                    String str3 = (String) invoke;
                    if (str3.isEmpty()) {
                        return;
                    }
                    fieldInfo.defaultValue = str3;
                    return;
                case 4:
                    Integer num = (Integer) invoke;
                    if (num.intValue() != 0) {
                        fieldInfo.ordinal = num.intValue();
                        return;
                    }
                    return;
                case 5:
                    if (((Boolean) invoke).booleanValue()) {
                        return;
                    }
                    fieldInfo.ignore = true;
                    return;
                case 6:
                    if (((Boolean) invoke).booleanValue()) {
                        fieldInfo.features |= FieldInfo.UNWRAPPED_MASK;
                        return;
                    }
                    return;
                case 7:
                    m7623c(fieldInfo, (Enum[]) invoke);
                    return;
                case '\b':
                    Class<?> cls = (Class) invoke;
                    if (ObjectWriter.class.isAssignableFrom(cls)) {
                        fieldInfo.writeUsing = cls;
                        return;
                    }
                    return;
                case '\t':
                    if (((Boolean) invoke).booleanValue()) {
                        fieldInfo.features |= 1125899906842624L;
                        return;
                    }
                    return;
                default:
                    return;
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean isNotReferenceDetect(Class<?> cls) {
        return Arrays.binarySearch(f12880o, System.identityHashCode(cls)) >= 0 || ((cls.getModifiers() & 16384) != 0 && cls.getSuperclass() == Enum.class);
    }

    public static boolean isPrimitiveOrEnum(Class<?> cls) {
        return Arrays.binarySearch(f12879n, System.identityHashCode(cls)) >= 0 || ((cls.getModifiers() & 16384) != 0 && cls.getSuperclass() == Enum.class);
    }

    /* renamed from: j */
    public static boolean m7622j(Type type, ObjectWriter objectWriter, ClassLoader classLoader, IdentityHashMap<ObjectWriter, Object> identityHashMap) {
        Class<?> cls = TypeUtils.getClass(type);
        if (cls != null && cls.getClassLoader() == classLoader) {
            return true;
        }
        if (identityHashMap.containsKey(objectWriter)) {
            return false;
        }
        if (objectWriter instanceof ObjectWriterImplMap) {
            ObjectWriterImplMap objectWriterImplMap = (ObjectWriterImplMap) objectWriter;
            Class<?> cls2 = TypeUtils.getClass(objectWriterImplMap.f12859d);
            if (cls2 != null && cls2.getClassLoader() == classLoader) {
                return true;
            }
            Class<?> cls3 = TypeUtils.getClass(objectWriterImplMap.f12858c);
            return cls3 != null && cls3.getClassLoader() == classLoader;
        }
        if (objectWriter instanceof dck) {
            Class<?> cls4 = TypeUtils.getClass(((dck) objectWriter).f67729a);
            return cls4 != null && cls4.getClassLoader() == classLoader;
        }
        if (objectWriter instanceof ObjectWriterAdapter) {
            identityHashMap.put(objectWriter, null);
            List<FieldWriter> list = ((ObjectWriterAdapter) objectWriter).f12839g;
            for (int i = 0; i < list.size(); i++) {
                FieldWriter fieldWriter = list.get(i);
                if ((fieldWriter instanceof FieldWriterObject) && m7622j(null, ((FieldWriterObject) fieldWriter).f12826p, classLoader, identityHashMap)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0013. Please report as an issue. */
    /* renamed from: c */
    public final void m7623c(FieldInfo fieldInfo, Enum[] enumArr) {
        for (Enum r0 : enumArr) {
            String name = r0.name();
            name.hashCode();
            char c = 65535;
            switch (name.hashCode()) {
                case -1937516631:
                    if (name.equals("WriteNullNumberAsZero")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1779797023:
                    if (name.equals("IgnoreErrorGetter")) {
                        c = 1;
                        break;
                    }
                    break;
                case -527123134:
                    if (name.equals("UseISO8601DateFormat")) {
                        c = 2;
                        break;
                    }
                    break;
                case -348914872:
                    if (name.equals("WriteBigDecimalAsPlain")) {
                        c = 3;
                        break;
                    }
                    break;
                case -335314544:
                    if (name.equals("WriteEnumUsingToString")) {
                        c = 4;
                        break;
                    }
                    break;
                case -211922948:
                    if (name.equals("BrowserCompatible")) {
                        c = 5;
                        break;
                    }
                    break;
                case -102443356:
                    if (name.equals("WriteNullStringAsEmpty")) {
                        c = 6;
                        break;
                    }
                    break;
                case -62964779:
                    if (name.equals("NotWriteRootClassName")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1009181687:
                    if (name.equals("WriteNullListAsEmpty")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 1519175029:
                    if (name.equals("WriteNonStringValueAsString")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 1808123471:
                    if (name.equals("WriteNullBooleanAsFalse")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1879776036:
                    if (name.equals("WriteClassName")) {
                        c = 11;
                        break;
                    }
                    break;
                case 2049970061:
                    if (name.equals("WriteMapNullValue")) {
                        c = '\f';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    fieldInfo.features |= JSONWriter.Feature.WriteNullNumberAsZero.mask;
                    break;
                case 1:
                    fieldInfo.features |= JSONWriter.Feature.IgnoreErrorGetter.mask;
                    break;
                case 2:
                    fieldInfo.format = "iso8601";
                    break;
                case 3:
                    fieldInfo.features |= JSONWriter.Feature.WriteBigDecimalAsPlain.mask;
                    break;
                case 4:
                    fieldInfo.features |= JSONWriter.Feature.WriteEnumUsingToString.mask;
                    break;
                case 5:
                    fieldInfo.features |= JSONWriter.Feature.BrowserCompatible.mask;
                    break;
                case 6:
                    fieldInfo.features |= JSONWriter.Feature.WriteNullStringAsEmpty.mask;
                    break;
                case 7:
                    fieldInfo.features |= JSONWriter.Feature.NotWriteRootClassName.mask;
                    break;
                case '\b':
                    fieldInfo.features |= JSONWriter.Feature.WriteNullListAsEmpty.mask;
                    break;
                case '\t':
                    fieldInfo.features |= JSONWriter.Feature.WriteNonStringValueAsString.mask;
                    break;
                case '\n':
                    fieldInfo.features |= JSONWriter.Feature.WriteNullBooleanAsFalse.mask;
                    break;
                case 11:
                    fieldInfo.features |= JSONWriter.Feature.WriteClassName.mask;
                    break;
                case '\f':
                    fieldInfo.features |= JSONWriter.Feature.WriteNulls.mask;
                    break;
            }
        }
    }

    public void cleanup(Class cls) {
        this.f12883c.remove(cls);
        this.f12881a.remove(cls);
        this.f12882b.remove(cls);
        BeanUtils.cleanupCache(cls);
    }

    public void cleanupMixIn() {
        this.f12883c.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0019  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.alibaba.fastjson2.writer.ObjectWriter m7624d(java.lang.Class r10) {
        /*
            r9 = this;
            boolean r0 = r10.isEnum()
            if (r0 != 0) goto L12
            java.lang.Class r0 = r10.getSuperclass()
            boolean r1 = r0.isEnum()
            if (r1 == 0) goto L12
            r4 = r0
            goto L13
        L12:
            r4 = r10
        L13:
            java.lang.reflect.Member r10 = com.alibaba.fastjson2.util.BeanUtils.getEnumValueField(r4, r9)
            if (r10 != 0) goto L41
            java.util.concurrent.ConcurrentMap<java.lang.Class, java.lang.Class> r0 = r9.f12883c
            java.lang.Object r0 = r0.get(r4)
            java.lang.Class r0 = (java.lang.Class) r0
            java.lang.reflect.Member r0 = com.alibaba.fastjson2.util.BeanUtils.getEnumValueField(r0, r9)
            boolean r1 = r0 instanceof java.lang.reflect.Field
            if (r1 == 0) goto L32
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Throwable -> L41
            java.lang.reflect.Field r10 = r4.getField(r0)     // Catch: java.lang.Throwable -> L41
            goto L41
        L32:
            boolean r1 = r0 instanceof java.lang.reflect.Method
            if (r1 == 0) goto L41
            java.lang.String r0 = r0.getName()
            r1 = 0
            java.lang.Class[] r1 = new java.lang.Class[r1]
            java.lang.reflect.Method r10 = r4.getMethod(r0, r1)
        L41:
            r5 = r10
            com.alibaba.fastjson2.codec.BeanInfo r10 = new com.alibaba.fastjson2.codec.BeanInfo
            r10.<init>()
            r9.getBeanInfo(r10, r4)
            boolean r9 = r10.writeEnumAsJavaBean
            if (r9 == 0) goto L50
            r9 = 0
            return r9
        L50:
            java.lang.String[] r6 = com.alibaba.fastjson2.util.BeanUtils.getEnumAnnotationNames(r4)
            com.sunia.HTREnginev2.ick r9 = new com.sunia.HTREnginev2.ick
            r3 = 0
            r7 = 0
            r2 = r9
            r2.<init>(r3, r4, r5, r6, r7)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterProvider.m7624d(java.lang.Class):com.alibaba.fastjson2.writer.ObjectWriter");
    }

    /* renamed from: e */
    public ObjectWriter m7625e(String str, Class cls) {
        str.hashCode();
        if (str.equals("java.sql.Time")) {
            return JdbcSupport.TimeWriter.m7593of(null);
        }
        if (str.equals("java.sql.Timestamp")) {
            return new JdbcSupport.TimestampWriter(null);
        }
        if (Clob.class.isAssignableFrom(cls)) {
            return new JdbcSupport.ClobWriter();
        }
        return null;
    }

    public void getBeanInfo(final BeanInfo beanInfo, Class cls) {
        Class cls2;
        Class superclass;
        String str;
        PropertyNamingStrategy propertyNamingStrategy = this.f12885e;
        if (propertyNamingStrategy != null && propertyNamingStrategy != PropertyNamingStrategy.NeverUseThisValueExceptDefaultValue) {
            beanInfo.namingStrategy = propertyNamingStrategy.name();
        }
        if (cls != null && (superclass = cls.getSuperclass()) != Object.class && superclass != null && superclass != Enum.class) {
            getBeanInfo(beanInfo, superclass);
            if (beanInfo.seeAlso != null && beanInfo.seeAlsoNames != null) {
                int i = 0;
                while (true) {
                    Class[] clsArr = beanInfo.seeAlso;
                    if (i >= clsArr.length) {
                        break;
                    }
                    if (clsArr[i] == cls) {
                        String[] strArr = beanInfo.seeAlsoNames;
                        if (i < strArr.length && (str = strArr[i]) != null && str.length() != 0) {
                            beanInfo.typeName = str;
                            break;
                        }
                    }
                    i++;
                }
            }
        }
        Annotation[] declaredAnnotations = cls.getDeclaredAnnotations();
        JSONType jSONType = null;
        int i2 = 0;
        final Annotation annotation = null;
        while (i2 < declaredAnnotations.length) {
            Annotation annotation2 = declaredAnnotations[i2];
            Class<? extends Annotation> annotationType = annotation2.annotationType();
            JSONType jSONType2 = (JSONType) BeanUtils.findAnnotation(annotation2, JSONType.class);
            if (jSONType2 != annotation2) {
                String name = annotationType.getName();
                if (name.equals("kotlin.Metadata")) {
                    beanInfo.f116569kotlin = true;
                    BeanUtils.getKotlinConstructor(cls, beanInfo);
                    beanInfo.createParameterNames = BeanUtils.getKotlinConstructorParameters(cls);
                } else if (name.equals("com.alibaba.fastjson.annotation.JSONType")) {
                    annotation = annotation2;
                }
            }
            i2++;
            jSONType = jSONType2;
        }
        if (jSONType == null && (cls2 = this.f12883c.get(cls)) != null) {
            beanInfo.mixIn = true;
            Annotation[] declaredAnnotations2 = cls2.getDeclaredAnnotations();
            int i3 = 0;
            while (i3 < declaredAnnotations2.length) {
                Annotation annotation3 = declaredAnnotations2[i3];
                Class<? extends Annotation> annotationType2 = annotation3.annotationType();
                JSONType jSONType3 = (JSONType) BeanUtils.findAnnotation(annotation3, JSONType.class);
                if (jSONType3 != annotation3 && annotationType2.getName().equals("com.alibaba.fastjson.annotation.JSONType")) {
                    annotation = annotation3;
                }
                i3++;
                jSONType = jSONType3;
            }
        }
        if (jSONType != null) {
            Class<?>[] seeAlso = jSONType.seeAlso();
            if (seeAlso.length != 0) {
                beanInfo.seeAlso = seeAlso;
            }
            String typeKey = jSONType.typeKey();
            if (!typeKey.isEmpty()) {
                beanInfo.typeKey = typeKey;
            }
            String typeName = jSONType.typeName();
            if (!typeName.isEmpty()) {
                beanInfo.typeName = typeName;
            }
            for (JSONWriter.Feature feature : jSONType.serializeFeatures()) {
                beanInfo.writerFeatures |= feature.mask;
            }
            beanInfo.namingStrategy = jSONType.naming().name();
            String[] ignores = jSONType.ignores();
            if (ignores.length > 0) {
                beanInfo.ignores = ignores;
            }
            String[] includes = jSONType.includes();
            if (includes.length > 0) {
                beanInfo.includes = includes;
            }
            String[] orders = jSONType.orders();
            if (orders.length > 0) {
                beanInfo.orders = orders;
            }
            Class<?> serializer = jSONType.serializer();
            if (ObjectWriter.class.isAssignableFrom(serializer)) {
                beanInfo.serializer = serializer;
                beanInfo.writeEnumAsJavaBean = true;
            }
            Class<? extends Filter>[] serializeFilters = jSONType.serializeFilters();
            if (serializeFilters.length != 0) {
                beanInfo.serializeFilters = serializeFilters;
            }
            String format = jSONType.format();
            if (!format.isEmpty()) {
                beanInfo.format = format;
            }
            String locale = jSONType.locale();
            if (!locale.isEmpty()) {
                String[] split = locale.split("_");
                if (split.length == 2) {
                    beanInfo.locale = new Locale(split[0], split[1]);
                }
            }
            if (!jSONType.alphabetic()) {
                beanInfo.alphabetic = false;
            }
            if (jSONType.writeEnumAsJavaBean()) {
                beanInfo.writeEnumAsJavaBean = true;
            }
        } else if (annotation != null) {
            BeanUtils.annotationMethods(annotation.annotationType(), new Consumer() { // from class: com.sunia.HTREnginev2.udk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BeanUtils.processJSONType1x(BeanInfo.this, annotation, (Method) obj);
                }
            });
        }
        Class[] clsArr2 = beanInfo.seeAlso;
        if (clsArr2 == null || clsArr2.length == 0) {
            return;
        }
        String str2 = beanInfo.typeName;
        if (str2 == null || str2.length() == 0) {
            for (Class cls3 : beanInfo.seeAlso) {
                if (cls3 == cls) {
                    beanInfo.typeName = cls.getSimpleName();
                    return;
                }
            }
        }
    }

    public void getFieldInfo(BeanInfo beanInfo, FieldInfo fieldInfo, Class cls, Field field) {
        Class cls2;
        Field field2;
        JSONField jSONField = null;
        if (cls != null && (cls2 = this.f12883c.get(cls)) != null && cls2 != cls) {
            try {
                field2 = cls2.getDeclaredField(field.getName());
            } catch (Exception unused) {
                field2 = null;
            }
            if (field2 != null) {
                getFieldInfo(beanInfo, fieldInfo, cls2, field2);
            }
        }
        if (this.f12883c.get(field.getType()) != null) {
            fieldInfo.fieldClassMixIn = true;
        }
        if (Modifier.isTransient(field.getModifiers())) {
            fieldInfo.ignore = true;
        }
        for (Annotation annotation : field.getDeclaredAnnotations()) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            if ((jSONField != null || (jSONField = (JSONField) BeanUtils.findAnnotation(annotation, JSONField.class)) != annotation) && annotationType.getName().equals("com.alibaba.fastjson.annotation.JSONField")) {
                m7629l(fieldInfo, annotation);
            }
        }
        if (jSONField == null) {
            return;
        }
        m7626h(fieldInfo, jSONField);
        Class<?> writeUsing = jSONField.writeUsing();
        if (ObjectWriter.class.isAssignableFrom(writeUsing)) {
            fieldInfo.writeUsing = writeUsing;
        }
        Class<?> serializeUsing = jSONField.serializeUsing();
        if (ObjectWriter.class.isAssignableFrom(serializeUsing)) {
            fieldInfo.writeUsing = serializeUsing;
        }
        if (jSONField.jsonDirect()) {
            fieldInfo.features |= 1125899906842624L;
        }
        if ((fieldInfo.features & JSONWriter.Feature.WriteNonStringValueAsString.mask) == 0 || String.class.equals(field.getType()) || fieldInfo.writeUsing != null) {
            return;
        }
        fieldInfo.writeUsing = ObjectWriterImplToString.class;
    }

    public Class getMixIn(Class cls) {
        return this.f12883c.get(cls);
    }

    public ObjectWriter getObjectWriter(Class cls) {
        return getObjectWriter(cls, cls, false);
    }

    public ObjectWriter getObjectWriterFromCache(Type type, Class cls, boolean z) {
        return z ? this.f12882b.get(type) : this.f12881a.get(type);
    }

    public ObjectWriter getObjectWriterModule(Type type, Class cls) {
        ObjectWriter m7624d;
        Type type2 = type;
        if (type2 == String.class) {
            return ldk.f76371a;
        }
        Class mapping = cls == null ? type2 instanceof Class ? (Class) type2 : TypeUtils.getMapping(type) : cls;
        String name = mapping.getName();
        ObjectWriter m7625e = m7625e(name, mapping);
        if (m7625e != null) {
            return m7625e;
        }
        if (name.equals("java.util.regex.Pattern") || name.equals("net.sf.json.JSONNull") || name.equals("java.net.Inet6Address") || name.equals("java.net.Inet4Address") || name.equals("java.text.SimpleDateFormat") || name.equals("java.net.InetSocketAddress")) {
            return qdk.f81928a;
        }
        if (type2 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type2;
            Type rawType = parameterizedType.getRawType();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if (rawType == List.class || rawType == ArrayList.class) {
                if (actualTypeArguments.length == 1 && actualTypeArguments[0] == String.class) {
                    return zck.f91615a;
                }
                type2 = rawType;
            }
            if (Map.class.isAssignableFrom(mapping)) {
                return ObjectWriterImplMap.m7617of(type2, mapping);
            }
        }
        if (type2 == LinkedList.class) {
            return xck.f89521h;
        }
        if (type2 == ArrayList.class || type2 == List.class || List.class.isAssignableFrom(mapping)) {
            return xck.f89521h;
        }
        if (Collection.class.isAssignableFrom(mapping)) {
            return dck.f67724c;
        }
        if (Map.class.isAssignableFrom(mapping)) {
            return ObjectWriterImplMap.m7615of(mapping);
        }
        if (type2 == Integer.class) {
            return ock.f79573a;
        }
        if (type2 == AtomicInteger.class) {
            return qbk.f81871b;
        }
        if (type2 == Byte.class) {
            return uck.f86356a;
        }
        if (type2 == Short.class) {
            return mck.f77466a;
        }
        if (type2 == Long.class) {
            return rck.f82975b;
        }
        if (type2 == AtomicLong.class) {
            return sbk.f83989b;
        }
        if (type2 == AtomicReference.class) {
            return ubk.f86322b;
        }
        if (type2 == Float.class) {
            return jck.f74179b;
        }
        if (type2 == Double.class) {
            return gck.f70903b;
        }
        if (type2 == BigInteger.class) {
            return kbk.f75261b;
        }
        if (type2 == BigDecimal.class) {
            return vbk.f87339c;
        }
        if (type2 == OptionalInt.class) {
            return jdk.f74210a;
        }
        if (type2 == OptionalLong.class) {
            return kdk.f75317a;
        }
        if (type2 == OptionalDouble.class) {
            return idk.f73156a;
        }
        if (type2 == Optional.class) {
            return hdk.f72105e;
        }
        if (type2 == Boolean.class) {
            return ybk.f90568a;
        }
        if (type2 == AtomicBoolean.class) {
            return pbk.f80639a;
        }
        if (type2 == AtomicIntegerArray.class) {
            return rbk.f82949a;
        }
        if (type2 == AtomicLongArray.class) {
            return tbk.f85159a;
        }
        if (type2 == Character.class) {
            return bck.f65632a;
        }
        if (type2 instanceof Class) {
            Class cls2 = (Class) type2;
            if (TimeUnit.class.isAssignableFrom(cls2)) {
                return new ick(null, TimeUnit.class, null, null, 0L);
            }
            if (Enum.class.isAssignableFrom(cls2) && (m7624d = m7624d(cls2)) != null) {
                return m7624d;
            }
            if (JSONPath.class.isAssignableFrom(cls2)) {
                return ObjectWriterImplToString.INSTANCE;
            }
            if (cls2 == boolean[].class) {
                return wbk.f88442b;
            }
            if (cls2 == char[].class) {
                return ack.f64560b;
            }
            if (cls2 == StringBuffer.class || cls2 == StringBuilder.class) {
                return ObjectWriterImplToString.INSTANCE;
            }
            if (cls2 == byte[].class) {
                return wck.f88496b;
            }
            if (cls2 == short[].class) {
                return nck.f78522b;
            }
            if (cls2 == int[].class) {
                return qck.f81900b;
            }
            if (cls2 == long[].class) {
                return tck.f85191b;
            }
            if (cls2 == float[].class) {
                return kck.f75286c;
            }
            if (cls2 == double[].class) {
                return hck.f72073c;
            }
            if (cls2 == Byte[].class) {
                return vck.f87367a;
            }
            if (cls2 == Integer[].class) {
                return pck.f80668a;
            }
            if (cls2 == Long[].class) {
                return sck.f84014a;
            }
            if (String[].class == cls2) {
                return mdk.f77491c;
            }
            if (BigDecimal[].class == cls2) {
                return obk.f79541a;
            }
            if (Object[].class.isAssignableFrom(cls2)) {
                if (cls2 == Object[].class) {
                    return ibk.f73086e;
                }
                Class<?> componentType = cls2.getComponentType();
                return Modifier.isFinal(componentType.getModifiers()) ? new jbk(componentType, null) : new ibk(componentType);
            }
            if (cls2 == UUID.class) {
                return odk.f79605a;
            }
            if (cls2 == Locale.class) {
                return ddk.f67756a;
            }
            if (cls2 == Currency.class) {
                return eck.f68813b;
            }
            if (TimeZone.class.isAssignableFrom(cls2)) {
                return ndk.f78549a;
            }
            if (cls2 == URI.class || cls2 == URL.class || cls2 == File.class || ZoneId.class.isAssignableFrom(cls2) || Charset.class.isAssignableFrom(cls2)) {
                return ObjectWriterImplToString.INSTANCE;
            }
            ObjectWriter m7625e2 = m7625e(cls2.getName(), cls2);
            if (m7625e2 != null) {
                return m7625e2;
            }
            BeanInfo beanInfo = new BeanInfo();
            Class mixIn = getMixIn(cls2);
            if (mixIn != null) {
                getBeanInfo(beanInfo, mixIn);
            }
            if (Date.class.isAssignableFrom(cls2)) {
                return (beanInfo.format == null && beanInfo.locale == null) ? fck.f69875b : new fck(beanInfo.format, beanInfo.locale);
            }
            if (Calendar.class.isAssignableFrom(cls2)) {
                return (beanInfo.format == null && beanInfo.locale == null) ? zbk.f91590b : new zbk(beanInfo.format, beanInfo.locale);
            }
            if (ZonedDateTime.class == cls2) {
                return (beanInfo.format == null && beanInfo.locale == null) ? pdk.f80694c : new pdk(beanInfo.format, beanInfo.locale);
            }
            if (OffsetDateTime.class == cls2) {
                return fdk.m54081a(beanInfo.format, beanInfo.locale);
            }
            if (LocalDateTime.class == cls2) {
                return (beanInfo.format == null && beanInfo.locale == null) ? bdk.f65657b : new bdk(beanInfo.format, beanInfo.locale);
            }
            if (LocalDate.class == cls2) {
                return adk.m53000a(beanInfo.format, beanInfo.locale);
            }
            if (LocalTime.class == cls2) {
                return (beanInfo.format == null && beanInfo.locale == null) ? cdk.f66730b : new cdk(beanInfo.format, beanInfo.locale);
            }
            if (OffsetTime.class == cls2) {
                return (beanInfo.format == null && beanInfo.locale == null) ? gdk.f70938b : new gdk(beanInfo.format, beanInfo.locale);
            }
            if (Instant.class == cls2) {
                return (beanInfo.format == null && beanInfo.locale == null) ? lck.f76348b : new lck(beanInfo.format, beanInfo.locale);
            }
            if (Duration.class == cls2) {
                return ObjectWriterImplToString.INSTANCE;
            }
            if (StackTraceElement.class == cls2) {
                if (f12877l == null) {
                    f12877l = new ObjectWriterAdapter(StackTraceElement.class, null, null, 0L, Arrays.asList(ObjectWriters.fieldWriter(HuaweiYunQueryArgs.FILE_NAME, String.class, new Function() { // from class: com.sunia.HTREnginev2.rdk
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return ((StackTraceElement) obj).getFileName();
                        }
                    }), ObjectWriters.fieldWriter("lineNumber", new ToIntFunction() { // from class: com.sunia.HTREnginev2.ydk
                        @Override // java.util.function.ToIntFunction
                        public final int applyAsInt(Object obj) {
                            return ((StackTraceElement) obj).getLineNumber();
                        }
                    }), ObjectWriters.fieldWriter("className", String.class, new Function() { // from class: com.sunia.HTREnginev2.zdk
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return ((StackTraceElement) obj).getClassName();
                        }
                    }), ObjectWriters.fieldWriter("methodName", String.class, new Function() { // from class: com.sunia.HTREnginev2.aek
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return ((StackTraceElement) obj).getMethodName();
                        }
                    })));
                }
                return f12877l;
            }
            if (Class.class == cls2) {
                return cck.f66707a;
            }
            if (Method.class == cls2) {
                return new ObjectWriterAdapter(Method.class, null, null, 0L, Arrays.asList(ObjectWriters.fieldWriter("declaringClass", Class.class, new Function() { // from class: com.sunia.HTREnginev2.bek
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((Method) obj).getDeclaringClass();
                    }
                }), ObjectWriters.fieldWriter("name", String.class, new Function() { // from class: com.sunia.HTREnginev2.cek
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((Method) obj).getName();
                    }
                }), ObjectWriters.fieldWriter("parameterTypes", Class[].class, new Function() { // from class: com.sunia.HTREnginev2.dek
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((Method) obj).getParameterTypes();
                    }
                })));
            }
            if (Field.class == cls2) {
                return new ObjectWriterAdapter(Method.class, null, null, 0L, Arrays.asList(ObjectWriters.fieldWriter("declaringClass", Class.class, new Function() { // from class: com.sunia.HTREnginev2.eek
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((Field) obj).getDeclaringClass();
                    }
                }), ObjectWriters.fieldWriter("name", String.class, new Function() { // from class: com.sunia.HTREnginev2.sdk
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((Field) obj).getName();
                    }
                })));
            }
            if (ParameterizedType.class.isAssignableFrom(cls2)) {
                return ObjectWriters.objectWriter(ParameterizedType.class, ObjectWriters.fieldWriter("actualTypeArguments", Type[].class, new Function() { // from class: com.sunia.HTREnginev2.tdk
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((ParameterizedType) obj).getActualTypeArguments();
                    }
                }), ObjectWriters.fieldWriter("ownerType", Type.class, new Function() { // from class: com.sunia.HTREnginev2.wdk
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((ParameterizedType) obj).getOwnerType();
                    }
                }), ObjectWriters.fieldWriter("rawType", Type.class, new Function() { // from class: com.sunia.HTREnginev2.xdk
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((ParameterizedType) obj).getRawType();
                    }
                }));
            }
        }
        return null;
    }

    /* renamed from: h */
    public final void m7626h(FieldInfo fieldInfo, JSONField jSONField) {
        String name = jSONField.name();
        if (!name.isEmpty()) {
            fieldInfo.fieldName = name;
        }
        String defaultValue = jSONField.defaultValue();
        if (!defaultValue.isEmpty()) {
            fieldInfo.defaultValue = defaultValue;
        }
        m7627i(fieldInfo, jSONField.format());
        String label = jSONField.label();
        if (!label.isEmpty()) {
            fieldInfo.label = label;
        }
        if (!fieldInfo.ignore) {
            fieldInfo.ignore = !jSONField.serialize();
        }
        if (jSONField.unwrapped()) {
            fieldInfo.features |= FieldInfo.UNWRAPPED_MASK;
        }
        for (JSONWriter.Feature feature : jSONField.serializeFeatures()) {
            fieldInfo.features |= feature.mask;
        }
        int ordinal = jSONField.ordinal();
        if (ordinal != 0) {
            fieldInfo.ordinal = ordinal;
        }
        if (jSONField.value()) {
            fieldInfo.features |= FieldInfo.VALUE_MASK;
        }
        if (jSONField.jsonDirect()) {
            fieldInfo.features |= 1125899906842624L;
        }
        Class<?> serializeUsing = jSONField.serializeUsing();
        if (ObjectWriter.class.isAssignableFrom(serializeUsing)) {
            fieldInfo.writeUsing = serializeUsing;
        }
    }

    /* renamed from: i */
    public final void m7627i(FieldInfo fieldInfo, String str) {
        if (str.isEmpty()) {
            return;
        }
        String trim = str.trim();
        if (trim.indexOf(84) != -1 && !trim.contains("'T'")) {
            trim = trim.replaceAll("T", "'T'");
        }
        if (trim.isEmpty()) {
            return;
        }
        fieldInfo.format = trim;
    }

    /* renamed from: k */
    public final void m7628k(FieldInfo fieldInfo, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            JSONField jSONField = (JSONField) BeanUtils.findAnnotation(annotation, JSONField.class);
            if (jSONField != null) {
                m7626h(fieldInfo, jSONField);
            } else {
                String name = annotationType.getName();
                if (name.equals("java.beans.Transient")) {
                    fieldInfo.ignore = true;
                    fieldInfo.isTransient = true;
                } else if (name.equals("com.alibaba.fastjson.annotation.JSONField")) {
                    m7629l(fieldInfo, annotation);
                }
            }
        }
    }

    /* renamed from: l */
    public final void m7629l(final FieldInfo fieldInfo, final Annotation annotation) {
        BeanUtils.annotationMethods(annotation.getClass(), new Consumer() { // from class: com.sunia.HTREnginev2.vdk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ObjectWriterProvider.this.m7621g(annotation, fieldInfo, (Method) obj);
            }
        });
    }

    public void mixIn(Class cls, Class cls2) {
        if (cls2 == null) {
            this.f12883c.remove(cls);
        } else {
            this.f12883c.put(cls, cls2);
        }
        this.f12881a.remove(cls);
    }

    public ObjectWriter register(Type type, ObjectWriter objectWriter) {
        return register(type, objectWriter, false);
    }

    public ObjectWriter registerIfAbsent(Type type, ObjectWriter objectWriter) {
        ObjectWriter objectWriter2 = this.f12881a.get(type);
        if (objectWriter2 == null) {
            this.f12881a.put(type, objectWriter);
        }
        return objectWriter2;
    }

    public ObjectWriter unregister(Type type) {
        return this.f12881a.remove(type);
    }

    public ObjectWriterProvider(PropertyNamingStrategy propertyNamingStrategy) {
        this.f12881a = new ConcurrentHashMap();
        this.f12882b = new ConcurrentHashMap();
        this.f12883c = new ConcurrentHashMap();
        this.f12885e = propertyNamingStrategy;
        this.f12884d = ObjectWriterCreator.INSTANCE;
    }

    public ObjectWriter getObjectWriter(Type type, Class cls) {
        return getObjectWriter(type, cls, false);
    }

    public ObjectWriter register(Type type, ObjectWriter objectWriter, boolean z) {
        if (type == Integer.class) {
            if (objectWriter != null && objectWriter != ock.f79573a) {
                this.f12886f |= 2;
            } else {
                this.f12886f &= -3;
            }
        } else if (type != Long.class && type != Long.TYPE) {
            if (type == BigDecimal.class) {
                if (objectWriter != null && objectWriter != vbk.f87339c) {
                    this.f12886f |= 8;
                } else {
                    this.f12886f &= -9;
                }
            } else if (type == Date.class) {
                if (objectWriter != null && objectWriter != fck.f69875b) {
                    this.f12886f |= 16;
                } else {
                    this.f12886f &= -17;
                }
            } else if (type == Enum.class) {
                if (objectWriter == null) {
                    this.f12886f &= -33;
                } else {
                    this.f12886f |= 32;
                }
            }
        } else if (objectWriter != null && objectWriter != rck.f82975b) {
            this.f12886f |= 4;
        } else {
            this.f12886f &= -5;
        }
        if (objectWriter == null) {
            if (z) {
                return this.f12882b.remove(type);
            }
            return this.f12881a.remove(type);
        }
        if (z) {
            return this.f12882b.put(type, objectWriter);
        }
        return this.f12881a.put(type, objectWriter);
    }

    public boolean unregister(Type type, ObjectWriter objectWriter) {
        return this.f12881a.remove(type, objectWriter);
    }

    public ObjectWriter getObjectWriter(Type type) {
        return getObjectWriter(type, TypeUtils.getClass(type), false);
    }

    public void cleanup(ClassLoader classLoader) {
        Iterator<Map.Entry<Class, Class>> it2 = this.f12883c.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getKey().getClassLoader() == classLoader) {
                it2.remove();
            }
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<Map.Entry<Type, ObjectWriter>> it3 = this.f12881a.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry<Type, ObjectWriter> next = it3.next();
            if (m7622j(next.getKey(), next.getValue(), classLoader, identityHashMap)) {
                it3.remove();
            }
        }
        Iterator<Map.Entry<Type, ObjectWriter>> it4 = this.f12882b.entrySet().iterator();
        while (it4.hasNext()) {
            Map.Entry<Type, ObjectWriter> next2 = it4.next();
            if (m7622j(next2.getKey(), next2.getValue(), classLoader, identityHashMap)) {
                it4.remove();
            }
        }
        BeanUtils.cleanupCache(classLoader);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0098, code lost:
    
        if (r1.equals("android.net.Uri$OpaqueUri") == false) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.reflect.Type r4, java.lang.Class r5, boolean r6) {
        /*
            r3 = this;
            java.lang.Class r0 = r5.getSuperclass()
            boolean r1 = r5.isEnum()
            if (r1 != 0) goto L17
            if (r0 == 0) goto L17
            boolean r1 = r0.isEnum()
            if (r1 == 0) goto L17
            com.alibaba.fastjson2.writer.ObjectWriter r3 = r3.getObjectWriter(r0, r0, r6)
            return r3
        L17:
            r1 = 0
            if (r6 == 0) goto L2d
            if (r0 == 0) goto L2d
            java.lang.Class<java.lang.Object> r2 = java.lang.Object.class
            if (r0 == r2) goto L2d
            java.lang.String r0 = r0.getName()
            java.lang.String r2 = "com.google.protobuf.GeneratedMessageV3"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L2d
            r6 = r1
        L2d:
            if (r6 == 0) goto L38
            java.util.concurrent.ConcurrentMap<java.lang.reflect.Type, com.alibaba.fastjson2.writer.ObjectWriter> r0 = r3.f12882b
            java.lang.Object r0 = r0.get(r4)
            com.alibaba.fastjson2.writer.ObjectWriter r0 = (com.alibaba.fastjson2.writer.ObjectWriter) r0
            goto L40
        L38:
            java.util.concurrent.ConcurrentMap<java.lang.reflect.Type, com.alibaba.fastjson2.writer.ObjectWriter> r0 = r3.f12881a
            java.lang.Object r0 = r0.get(r4)
            com.alibaba.fastjson2.writer.ObjectWriter r0 = (com.alibaba.fastjson2.writer.ObjectWriter) r0
        L40:
            if (r0 == 0) goto L43
            return r0
        L43:
            if (r6 == 0) goto L56
            java.lang.Class<java.lang.Iterable> r2 = java.lang.Iterable.class
            boolean r2 = r2.isAssignableFrom(r5)
            if (r2 == 0) goto L56
            java.lang.Class<java.util.Collection> r2 = java.util.Collection.class
            boolean r2 = r2.isAssignableFrom(r5)
            if (r2 != 0) goto L56
            goto L57
        L56:
            r1 = 1
        L57:
            if (r1 == 0) goto L76
            com.alibaba.fastjson2.writer.ObjectWriter r0 = r3.getObjectWriterModule(r4, r5)
            if (r0 == 0) goto L76
            if (r6 == 0) goto L6a
            java.util.concurrent.ConcurrentMap<java.lang.reflect.Type, com.alibaba.fastjson2.writer.ObjectWriter> r3 = r3.f12882b
            java.lang.Object r3 = r3.put(r4, r0)
            com.alibaba.fastjson2.writer.ObjectWriter r3 = (com.alibaba.fastjson2.writer.ObjectWriter) r3
            goto L72
        L6a:
            java.util.concurrent.ConcurrentMap<java.lang.reflect.Type, com.alibaba.fastjson2.writer.ObjectWriter> r3 = r3.f12881a
            java.lang.Object r3 = r3.put(r4, r0)
            com.alibaba.fastjson2.writer.ObjectWriter r3 = (com.alibaba.fastjson2.writer.ObjectWriter) r3
        L72:
            if (r3 == 0) goto L75
            r0 = r3
        L75:
            return r0
        L76:
            java.lang.String r1 = r5.getName()
            java.lang.String r2 = "android.net.Uri$HierarchicalUri"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto La0
            java.lang.String r2 = "android.net.Uri$StringUri"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto La0
            java.lang.String r2 = "com.alibaba.fastjson.JSONObject"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L9b
            java.lang.String r2 = "android.net.Uri$OpaqueUri"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto La0
            goto La2
        L9b:
            com.alibaba.fastjson2.writer.ObjectWriterImplMap r0 = com.alibaba.fastjson2.writer.ObjectWriterImplMap.m7615of(r5)
            goto La2
        La0:
            com.alibaba.fastjson2.writer.ObjectWriterImplToString r0 = com.alibaba.fastjson2.writer.ObjectWriterImplToString.INSTANCE
        La2:
            if (r0 != 0) goto Lc9
            com.alibaba.fastjson2.writer.ObjectWriterCreator r0 = r3.f12884d
            if (r6 == 0) goto Lad
            com.alibaba.fastjson2.JSONWriter$Feature r1 = com.alibaba.fastjson2.JSONWriter.Feature.FieldBased
            long r1 = r1.mask
            goto Laf
        Lad:
            r1 = 0
        Laf:
            com.alibaba.fastjson2.writer.ObjectWriter r0 = r0.createObjectWriter(r5, r1, r3)
            if (r6 == 0) goto Lbe
            java.util.concurrent.ConcurrentMap<java.lang.reflect.Type, com.alibaba.fastjson2.writer.ObjectWriter> r3 = r3.f12882b
            java.lang.Object r3 = r3.put(r4, r0)
            com.alibaba.fastjson2.writer.ObjectWriter r3 = (com.alibaba.fastjson2.writer.ObjectWriter) r3
            goto Lc6
        Lbe:
            java.util.concurrent.ConcurrentMap<java.lang.reflect.Type, com.alibaba.fastjson2.writer.ObjectWriter> r3 = r3.f12881a
            java.lang.Object r3 = r3.put(r4, r0)
            com.alibaba.fastjson2.writer.ObjectWriter r3 = (com.alibaba.fastjson2.writer.ObjectWriter) r3
        Lc6:
            if (r3 == 0) goto Lc9
            r0 = r3
        Lc9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterProvider.getObjectWriter(java.lang.reflect.Type, java.lang.Class, boolean):com.alibaba.fastjson2.writer.ObjectWriter");
    }

    public ObjectWriterProvider(ObjectWriterCreator objectWriterCreator) {
        this.f12881a = new ConcurrentHashMap();
        this.f12882b = new ConcurrentHashMap();
        this.f12883c = new ConcurrentHashMap();
        this.f12884d = objectWriterCreator;
        this.f12885e = null;
    }

    public void getFieldInfo(BeanInfo beanInfo, FieldInfo fieldInfo, Class cls, Method method) {
        Field field;
        Method method2;
        Class cls2 = this.f12883c.get(cls);
        String name = method.getName();
        if (cls2 != null && cls2 != cls) {
            try {
                method2 = cls2.getDeclaredMethod(name, method.getParameterTypes());
            } catch (Exception unused) {
                method2 = null;
            }
            if (method2 != null) {
                getFieldInfo(beanInfo, fieldInfo, cls2, method2);
            }
        }
        if (this.f12883c.get(method.getReturnType()) != null) {
            fieldInfo.fieldClassMixIn = true;
        }
        int i = 0;
        if (cls != null) {
            Class superclass = cls.getSuperclass();
            Method method3 = BeanUtils.getMethod(superclass, method);
            if (method3 != null) {
                getFieldInfo(beanInfo, fieldInfo, superclass, method3);
            }
            for (Class<?> cls3 : cls.getInterfaces()) {
                Method method4 = BeanUtils.getMethod(cls3, method);
                if (method4 != null) {
                    getFieldInfo(beanInfo, fieldInfo, superclass, method4);
                }
            }
        }
        m7628k(fieldInfo, method.getDeclaredAnnotations());
        if (!cls.getName().startsWith("java.lang", 0) && (field = BeanUtils.getField(cls, method)) != null) {
            fieldInfo.features |= 4503599627370496L;
            getFieldInfo(beanInfo, fieldInfo, cls, field);
        }
        boolean z = beanInfo.f116569kotlin;
        if (!z || beanInfo.creatorConstructor == null || beanInfo.createParameterNames == null) {
            return;
        }
        String str = BeanUtils.getterName(method, z, null);
        while (true) {
            String[] strArr = beanInfo.createParameterNames;
            if (i >= strArr.length) {
                return;
            }
            if (str.equals(strArr[i])) {
                Annotation[][] parameterAnnotations = beanInfo.creatorConstructor.getParameterAnnotations();
                if (i < parameterAnnotations.length) {
                    m7628k(fieldInfo, parameterAnnotations[i]);
                    return;
                }
            }
            i++;
        }
    }
}
