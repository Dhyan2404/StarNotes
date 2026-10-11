package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.JdbcSupport;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sunia.HTREnginev2.aak;
import com.sunia.HTREnginev2.f9k;
import com.sunia.HTREnginev2.g9k;
import com.sunia.HTREnginev2.h8k;
import com.sunia.HTREnginev2.h9k;
import com.sunia.HTREnginev2.s7k;
import com.sunia.HTREnginev2.s9k;
import com.sunia.HTREnginev2.t9k;
import com.sunia.HTREnginev2.u9k;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZonedDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;

/* loaded from: classes3.dex */
public abstract class FieldReader<T> implements Comparable<FieldReader> {
    public final Object defaultValue;

    /* renamed from: e */
    public final boolean f12468e;

    /* renamed from: f */
    public final long f12469f;
    public final long features;
    public final Field field;
    public final Class fieldClass;
    public final String fieldName;
    protected final long fieldOffset;
    public final Type fieldType;
    public final String format;

    /* renamed from: g */
    public final long f12470g;

    /* renamed from: h */
    public volatile ObjectReader f12471h;

    /* renamed from: i */
    public volatile JSONPath f12472i;

    /* renamed from: j */
    public final boolean f12473j;

    /* renamed from: k */
    public final boolean f12474k;

    /* renamed from: l */
    public Type f12475l;
    public final Locale locale;

    /* renamed from: m */
    public Class f12476m;
    public final Method method;

    /* renamed from: n */
    public volatile ObjectReader f12477n;
    public final int ordinal;

    public FieldReader(String str, Type type, Class cls, int i, long j, String str2, Locale locale, Object obj, Method method, Field field) {
        this.fieldName = str;
        this.fieldType = type;
        this.fieldClass = cls;
        boolean z = false;
        this.f12468e = cls != null && (cls.isPrimitive() || cls == String.class || cls == List.class || Serializable.class.isAssignableFrom(cls) || Modifier.isInterface(cls.getModifiers()));
        this.features = j;
        this.f12469f = Fnv.hashCode64(str);
        this.f12470g = Fnv.hashCode64LCase(str);
        this.ordinal = i;
        this.format = str2;
        this.locale = locale;
        this.defaultValue = obj;
        this.method = method;
        this.field = field;
        this.f12474k = (field != null && Modifier.isFinal(field.getModifiers())) || (FieldInfo.READ_ONLY & j) != 0;
        long objectFieldOffset = (field == null || (j & FieldInfo.DISABLE_UNSAFE) != 0) ? -1L : JDKUtils.UNSAFE.objectFieldOffset(field);
        this.fieldOffset = objectFieldOffset;
        if (objectFieldOffset == -1 && field != null && method == null) {
            try {
                field.setAccessible(true);
            } catch (Throwable unused) {
            }
        }
        if (cls != null && !cls.isPrimitive() && cls != String.class && cls != List.class && cls != Map.class && !cls.isEnum()) {
            z = BeanUtils.isNoneStaticMemberClass(method != null ? method.getDeclaringClass() : field != null ? field.getDeclaringClass() : null, cls);
        }
        this.f12473j = z;
    }

    /* renamed from: a */
    public static ObjectReader m7434a(Type type, Class cls, String str, Locale locale) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        String typeName = TypeUtils.getTypeName(type);
        typeName.hashCode();
        char c = 65535;
        switch (typeName.hashCode()) {
            case -1374008726:
                if (typeName.equals("byte[]")) {
                    c = 0;
                    break;
                }
                break;
            case 2887:
                if (typeName.equals("[B")) {
                    c = 1;
                    break;
                }
                break;
            case 1087757882:
                if (typeName.equals("java.sql.Date")) {
                    c = 2;
                    break;
                }
                break;
            case 1088242009:
                if (typeName.equals("java.sql.Time")) {
                    c = 3;
                    break;
                }
                break;
            case 1252880906:
                if (typeName.equals("java.sql.Timestamp")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                return new h8k(str);
            case 2:
                return new JdbcSupport.DateReader(str, locale);
            case 3:
                return new JdbcSupport.TimeReader(str, locale);
            case 4:
                return new JdbcSupport.TimestampReader(str, locale);
            default:
                if (Calendar.class.isAssignableFrom(cls)) {
                    return s7k.m57135a(str, locale);
                }
                if (cls == Date.class) {
                    return ObjectReaderImplDate.m7444of(str, locale);
                }
                if (cls == ZonedDateTime.class) {
                    return aak.m52986a(str, locale);
                }
                if (cls == LocalDateTime.class) {
                    return new g9k(str, locale);
                }
                if (cls == LocalDate.class) {
                    return f9k.m54075a(str, locale);
                }
                if (cls == LocalTime.class) {
                    return new h9k(str, locale);
                }
                if (cls == Instant.class) {
                    return ObjectReaderImplInstant.m7448of(str, locale);
                }
                if (cls == OffsetTime.class) {
                    return t9k.m57321a(str, locale);
                }
                if (cls == OffsetDateTime.class) {
                    return s9k.m57140a(str, locale);
                }
                if (cls == Optional.class) {
                    return u9k.m57601a(type, str, locale);
                }
                return null;
        }
    }

