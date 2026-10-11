package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import com.sunia.HTREnginev2.gbk;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes3.dex */
public interface ObjectReader<T> {
    public static final long HASH_TYPE = 435678704704L;

    default void acceptExtra(Object obj, String str, Object obj2, long j) {
    }

    default ObjectReader autoType(JSONReader.Context context, long j) {
        return context.getObjectReaderAutoType(j);
    }

    default T createInstance() {
        return createInstance(0L);
    }

    default T createInstanceNoneDefaultConstructor(Map<Long, Object> map) {
        throw new UnsupportedOperationException();
    }

    default Function getBuildFunction() {
        return null;
    }

    default long getFeatures() {
        return 0L;
    }

    default FieldReader getFieldReader(long j) {
        return null;
    }

    default FieldReader getFieldReaderLCase(long j) {
        return null;
    }

    default Class<T> getObjectClass() {
        return null;
    }

    default String getTypeKey() {
        return ObjectWriterAdapter.f12832t;
    }

    default long getTypeKeyHash() {
        return HASH_TYPE;
    }

    default T readArrayMappingJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        throw new UnsupportedOperationException();
    }

    default T readArrayMappingObject(JSONReader jSONReader, Type type, Object obj, long j) {
        throw new UnsupportedOperationException();
    }

    default T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.isArray() && jSONReader.isSupportBeanArray()) {
            return readArrayMappingJSONBObject(jSONReader, type, obj, j);
        }
        jSONReader.nextIfObjectStart();
        int i = 0;
        T t = null;
        while (!jSONReader.nextIfObjectEnd()) {
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (readFieldNameHashCode == getTypeKeyHash() && i == 0) {
                long readTypeHashCode = jSONReader.readTypeHashCode();
                JSONReader.Context context = jSONReader.context;
                ObjectReader autoType = autoType(context, readTypeHashCode);
                if (autoType == null) {
                    String string = jSONReader.getString();
                    ObjectReader objectReaderAutoType = context.getObjectReaderAutoType(string, null);
                    if (objectReaderAutoType == null) {
                        throw new JSONException(jSONReader.info("No suitable ObjectReader found for" + string));
                    }
                    autoType = objectReaderAutoType;
                }
                if (autoType != this) {
                    return autoType.readJSONBObject(jSONReader, type, obj, j);
                }
            } else if (readFieldNameHashCode != 0) {
                FieldReader fieldReader = getFieldReader(readFieldNameHashCode);
                if (fieldReader == null && jSONReader.isSupportSmartMatch(getFeatures() | j)) {
                    fieldReader = getFieldReaderLCase(jSONReader.getNameHashCodeLCase());
                }
                if (fieldReader == null) {
                    jSONReader.skipValue();
                } else {
                    if (t == null) {
                        t = createInstance(jSONReader.context.features | j);
                    }
                    fieldReader.readFieldValue(jSONReader, t);
                }
            }
            i++;
        }
        return t == null ? createInstance(jSONReader.context.features | j) : t;
    }

    default T readObject(JSONReader jSONReader) {
        return readObject(jSONReader, null, null, getFeatures());
    }

    T readObject(JSONReader jSONReader, Type type, Object obj, long j);

    default ObjectReader autoType(ObjectReaderProvider objectReaderProvider, long j) {
        return objectReaderProvider.getObjectReader(j);
    }

    default T createInstance(long j) {
        throw new UnsupportedOperationException();
    }

    default FieldReader getFieldReader(String str) {
        long hashCode64 = Fnv.hashCode64(str);
        FieldReader fieldReader = getFieldReader(hashCode64);
        if (fieldReader != null) {
            return fieldReader;
        }
        long hashCode64LCase = Fnv.hashCode64LCase(str);
        return hashCode64LCase != hashCode64 ? getFieldReaderLCase(hashCode64LCase) : fieldReader;
    }

    default T readObject(JSONReader jSONReader, long j) {
        return readObject(jSONReader, null, null, j);
    }

    default T createInstance(Collection collection) {
        throw new UnsupportedOperationException(getClass().getName());
    }

    default T createInstance(Map map, JSONReader.Feature... featureArr) {
        long j = 0;
        for (JSONReader.Feature feature : featureArr) {
            j |= feature.mask;
        }
        return createInstance(map, j);
    }

    default T createInstance(Map map, long j) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        Object obj = map.get(getTypeKey());
        if (obj instanceof String) {
            String str = (String) obj;
            ObjectReader autoType = ((JSONReader.Feature.SupportAutoType.mask & j) != 0 || (this instanceof gbk)) ? autoType(objectReaderProvider, Fnv.hashCode64(str)) : null;
            if (autoType == null) {
                autoType = objectReaderProvider.getObjectReader(str, getObjectClass(), getFeatures() | j);
            }
            if (autoType != this && autoType != null) {
                return autoType.createInstance(map, j);
            }
        }
        T createInstance = createInstance(0L);
        for (Map.Entry entry : map.entrySet()) {
            String obj2 = entry.getKey().toString();
            Object value = entry.getValue();
            FieldReader fieldReader = getFieldReader(obj2);
            if (fieldReader == null) {
                acceptExtra(createInstance, obj2, entry.getValue(), j);
            } else {
                fieldReader.acceptAny(createInstance, value, j);
            }
        }
        Function buildFunction = getBuildFunction();
        return buildFunction != null ? (T) buildFunction.apply(createInstance) : createInstance;
    }
}
