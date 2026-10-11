package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.fastjson2.filter.NameFilter;
import com.alibaba.fastjson2.filter.ValueFilter;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplEnum;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.Instant;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class JSONObject extends LinkedHashMap<String, Object> implements InvocationHandler {
    static ObjectReader<JSONArray> arrayReader = null;
    private static final long serialVersionUID = 1;

    /* renamed from: com.alibaba.fastjson2.JSONObject$a */
    /* loaded from: classes3.dex */
    public static class C1726a implements Consumer<Method> {

        /* renamed from: e */
        public final Annotation f12256e;

        /* renamed from: f */
        public String f12257f;

        public C1726a(Annotation annotation) {
            this.f12256e = annotation;
        }

        @Override // java.util.function.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Method method) {
            if ("name".equals(method.getName())) {
                try {
                    String str = (String) method.invoke(this.f12256e, new Object[0]);
                    if (str.isEmpty()) {
                        return;
                    }
                    this.f12257f = str;
                } catch (IllegalAccessException | InvocationTargetException unused) {
                }
            }
        }
    }

    public JSONObject() {
    }

    public static JSONObject from(Object obj) {
        return (JSONObject) JSON.toJSON(obj);
    }

    private String getJSONFieldName(Method method) {
        String str = null;
        for (Annotation annotation : method.getAnnotations()) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            JSONField jSONField = (JSONField) BeanUtils.findAnnotation(annotation, JSONField.class);
            if (jSONField != null) {
                str = jSONField.name();
                if (str.isEmpty()) {
                    str = null;
                }
            } else if ("com.alibaba.fastjson.annotation.JSONField".equals(annotationType.getName())) {
                C1726a c1726a = new C1726a(annotation);
                BeanUtils.annotationMethods(annotationType, c1726a);
                String str2 = c1726a.f12257f;
                if (str2 != null) {
                    str = str2;
                }
            }
        }
        return str;
    }

    public static void nameFilter(Iterable<?> iterable, NameFilter nameFilter) {
        for (Object obj : iterable) {
            if (obj instanceof JSONObject) {
                ((JSONObject) obj).nameFilter(nameFilter);
            } else if (obj instanceof Iterable) {
                nameFilter((Iterable<?>) obj, nameFilter);
            }
        }
    }

    /* renamed from: of */
    public static JSONObject m7271of() {
        return new JSONObject();
    }

    public static JSONObject parse(String str, JSONReader.Feature... featureArr) {
        return JSON.parseObject(str, featureArr);
    }

    public static <T> T parseObject(String str, Class<T> cls) {
        return (T) JSON.parseObject(str, (Class) cls);
    }

    public static void valueFilter(Iterable<?> iterable, ValueFilter valueFilter) {
        for (Object obj : iterable) {
            if (obj instanceof Map) {
                valueFilter((Map) obj, valueFilter);
            } else if (obj instanceof Iterable) {
                valueFilter((Iterable<?>) obj, valueFilter);
            }
        }
    }

    public boolean containsKey(String str) {
        return super.containsKey((Object) str);
    }

    public Object eval(JSONPath jSONPath) {
        return jSONPath.eval(this);
    }

    public JSONObject fluentPut(String str, Object obj) {
        put(str, obj);
        return this;
    }

    public Object get(String str) {
        return super.get((Object) str);
    }

    public BigDecimal getBigDecimal(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return obj instanceof BigDecimal ? (BigDecimal) obj : obj instanceof BigInteger ? new BigDecimal((BigInteger) obj) : obj instanceof Float ? TypeUtils.toBigDecimal(((Float) obj).floatValue()) : obj instanceof Double ? TypeUtils.toBigDecimal(((Double) obj).doubleValue()) : BigDecimal.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            return TypeUtils.toBigDecimal((String) obj);
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? BigDecimal.ONE : BigDecimal.ZERO;
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to BigDecimal");
    }

    public BigInteger getBigInteger(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof BigInteger) {
            return (BigInteger) obj;
        }
        if (obj instanceof Number) {
            return obj instanceof BigDecimal ? ((BigDecimal) obj).toBigInteger() : BigInteger.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return new BigInteger(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to BigInteger");
    }

    public Boolean getBoolean(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof Number) {
            return Boolean.valueOf(((Number) obj).intValue() == 1);
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return Boolean.valueOf("true".equalsIgnoreCase(str2) || "1".equals(str2));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Boolean");
    }

    public boolean getBooleanValue(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return false;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue() == 1;
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            return "true".equalsIgnoreCase(str2) || "1".equals(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to boolean value");
    }

    public Object getByPath(String str) {
        return JSONPath.m7282of(str).eval(this);
    }

    public Byte getByte(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return Byte.valueOf(Byte.parseByte(str2));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Byte");
    }

    public byte getByteValue(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return (byte) 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).byteValue();
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return (byte) 0;
            }
            return Byte.parseByte(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to byte value");
    }

    public byte[] getBytes(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        if (obj instanceof String) {
            return IOUtils.decodeBase64((String) obj);
        }
        throw new JSONException("can not cast to byte[], value : " + obj);
    }

    public Date getDate(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        if (obj instanceof String) {
            long parseMillis = DateUtils.parseMillis((String) obj, DateUtils.DEFAULT_ZONE_ID);
            if (parseMillis == 0) {
                return null;
            }
            return new Date(parseMillis);
        }
        if (obj instanceof Number) {
            return new Date(((Number) obj).longValue());
        }
        return TypeUtils.toDate(obj);
    }

    public Double getDouble(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return Double.valueOf(Double.parseDouble(str2));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Double");
    }

    public double getDoubleValue(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return 0.0d;
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return 0.0d;
            }
            return Double.parseDouble(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to double value");
    }

    public Float getFloat(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Float) {
            return (Float) obj;
        }
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return Float.valueOf(Float.parseFloat(str2));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Float");
    }

    public float getFloatValue(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return 0.0f;
        }
        if (obj instanceof Number) {
            return ((Number) obj).floatValue();
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return 0.0f;
            }
            return Float.parseFloat(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to float value");
    }

    public Instant getInstant(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Instant) {
            return (Instant) obj;
        }
        if (!(obj instanceof Number)) {
            return TypeUtils.toInstant(obj);
        }
        long longValue = ((Number) obj).longValue();
        if (longValue == 0) {
            return null;
        }
        return Instant.ofEpochMilli(longValue);
    }

    public int getIntValue(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return 0;
            }
            if (str2.indexOf(46) != -1) {
                return (int) Double.parseDouble(str2);
            }
            return Integer.parseInt(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to int value");
    }

    public Integer getInteger(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return str2.indexOf(46) != -1 ? Integer.valueOf((int) Double.parseDouble(str2)) : Integer.valueOf(Integer.parseInt(str2));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Integer");
    }

    public JSONArray getJSONArray(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        if (obj instanceof JSONObject) {
            return JSONArray.m7265of(obj);
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            JSONReader m7296of = JSONReader.m7296of(str2);
            if (arrayReader == null) {
                arrayReader = m7296of.getObjectReader(JSONArray.class);
            }
            return arrayReader.readObject(m7296of, null, null, 0L);
        }
        if (obj instanceof Collection) {
            JSONArray jSONArray = new JSONArray((Collection<?>) obj);
            put(str, jSONArray);
            return jSONArray;
        }
        if (obj instanceof Object[]) {
            return JSONArray.m7268of((Object[]) obj);
        }
        if (!obj.getClass().isArray()) {
            return null;
        }
        int length = Array.getLength(obj);
        JSONArray jSONArray2 = new JSONArray(length);
        for (int i = 0; i < length; i++) {
            jSONArray2.add(Array.get(obj, i));
        }
        return jSONArray2;
    }

    public JSONObject getJSONObject(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return JSONFactory.f12222F.readObject(JSONReader.m7296of(str2), null, null, 0L);
        }
        if (obj instanceof Map) {
            JSONObject jSONObject = new JSONObject((Map) obj);
            put(str, jSONObject);
            return jSONObject;
        }
        ObjectWriter objectWriter = JSONFactory.defaultObjectWriterProvider.getObjectWriter((Class) obj.getClass());
        if (objectWriter instanceof ObjectWriterAdapter) {
            return ((ObjectWriterAdapter) objectWriter).toJSONObject(obj);
        }
        return null;
    }

    public <T> List<T> getList(String str, Class<T> cls, JSONReader.Feature... featureArr) {
        JSONArray jSONArray = getJSONArray(str);
        if (jSONArray == null) {
            return null;
        }
        return jSONArray.toList(cls, featureArr);
    }

    public Long getLong(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return str2.indexOf(46) != -1 ? Long.valueOf((long) Double.parseDouble(str2)) : Long.valueOf(Long.parseLong(str2));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Long");
    }

    public long getLongValue(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return 0L;
            }
            if (str2.indexOf(46) != -1) {
                return (long) Double.parseDouble(str2);
            }
            return Long.parseLong(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to long value");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getObject(String str, Class<T> cls, JSONReader.Feature... featureArr) {
        T t = (T) super.get((Object) str);
        ObjectReader objectReader = null;
        if (t == 0) {
            return null;
        }
        if (cls == Object.class && featureArr.length == 0) {
            return t;
        }
        int length = featureArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (featureArr[i] == JSONReader.Feature.FieldBased) {
                z = true;
                break;
            }
            i++;
        }
        Class<?> cls2 = t.getClass();
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        Function typeConvert = objectReaderProvider.getTypeConvert(cls2, cls);
        if (typeConvert != null) {
            return (T) typeConvert.apply(t);
        }
        if (t instanceof Map) {
            return (T) objectReaderProvider.getObjectReader(cls, z).createInstance((Map) t, featureArr);
        }
        if (t instanceof Collection) {
            return (T) objectReaderProvider.getObjectReader(cls, z).createInstance((Collection) t);
        }
        Class<?> mapping = TypeUtils.getMapping(cls);
        if (mapping.isInstance(t)) {
            return t;
        }
        if (t instanceof String) {
            String str2 = (String) t;
            if (str2.isEmpty() || "null".equals(str2)) {
                return null;
            }
            if (mapping.isEnum()) {
                objectReader = objectReaderProvider.getObjectReader(mapping, z);
                if (objectReader instanceof ObjectReaderImplEnum) {
                    return (T) ((ObjectReaderImplEnum) objectReader).getEnumByHashCode(Fnv.hashCode64(str2));
                }
            }
        }
        String jSONString = JSON.toJSONString(t);
        JSONReader m7296of = JSONReader.m7296of(jSONString);
        m7296of.context.config(featureArr);
        if (objectReader == null) {
            objectReader = objectReaderProvider.getObjectReader(mapping, z);
        }
        T t2 = (T) objectReader.readObject(m7296of, null, null, 0L);
        if (m7296of.isEnd()) {
            return t2;
        }
        throw new JSONException("not support input " + jSONString);
    }

    public Object getOrDefault(String str, Object obj) {
        Object obj2 = super.get((Object) str);
        return obj2 == null ? obj : obj2;
    }

    public Short getShort(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Short) {
            return (Short) obj;
        }
        if (obj instanceof Number) {
            return Short.valueOf(((Number) obj).shortValue());
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return null;
            }
            return Short.valueOf(Short.parseShort(str2));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Short");
    }

    public short getShortValue(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return (short) 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).shortValue();
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return (short) 0;
            }
            return Short.parseShort(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to short value");
    }

    public int getSize(String str) {
        Object obj = get(str);
        if (obj instanceof Map) {
            return ((Map) obj).size();
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size();
        }
        return 0;
    }

    public String getString(String str) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return null;
        }
        return obj instanceof String ? (String) obj : obj instanceof Date ? DateUtils.toString(((Date) obj).getTime(), false, DateUtils.DEFAULT_ZONE_ID) : ((obj instanceof Boolean) || (obj instanceof Character) || (obj instanceof Number) || (obj instanceof UUID) || (obj instanceof Enum)) ? obj.toString() : JSON.toJSONString(obj);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r11v42 boolean, still in use, count: 2, list:
          (r11v42 boolean) from 0x00e6: IF  (r11v42 boolean) != false  -> B:84:0x00ea A[HIDDEN]
          (r11v42 boolean) from 0x00ea: PHI (r11v12 boolean) = (r11v11 boolean), (r11v42 boolean) binds: [B:100:0x00e9, B:40:0x00e6] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // java.lang.reflect.InvocationHandler
    public java.lang.Object invoke(java.lang.Object r11, java.lang.reflect.Method r12, java.lang.Object[] r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.JSONObject.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
    }

    public JSONArray putArray(String str) {
        JSONArray jSONArray = new JSONArray();
        put(str, jSONArray);
        return jSONArray;
    }

    public JSONObject putObject(String str) {
        JSONObject jSONObject = new JSONObject();
        put(str, jSONObject);
        return jSONObject;
    }

    /* renamed from: to */
    public <T> T m7280to(Function<JSONObject, T> function) {
        return function.apply(this);
    }

    public byte[] toJSONBBytes(JSONWriter.Feature... featureArr) {
        JSONWriter ofJSONB = JSONWriter.ofJSONB(featureArr);
        try {
            ofJSONB.setRootObject(this);
            ofJSONB.write(this);
            byte[] bytes = ofJSONB.getBytes();
            ofJSONB.close();
            return bytes;
        } catch (Throwable th) {
            if (ofJSONB != null) {
                try {
                    ofJSONB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public String toJSONString(JSONWriter.Feature... featureArr) {
        return toString(featureArr);
    }

    public <T> T toJavaObject(Class<T> cls, JSONReader.Feature... featureArr) {
        long j = 0;
        boolean z = false;
        for (JSONReader.Feature feature : featureArr) {
            if (feature == JSONReader.Feature.FieldBased) {
                z = true;
            }
            j |= feature.mask;
        }
        if (cls == String.class) {
            return (T) toString();
        }
        return (T) JSONFactory.defaultObjectReaderProvider.getObjectReader(cls, z).createInstance(this, j);
    }

    @Override // java.util.AbstractMap
    public String toString() {
        JSONWriter m7324of = JSONWriter.m7324of();
        try {
            m7324of.setRootObject(this);
            m7324of.write(this);
            String obj = m7324of.toString();
            m7324of.close();
            return obj;
        } catch (Throwable th) {
            if (m7324of != null) {
                try {
                    m7324of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public JSONObject(int i) {
        super(i);
    }

    public static JSONObject from(Object obj, JSONWriter.Feature... featureArr) {
        return (JSONObject) JSON.toJSON(obj, featureArr);
    }

    /* renamed from: of */
    public static JSONObject m7272of(String str, Object obj) {
        JSONObject jSONObject = new JSONObject(1);
        jSONObject.put(str, obj);
        return jSONObject;
    }

    public static <T> T parseObject(String str, Class<T> cls, JSONReader.Feature... featureArr) {
        return (T) JSON.parseObject(str, (Class) cls, featureArr);
    }

    public static String toJSONString(Object obj, JSONWriter.Feature... featureArr) {
        return JSON.toJSONString(obj, featureArr);
    }

    @Override // java.util.HashMap, java.util.AbstractMap
    public JSONObject clone() {
        return new JSONObject(this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if ((obj instanceof Number) || (obj instanceof Character) || (obj instanceof Boolean) || (obj instanceof UUID)) {
            return super.containsKey(obj) || super.containsKey((Object) obj.toString());
        }
        return super.containsKey(obj);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Object obj2;
        return (((obj instanceof Number) || (obj instanceof Character) || (obj instanceof Boolean) || (obj instanceof UUID)) && (obj2 = super.get((Object) obj.toString())) != null) ? obj2 : super.get(obj);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
    public Object getOrDefault(Object obj, Object obj2) {
        if (!(obj instanceof Number) && !(obj instanceof Character) && !(obj instanceof Boolean) && !(obj instanceof UUID)) {
            Object obj3 = super.get(obj);
            return obj3 == null ? obj2 : obj3;
        }
        return getOrDefault(obj.toString(), obj2);
    }

    /* renamed from: to */
    public <T> T m7279to(Type type, JSONReader.Feature... featureArr) {
        long j = 0;
        boolean z = false;
        for (JSONReader.Feature feature : featureArr) {
            if (feature == JSONReader.Feature.FieldBased) {
                z = true;
            }
            j |= feature.mask;
        }
        if (type == String.class) {
            return (T) toString();
        }
        return (T) JSONFactory.defaultObjectReaderProvider.getObjectReader(type, z).createInstance(this, j);
    }

    public JSONObject(int i, float f) {
        super(i, f);
    }

    public static <T> T parseObject(String str, Type type, JSONReader.Feature... featureArr) {
        return (T) JSON.parseObject(str, type, featureArr);
    }

    public JSONObject(int i, float f, boolean z) {
        super(i, f, z);
    }

    /* renamed from: of */
    public static JSONObject m7273of(String str, Object obj, String str2, Object obj2) {
        JSONObject jSONObject = new JSONObject(2);
        jSONObject.put(str, obj);
        jSONObject.put(str2, obj2);
        return jSONObject;
    }

    public static <T> T parseObject(String str, TypeReference<T> typeReference, JSONReader.Feature... featureArr) {
        return (T) JSON.parseObject(str, typeReference, featureArr);
    }

    public JSONObject(Map map) {
        super(map);
    }

    public static JSONObject parseObject(String str) {
        return JSON.parseObject(str);
    }

    public static void nameFilter(Map map, NameFilter nameFilter) {
        String str;
        String process;
        Iterator it2 = map.entrySet().iterator();
        JSONObject jSONObject = null;
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof JSONObject) {
                ((JSONObject) value).nameFilter(nameFilter);
            } else if (value instanceof Iterable) {
                nameFilter((Iterable<?>) value, nameFilter);
            }
            if ((key instanceof String) && (process = nameFilter.process(map, (str = (String) key), value)) != null && !process.equals(str)) {
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                jSONObject.put(process, value);
                it2.remove();
            }
        }
        if (jSONObject != null) {
            map.putAll(jSONObject);
        }
    }

    public static void valueFilter(Map map, ValueFilter valueFilter) {
        Object apply;
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Map) {
                valueFilter((Map) value, valueFilter);
            } else if (value instanceof Iterable) {
                valueFilter((Iterable<?>) value, valueFilter);
            }
            if ((key instanceof String) && (apply = valueFilter.apply(map, (String) key, value)) != value) {
                entry.setValue(apply);
            }
        }
    }

    /* renamed from: of */
    public static JSONObject m7274of(String str, Object obj, String str2, Object obj2, String str3, Object obj3) {
        JSONObject jSONObject = new JSONObject(3);
        jSONObject.put(str, obj);
        jSONObject.put(str2, obj2);
        jSONObject.put(str3, obj3);
        return jSONObject;
    }

    public String toString(JSONWriter.Feature... featureArr) {
        JSONWriter m7327of = JSONWriter.m7327of(featureArr);
        try {
            m7327of.setRootObject(this);
            m7327of.write(this);
            String obj = m7327of.toString();
            m7327of.close();
            return obj;
        } catch (Throwable th) {
            if (m7327of != null) {
                try {
                    m7327of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public <T> T toJavaObject(Type type, JSONReader.Feature... featureArr) {
        return (T) m7279to(type, featureArr);
    }

    /* renamed from: to */
    public <T> T m7277to(TypeReference<T> typeReference, JSONReader.Feature... featureArr) {
        return (T) m7279to(typeReference.getType(), featureArr);
    }

    public <T> T toJavaObject(TypeReference<T> typeReference, JSONReader.Feature... featureArr) {
        return (T) m7277to(typeReference, featureArr);
    }

    public boolean getBooleanValue(String str, boolean z) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return z;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue() == 1;
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            return "true".equalsIgnoreCase(str2) || "1".equals(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to boolean value");
    }

    /* renamed from: to */
    public <T> T m7278to(Class<T> cls, JSONReader.Feature... featureArr) {
        long j = 0;
        boolean z = false;
        for (JSONReader.Feature feature : featureArr) {
            if (feature == JSONReader.Feature.FieldBased) {
                z = true;
            }
            j |= feature.mask;
        }
        if (cls == String.class) {
            return (T) toString();
        }
        return (T) JSONFactory.defaultObjectReaderProvider.getObjectReader(cls, z).createInstance(this, j);
    }

    /* renamed from: of */
    public static JSONObject m7275of(String str, Object obj, String str2, Object obj2, String str3, Object obj3, String str4, Object obj4) {
        JSONObject jSONObject = new JSONObject(4);
        jSONObject.put(str, obj);
        jSONObject.put(str2, obj2);
        jSONObject.put(str3, obj3);
        jSONObject.put(str4, obj4);
        return jSONObject;
    }

    public Date getDate(String str, Date date) {
        Date date2 = getDate(str);
        return date2 == null ? date : date2;
    }

    public int getIntValue(String str, int i) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return i;
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return i;
            }
            if (str2.indexOf(46) != -1) {
                return (int) Double.parseDouble(str2);
            }
            return Integer.parseInt(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to int value");
    }

    public long getLongValue(String str, long j) {
        Object obj = super.get((Object) str);
        if (obj == null) {
            return j;
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty() || "null".equalsIgnoreCase(str2)) {
                return j;
            }
            if (str2.indexOf(46) != -1) {
                return (long) Double.parseDouble(str2);
            }
            return Long.parseLong(str2);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to long value");
    }

    /* renamed from: of */
    public static JSONObject m7276of(String str, Object obj, String str2, Object obj2, String str3, Object obj3, String str4, Object obj4, String str5, Object obj5) {
        JSONObject jSONObject = new JSONObject(5);
        jSONObject.put(str, obj);
        jSONObject.put(str2, obj2);
        jSONObject.put(str3, obj3);
        jSONObject.put(str4, obj4);
        jSONObject.put(str5, obj5);
        return jSONObject;
    }

    public void valueFilter(ValueFilter valueFilter) {
        valueFilter(this, valueFilter);
    }

    public void nameFilter(NameFilter nameFilter) {
        nameFilter(this, nameFilter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getObject(String str, Type type, JSONReader.Feature... featureArr) {
        T t = (T) super.get((Object) str);
        if (t == 0) {
            return null;
        }
        if (type == Object.class && featureArr.length == 0) {
            return t;
        }
        int length = featureArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (featureArr[i] == JSONReader.Feature.FieldBased) {
                z = true;
                break;
            }
            i++;
        }
        Class<?> cls = t.getClass();
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        Function typeConvert = objectReaderProvider.getTypeConvert(cls, type);
        if (typeConvert != null) {
            return (T) typeConvert.apply(t);
        }
        if (t instanceof Map) {
            return (T) objectReaderProvider.getObjectReader(type, z).createInstance((Map) t, featureArr);
        }
        if (t instanceof Collection) {
            return (T) objectReaderProvider.getObjectReader(type, z).createInstance((Collection) t);
        }
        if ((type instanceof Class) && ((Class) type).isInstance(t)) {
            return t;
        }
        if (t instanceof String) {
            String str2 = (String) t;
            if (str2.isEmpty() || "null".equals(str2)) {
                return null;
            }
        }
        JSONReader m7296of = JSONReader.m7296of(JSON.toJSONString(t));
        m7296of.context.config(featureArr);
        return (T) objectReaderProvider.getObjectReader(type, z).readObject(m7296of, null, null, 0L);
    }

    public <T> T getObject(String str, TypeReference<T> typeReference, JSONReader.Feature... featureArr) {
        return (T) getObject(str, typeReference.type, featureArr);
    }

    public <T> T getObject(String str, Function<JSONObject, T> function) {
        JSONObject jSONObject = getJSONObject(str);
        if (jSONObject == null) {
            return null;
        }
        return function.apply(jSONObject);
    }
}
