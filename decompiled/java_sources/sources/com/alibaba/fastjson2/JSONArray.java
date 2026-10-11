package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplEnum;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class JSONArray extends ArrayList<Object> {
    static ObjectWriter<JSONArray> arrayWriter = null;
    private static final long serialVersionUID = 1;

    public JSONArray() {
    }

    public static JSONArray copyOf(Collection collection) {
        return new JSONArray((Collection<?>) collection);
    }

    public static JSONArray from(Object obj) {
        return (JSONArray) JSON.toJSON(obj);
    }

    /* renamed from: of */
    public static JSONArray m7268of(Object... objArr) {
        return new JSONArray(objArr);
    }

    public static JSONArray parse(String str, JSONReader.Feature... featureArr) {
        return JSON.parseArray(str, featureArr);
    }

    public static JSONArray parseArray(String str, JSONReader.Feature... featureArr) {
        return JSON.parseArray(str, featureArr);
    }

    public JSONArray addArray() {
        JSONArray jSONArray = new JSONArray();
        add(jSONArray);
        return jSONArray;
    }

    public JSONObject addObject() {
        JSONObject jSONObject = new JSONObject();
        add(jSONObject);
        return jSONObject;
    }

    @Override // java.util.ArrayList
    public Object clone() {
        return new JSONArray(this);
    }

    public JSONArray fluentAdd(Object obj) {
        add(obj);
        return this;
    }

    public JSONArray fluentAddAll(Collection<?> collection) {
        addAll(collection);
        return this;
    }

    public JSONArray fluentClear() {
        clear();
        return this;
    }

    public JSONArray fluentRemove(int i) {
        remove(i);
        return this;
    }

    public JSONArray fluentRemoveAll(Collection<?> collection) {
        removeAll(collection);
        return this;
    }

    public JSONArray fluentSet(int i, Object obj) {
        set(i, obj);
        return this;
    }

    public BigDecimal getBigDecimal(int i) {
        Object obj = get(i);
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

    public BigInteger getBigInteger(int i) {
        Object obj = get(i);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return obj instanceof BigInteger ? (BigInteger) obj : obj instanceof BigDecimal ? ((BigDecimal) obj).toBigInteger() : BigInteger.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return new BigInteger(str);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to BigInteger");
    }

    public Boolean getBoolean(int i) {
        Object obj = get(i);
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
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return Boolean.valueOf("true".equalsIgnoreCase(str) || "1".equals(str));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Boolean");
    }

    public boolean getBooleanValue(int i) {
        Object obj = get(i);
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
            String str = (String) obj;
            return "true".equalsIgnoreCase(str) || "1".equals(str);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to boolean value");
    }

    public Byte getByte(int i) {
        Object obj = get(i);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return Byte.valueOf(Byte.parseByte(str));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Byte");
    }

    public byte getByteValue(int i) {
        Object obj = get(i);
        if (obj == null) {
            return (byte) 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).byteValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return (byte) 0;
            }
            return Byte.parseByte(str);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to byte value");
    }

    public Date getDate(int i) {
        Object obj = get(i);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        if (obj instanceof Number) {
            long longValue = ((Number) obj).longValue();
            if (longValue == 0) {
                return null;
            }
            return new Date(longValue);
        }
        return TypeUtils.toDate(obj);
    }

    public Double getDouble(int i) {
        Object obj = get(i);
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
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return Double.valueOf(Double.parseDouble(str));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Double");
    }

    public double getDoubleValue(int i) {
        Object obj = get(i);
        if (obj == null) {
            return 0.0d;
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return 0.0d;
            }
            return Double.parseDouble(str);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to double value");
    }

    public Float getFloat(int i) {
        Object obj = get(i);
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
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return Float.valueOf(Float.parseFloat(str));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Float");
    }

    public float getFloatValue(int i) {
        Object obj = get(i);
        if (obj == null) {
            return 0.0f;
        }
        if (obj instanceof Number) {
            return ((Number) obj).floatValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return 0.0f;
            }
            return Float.parseFloat(str);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to float value");
    }

    public Instant getInstant(int i) {
        Object obj = get(i);
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

    public int getIntValue(int i) {
        Object obj = get(i);
        if (obj == null) {
            return 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return 0;
            }
            return Integer.parseInt(str);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to int value");
    }

    public Integer getInteger(int i) {
        Object obj = get(i);
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
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(str));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Integer");
    }

    public JSONArray getJSONArray(int i) {
        Object obj = get(i);
        if (obj == null) {
            return null;
        }
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return JSONFactory.f12221E.readObject(JSONReader.m7296of(str), null, null, 0L);
        }
        if (obj instanceof Collection) {
            JSONArray jSONArray = new JSONArray((Collection<?>) obj);
            set(i, jSONArray);
            return jSONArray;
        }
        if (obj instanceof Object[]) {
            return m7268of((Object[]) obj);
        }
        if (!obj.getClass().isArray()) {
            return null;
        }
        int length = Array.getLength(obj);
        JSONArray jSONArray2 = new JSONArray(length);
        for (int i2 = 0; i2 < length; i2++) {
            jSONArray2.add(Array.get(obj, i2));
        }
        return jSONArray2;
    }

    public JSONObject getJSONObject(int i) {
        Object obj = get(i);
        if (obj == null) {
            return null;
        }
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return JSONFactory.f12222F.readObject(JSONReader.m7296of(str), null, null, 0L);
        }
        if (obj instanceof Map) {
            JSONObject jSONObject = new JSONObject((Map) obj);
            set(i, jSONObject);
            return jSONObject;
        }
        ObjectWriter objectWriter = JSONFactory.defaultObjectWriterProvider.getObjectWriter((Class) obj.getClass());
        if (objectWriter instanceof ObjectWriterAdapter) {
            return ((ObjectWriterAdapter) objectWriter).toJSONObject(obj);
        }
        return null;
    }

    public Long getLong(int i) {
        Object obj = get(i);
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
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return Long.valueOf(Long.parseLong(str));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Long");
    }

    public long getLongValue(int i) {
        Object obj = get(i);
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return 0L;
            }
            return Long.parseLong(str);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to long value");
    }

    public <T> T getObject(int i, Type type, JSONReader.Feature... featureArr) {
        T t = (T) get(i);
        if (t == null) {
            return null;
        }
        Class<?> cls = t.getClass();
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        Function typeConvert = objectReaderProvider.getTypeConvert(cls, type);
        if (typeConvert != null) {
            return (T) typeConvert.apply(t);
        }
        long j = 0;
        boolean z = false;
        for (JSONReader.Feature feature : featureArr) {
            j |= feature.mask;
            if (feature == JSONReader.Feature.FieldBased) {
                z = true;
            }
        }
        if (t instanceof Map) {
            return (T) objectReaderProvider.getObjectReader(type, z).createInstance((Map) t, j);
        }
        if (t instanceof Collection) {
            return (T) objectReaderProvider.getObjectReader(type, z).createInstance((Collection) t);
        }
        Class<?> mapping = TypeUtils.getMapping(type);
        if (mapping.isInstance(t)) {
            return t;
        }
        JSONReader m7296of = JSONReader.m7296of(JSON.toJSONString(t));
        m7296of.context.config(featureArr);
        return (T) objectReaderProvider.getObjectReader(mapping, z).readObject(m7296of, null, null, 0L);
    }

    public Short getShort(int i) {
        Object obj = get(i);
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
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return null;
            }
            return Short.valueOf(Short.parseShort(str));
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to Short");
    }

    public short getShortValue(int i) {
        Object obj = get(i);
        if (obj == null) {
            return (short) 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).shortValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equalsIgnoreCase(str)) {
                return (short) 0;
            }
            return Short.parseShort(str);
        }
        throw new JSONException("Can not cast '" + obj.getClass() + "' to short value");
    }

    public String getString(int i) {
        Object obj = get(i);
        if (obj == null) {
            return null;
        }
        return obj instanceof String ? (String) obj : obj instanceof Date ? DateUtils.toString(((Date) obj).getTime(), false, DateUtils.DEFAULT_ZONE_ID) : ((obj instanceof Boolean) || (obj instanceof Character) || (obj instanceof Number) || (obj instanceof UUID) || (obj instanceof Enum)) ? obj.toString() : JSON.toJSONString(obj);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        int size = super.size();
        if (i < 0) {
            int i2 = i + size;
            if (i2 >= 0) {
                return super.set(i2, obj);
            }
            super.add(0, obj);
            return null;
        }
        if (i < size) {
            return super.set(i, obj);
        }
        if (i < size + 4096) {
            while (true) {
                int i3 = i - 1;
                if (i == size) {
                    break;
                }
                super.add(null);
                i = i3;
            }
            super.add(obj);
        }
        return null;
    }

    /* renamed from: to */
    public <T> T m7270to(Type type) {
        if (type == String.class) {
            return (T) toString();
        }
        return (T) JSONFactory.defaultObjectReaderProvider.getObjectReader(type).createInstance(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T[] toArray(Class<T> cls, JSONReader.Feature... featureArr) {
        long j = 0;
        boolean z = false;
        for (JSONReader.Feature feature : featureArr) {
            j |= feature.mask;
            if (feature == JSONReader.Feature.FieldBased) {
                z = true;
            }
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, z);
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, size()));
        for (int i = 0; i < size(); i++) {
            Object obj = get(i);
            if (obj instanceof JSONObject) {
                obj = objectReader.createInstance((Map) obj, j);
            } else if (obj instanceof Map) {
                obj = objectReader.createInstance((Map) obj, j);
            } else if (obj != null && !cls.isInstance(obj)) {
                Class<?> cls2 = obj.getClass();
                Function typeConvert = objectReaderProvider.getTypeConvert(cls2, cls);
                if (typeConvert == 0) {
                    throw new JSONException(cls2 + " cannot be converted to " + cls);
                }
                tArr[i] = typeConvert.apply(obj);
            }
            tArr[i] = obj;
        }
        return tArr;
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

    public <T> List<T> toJavaList(Class<T> cls, JSONReader.Feature... featureArr) {
        return toList(cls, featureArr);
    }

    @Deprecated
    public <T> T toJavaObject(Type type) {
        return (T) m7270to(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> List<T> toList(Class<T> cls, JSONReader.Feature... featureArr) {
        long j = 0;
        boolean z = false;
        for (JSONReader.Feature feature : featureArr) {
            j |= feature.mask;
            if (feature == JSONReader.Feature.FieldBased) {
                z = true;
            }
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, z);
        ArrayList arrayList = new ArrayList(size());
        for (int i = 0; i < size(); i++) {
            Object obj = get(i);
            if (obj instanceof JSONObject) {
                obj = objectReader.createInstance((Map) obj, j);
            } else if (obj instanceof Map) {
                obj = objectReader.createInstance((Map) obj, j);
            } else if (obj != null && !cls.isInstance(obj)) {
                Class<?> cls2 = obj.getClass();
                Function typeConvert = objectReaderProvider.getTypeConvert(cls2, cls);
                if (typeConvert == 0) {
                    throw new JSONException(cls2 + " cannot be converted to " + cls);
                }
                arrayList.add(typeConvert.apply(obj));
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    @Override // java.util.AbstractCollection
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

    public JSONArray(int i) {
        super(i);
    }

    public static JSONArray from(Object obj, JSONWriter.Feature... featureArr) {
        return (JSONArray) JSON.toJSON(obj, featureArr);
    }

    /* renamed from: of */
    public static JSONArray m7265of(Object obj) {
        JSONArray jSONArray = new JSONArray(1);
        jSONArray.add(obj);
        return jSONArray;
    }

    public static <T> List<T> parseArray(String str, Class<T> cls, JSONReader.Feature... featureArr) {
        return JSON.parseArray(str, (Class) cls, featureArr);
    }

    public static String toJSONString(Object obj, JSONWriter.Feature... featureArr) {
        return JSON.toJSONString(obj, featureArr);
    }

    public JSONArray fluentRemove(Object obj) {
        remove(obj);
        return this;
    }

    public JSONArray(Collection<?> collection) {
        super(collection);
    }

    public static <T> List<T> parseArray(String str, Class<T> cls) {
        return JSON.parseArray(str, (Class) cls);
    }

    public JSONArray(Object... objArr) {
        super(objArr.length);
        for (Object obj : objArr) {
            super.add(obj);
        }
    }

    /* renamed from: of */
    public static JSONArray m7266of(Object obj, Object obj2) {
        JSONArray jSONArray = new JSONArray(2);
        jSONArray.add(obj);
        jSONArray.add(obj2);
        return jSONArray;
    }

    /* renamed from: to */
    public <T> T m7269to(Class<T> cls) {
        if (cls == String.class) {
            return (T) toString();
        }
        return (T) JSONFactory.defaultObjectReaderProvider.getObjectReader(cls).createInstance(this);
    }

    /* renamed from: of */
    public static JSONArray m7267of(Object obj, Object obj2, Object obj3) {
        JSONArray jSONArray = new JSONArray(3);
        jSONArray.add(obj);
        jSONArray.add(obj2);
        jSONArray.add(obj3);
        return jSONArray;
    }

    public String toString(JSONWriter.Feature... featureArr) {
        JSONWriter m7327of = JSONWriter.m7327of(featureArr);
        try {
            if (((JSONWriter.Feature.ReferenceDetection.mask | JSONWriter.Feature.PrettyFormat.mask | JSONWriter.Feature.NotWriteEmptyArray.mask | JSONWriter.Feature.NotWriteDefaultValue.mask) & m7327of.context.f12331k) == 0) {
                m7327of.write(this);
            } else {
                m7327of.setRootObject(this);
                if (arrayWriter == null) {
                    arrayWriter = m7327of.getObjectWriter(JSONArray.class, JSONArray.class);
                }
                arrayWriter.write(m7327of, this, null, null, 0L);
            }
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

    public Date getDate(int i, Date date) {
        Date date2 = getDate(i);
        return date2 == null ? date : date2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getObject(int i, Class<T> cls, JSONReader.Feature... featureArr) {
        T t = (T) get(i);
        ObjectReader objectReader = null;
        if (t == 0) {
            return null;
        }
        Class<?> cls2 = t.getClass();
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        Function typeConvert = objectReaderProvider.getTypeConvert(cls2, cls);
        if (typeConvert != null) {
            return (T) typeConvert.apply(t);
        }
        long j = 0;
        boolean z = false;
        for (JSONReader.Feature feature : featureArr) {
            j |= feature.mask;
            if (feature == JSONReader.Feature.FieldBased) {
                z = true;
            }
        }
        if (t instanceof Map) {
            return (T) objectReaderProvider.getObjectReader(cls, z).createInstance((Map) t, j);
        }
        if (t instanceof Collection) {
            return (T) objectReaderProvider.getObjectReader(cls, z).createInstance((Collection) t);
        }
        Class<?> mapping = TypeUtils.getMapping(cls);
        if (mapping.isInstance(t)) {
            return t;
        }
        if (t instanceof String) {
            String str = (String) t;
            if (str.isEmpty() || "null".equals(str)) {
                return null;
            }
            if (mapping.isEnum()) {
                objectReader = objectReaderProvider.getObjectReader(mapping, z);
                if (objectReader instanceof ObjectReaderImplEnum) {
                    return (T) ((ObjectReaderImplEnum) objectReader).getEnumByHashCode(Fnv.hashCode64(str));
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

    public <T> T getObject(int i, Function<JSONObject, T> function) {
        JSONObject jSONObject = getJSONObject(i);
        if (jSONObject == null) {
            return null;
        }
        return function.apply(jSONObject);
    }
}