    public abstract void accept(T t, Object obj);

    public void accept(T t, boolean z) {
        accept((FieldReader<T>) t, Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void acceptAny(T t, Object obj, long j) {
        Class cls;
        Function typeConvert;
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        boolean z = true;
        if (obj != null) {
            Class<?> cls2 = obj.getClass();
            if (!supportAcceptType(cls2)) {
                if (cls2 == String.class) {
                    if (this.fieldClass == Date.class) {
                        z = false;
                    }
                } else if (cls2 == Integer.class && (((cls = this.fieldClass) == Boolean.TYPE || cls == Boolean.class) && (JSONReader.Feature.NonZeroNumberCastToBooleanAsTrue.mask & j) != 0)) {
                    obj = Boolean.valueOf(((Integer) obj).intValue() != 0);
                }
                Class<?> cls3 = this.fieldClass;
                if (cls2 != cls3 && z && (typeConvert = objectReaderProvider.getTypeConvert(cls2, cls3)) != 0) {
                    obj = typeConvert.apply(obj);
                }
            }
        }
        if (obj != null && this.fieldType != obj.getClass()) {
            if (obj instanceof JSONObject) {
                JSONReader.Feature feature = JSONReader.Feature.SupportSmartMatch;
                obj = ((JSONObject) obj).m7279to(this.fieldType, (j & feature.mask) != 0 ? new JSONReader.Feature[]{feature} : new JSONReader.Feature[0]);
            } else if (obj instanceof JSONArray) {
                obj = ((JSONArray) obj).m7270to(this.fieldType);
            } else if (j == 0 && !this.fieldClass.isInstance(obj) && this.format == null) {
                ObjectReader initReader = getInitReader();
                obj = initReader != null ? initReader.readObject(JSONReader.m7296of(JSON.toJSONString(obj)), null, null, j) : TypeUtils.cast(obj, this.fieldClass, objectReaderProvider);
            } else if (z) {
                JSONReader m7299of = JSONReader.m7299of(JSON.toJSONString(obj), JSONFactory.createReadContext(j));
                try {
                    Object readObject = getObjectReader(m7299of).readObject(m7299of, null, this.fieldName, j);
                    if (m7299of != null) {
                        m7299of.close();
                    }
                    obj = readObject;
                } catch (Throwable th) {
                    if (m7299of != null) {
                        try {
                            m7299of.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
        }
        accept((FieldReader<T>) t, obj);
    }

    public void acceptDefaultValue(T t) {
        Object obj = this.defaultValue;
        if (obj != null) {
            accept((FieldReader<T>) t, obj);
        }
    }

    public void acceptExtra(Object obj, String str, Object obj2) {
    }

    public void addResolveTask(JSONReader jSONReader, Object obj, String str) {
        JSONPath m7282of;
        if (this.f12472i != null && this.f12472i.toString().equals(str)) {
            m7282of = this.f12472i;
        } else {
            m7282of = JSONPath.m7282of(str);
            this.f12472i = m7282of;
        }
        jSONReader.addResolveTask(this, obj, m7282of);
    }

    public ObjectReader checkObjectAutoType(JSONReader jSONReader) {
        return null;
    }

    public ObjectReader getInitReader() {
        return null;
    }

    public Class getItemClass() {
        Type type = this.f12475l;
        if (type == null) {
            return null;
        }
        if (this.f12476m == null) {
            this.f12476m = TypeUtils.getClass(type);
        }
        return this.f12476m;
    }

    public long getItemClassHash() {
        Class itemClass = getItemClass();
        if (itemClass == null) {
            return 0L;
        }
        return Fnv.hashCode64(itemClass.getName());
    }

    public ObjectReader getItemObjectReader(JSONReader.Context context) {
        if (this.f12477n != null) {
            return this.f12477n;
        }
        ObjectReader objectReader = context.getObjectReader(this.f12475l);
        this.f12477n = objectReader;
        return objectReader;
    }

    public Type getItemType() {
        return this.f12475l;
    }

    public ObjectReader getObjectReader(JSONReader jSONReader) {
        if (this.f12471h != null) {
            return this.f12471h;
        }
        ObjectReader objectReader = jSONReader.getObjectReader(this.fieldType);
        this.f12471h = objectReader;
        return objectReader;
    }

    public boolean isReadOnly() {
        return this.f12474k;
    }

    public boolean isUnwrapped() {
        return (this.features & FieldInfo.UNWRAPPED_MASK) != 0;
    }

    public void processExtra(JSONReader jSONReader, Object obj) {
        jSONReader.skipValue();
    }

    public abstract Object readFieldValue(JSONReader jSONReader);

    public abstract void readFieldValue(JSONReader jSONReader, T t);

    public void readFieldValueJSONB(JSONReader jSONReader, T t) {
        readFieldValue(jSONReader, t);
    }

    public boolean supportAcceptType(Class cls) {
        return this.fieldClass == cls;
    }

    public String toString() {
        Member member = this.method;
        if (member == null) {
            member = this.field;
        }
        return member != null ? member.getName() : this.fieldName;
    }

    public void accept(T t, byte b) {
        accept((FieldReader<T>) t, Byte.valueOf(b));
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldReader fieldReader) {
        Class<?> cls;
        Class<?> cls2;
        Class<?> declaringClass;
        Class<?> declaringClass2;
        int compareTo = this.fieldName.compareTo(fieldReader.fieldName);
        if (compareTo != 0) {
            int i = this.ordinal;
            int i2 = fieldReader.ordinal;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            return compareTo;
        }
        int i3 = isReadOnly() == fieldReader.isReadOnly() ? 0 : isReadOnly() ? 1 : -1;
        if (i3 != 0) {
            return i3;
        }
        Member member = this.field;
        if (member == null) {
            member = this.method;
        }
        Member member2 = fieldReader.field;
        if (member2 == null) {
            member2 = fieldReader.method;
        }
        if (member != null && member2 != null && member.getClass() != member2.getClass() && (declaringClass2 = member.getDeclaringClass()) != (declaringClass = member2.getDeclaringClass())) {
            if (declaringClass2.isAssignableFrom(declaringClass)) {
                return 1;
            }
            if (declaringClass.isAssignableFrom(declaringClass2)) {
                return -1;
            }
        }
        Field field = this.field;
        if (field != null && fieldReader.field != null) {
            Class<?> declaringClass3 = field.getDeclaringClass();
            Class<?> declaringClass4 = fieldReader.field.getDeclaringClass();
            for (Class<? super Object> superclass = declaringClass3.getSuperclass(); superclass != null && superclass != Object.class; superclass = superclass.getSuperclass()) {
                if (superclass == declaringClass4) {
                    return 1;
                }
            }
            do {
                declaringClass4 = declaringClass4.getSuperclass();
                if (declaringClass4 != null && declaringClass4 != Object.class) {
                }
            } while (declaringClass4 != declaringClass3);
            return -1;
        }
        Method method = this.method;
        if (method != null && fieldReader.method != null) {
            Class<?> declaringClass5 = method.getDeclaringClass();
            Class<?> declaringClass6 = fieldReader.method.getDeclaringClass();
            for (Class<? super Object> superclass2 = declaringClass5.getSuperclass(); superclass2 != null && superclass2 != Object.class; superclass2 = superclass2.getSuperclass()) {
                if (superclass2 == declaringClass6) {
                    return -1;
                }
            }
            do {
                declaringClass6 = declaringClass6.getSuperclass();
                if (declaringClass6 == null || declaringClass6 == Object.class) {
                    Class<?>[] parameterTypes = this.method.getParameterTypes();
                    Class<?>[] parameterTypes2 = fieldReader.method.getParameterTypes();
                    if (parameterTypes.length == 1 && parameterTypes2.length == 1 && (cls = parameterTypes[0]) != (cls2 = parameterTypes2[0])) {
                        if (cls.isAssignableFrom(cls2)) {
                            return 1;
                        }
                        if (cls2.isAssignableFrom(cls)) {
                            return -1;
                        }
                        if (cls.isEnum() && (cls2 == Integer.class || cls2 == Integer.TYPE)) {
                            return 1;
                        }
                        if (cls2.isEnum() && (cls == Integer.class || cls == Integer.TYPE)) {
                            return -1;
                        }
                        JSONField jSONField = (JSONField) BeanUtils.findAnnotation(this.method, JSONField.class);
                        JSONField jSONField2 = (JSONField) BeanUtils.findAnnotation(fieldReader.method, JSONField.class);
                        if (jSONField != null && jSONField2 == null) {
                            return -1;
                        }
                        if (jSONField == null && jSONField2 != null) {
                            return 1;
                        }
                    }
                    String name = this.method.getName();
                    String name2 = fieldReader.method.getName();
                    if (!name.equals(name2)) {
                        String str = BeanUtils.setterName(name, (String) null);
                        String str2 = BeanUtils.setterName(name2, (String) null);
                        if (this.fieldName.equals(str) && !fieldReader.fieldName.equals(str2)) {
                            return 1;
                        }
                        if (fieldReader.fieldName.equals(str2) && !this.fieldName.equals(str)) {
                            return -1;
                        }
                    }
                }
            } while (declaringClass6 != declaringClass5);
            return 1;
        }
        ObjectReader initReader = getInitReader();
        ObjectReader initReader2 = fieldReader.getInitReader();
        if (initReader != null && initReader2 == null) {
            return -1;
        }
        if (initReader == null && initReader2 != null) {
            return 1;
        }
        Class cls3 = this.fieldClass;
        Class cls4 = fieldReader.fieldClass;
        boolean isPrimitive = cls3.isPrimitive();
        boolean isPrimitive2 = cls4.isPrimitive();
        if (isPrimitive && !isPrimitive2) {
            return -1;
        }
        if (!isPrimitive && isPrimitive2) {
            return 1;
        }
        boolean startsWith = cls3.getName().startsWith("java.", 0);
        boolean startsWith2 = cls4.getName().startsWith("java.", 0);
        if (startsWith && !startsWith2) {
            return -1;
        }
        if (startsWith || !startsWith2) {
            return i3;
        }
        return 1;
    }

    public void accept(T t, short s) {
        accept((FieldReader<T>) t, Short.valueOf(s));
    }

    public void accept(T t, int i) {
        accept((FieldReader<T>) t, Integer.valueOf(i));
    }

    public ObjectReader getItemObjectReader(JSONReader jSONReader) {
        return getItemObjectReader(jSONReader.context);
    }

    public ObjectReader getObjectReader(JSONReader.Context context) {
        if (this.f12471h != null) {
            return this.f12471h;
        }
        ObjectReader objectReader = context.getObjectReader(this.fieldType);
        this.f12471h = objectReader;
        return objectReader;
    }

    public void accept(T t, long j) {
        accept((FieldReader<T>) t, Long.valueOf(j));
    }

    public void addResolveTask(JSONReader jSONReader, List list, int i, String str) {
        jSONReader.addResolveTask(list, i, JSONPath.m7282of(str));
    }

    public void accept(T t, char c) {
        accept((FieldReader<T>) t, Character.valueOf(c));
    }

    public void accept(T t, float f) {
        accept((FieldReader<T>) t, Float.valueOf(f));
    }

    public ObjectReader getObjectReader(ObjectReaderProvider objectReaderProvider) {
        if (this.f12471h != null) {
            return this.f12471h;
        }
        ObjectReader objectReader = objectReaderProvider.getObjectReader(this.fieldType, (this.features & JSONReader.Feature.FieldBased.mask) != 0);
        this.f12471h = objectReader;
        return objectReader;
    }

    public void accept(T t, double d) {
        accept((FieldReader<T>) t, Double.valueOf(d));
    }
}
