package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gdg;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class ObjectReaderNoneDefaultConstructor<T> extends ObjectReaderAdapter<T> {

    /* renamed from: l */
    public final String[] f12743l;

    /* renamed from: m */
    public final FieldReader[] f12744m;

    /* renamed from: n */
    public final Function<Map<Long, Object>, T> f12745n;

    public ObjectReaderNoneDefaultConstructor(Class cls, String str, String str2, long j, Function<Map<Long, Object>, T> function, String[] strArr, FieldReader[] fieldReaderArr, FieldReader[] fieldReaderArr2, Class[] clsArr, String[] strArr2) {
        super(cls, str, str2, j, null, null, clsArr, strArr2, null, m7490a(fieldReaderArr, fieldReaderArr2));
        this.f12743l = strArr;
        this.f12745n = function;
        this.f12744m = fieldReaderArr2;
    }

    /* renamed from: a */
    public static FieldReader[] m7490a(FieldReader[] fieldReaderArr, FieldReader[] fieldReaderArr2) {
        if (fieldReaderArr2 == null) {
            return fieldReaderArr;
        }
        int length = fieldReaderArr.length;
        FieldReader[] fieldReaderArr3 = (FieldReader[]) Arrays.copyOf(fieldReaderArr, fieldReaderArr2.length + length);
        System.arraycopy(fieldReaderArr2, 0, fieldReaderArr3, length, fieldReaderArr2.length);
        return fieldReaderArr3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T createInstance(Collection collection) {
        long j;
        Function typeConvert;
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it2 = collection.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            FieldReader[] fieldReaderArr = this.fieldReaders;
            if (i >= fieldReaderArr.length) {
                break;
            }
            FieldReader fieldReader = fieldReaderArr[i];
            if (next != null) {
                Class<?> cls = next.getClass();
                Class<?> cls2 = fieldReader.fieldClass;
                Type type = fieldReader.fieldType;
                if (!(type instanceof Class)) {
                    next = TypeUtils.cast(next, type, objectReaderProvider);
                } else if (cls != cls2 && (typeConvert = objectReaderProvider.getTypeConvert(cls, cls2)) != 0) {
                    next = typeConvert.apply(next);
                }
            }
            if (fieldReader instanceof gdg) {
                j = ((gdg) fieldReader).f70936p;
            } else {
                j = fieldReader.f12469f;
            }
            linkedHashMap.put(Long.valueOf(j), next);
            i++;
        }
        return createInstanceNoneDefaultConstructor(linkedHashMap);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T createInstanceNoneDefaultConstructor(Map<Long, Object> map) {
        return this.f12745n.apply(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReaderNoneDefaultConstructor, com.alibaba.fastjson2.reader.ObjectReaderNoneDefaultConstructor<T>, com.alibaba.fastjson2.reader.ObjectReaderBean] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.util.AbstractMap] */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.util.LinkedHashMap] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.AbstractMap] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.Map] */
    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        ?? r4;
        ObjectReader objectReader;
        ObjectReader checkAutoType;
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        byte type2 = jSONReader.getType();
        HashMap hashMap = null;
        if (type2 == -81) {
            jSONReader.next();
            return null;
        }
        if (type2 == -110 && (checkAutoType = jSONReader.checkAutoType(this.objectClass, getTypeNameHash(), this.features | j)) != null && checkAutoType != this) {
            return (T) checkAutoType.readJSONBObject(jSONReader, type, obj, j);
        }
        int i = 0;
        if (!jSONReader.isArray()) {
            jSONReader.nextIfObjectStart();
            int i2 = 0;
            HashMap hashMap2 = null;
            r4 = 0;
            while (!jSONReader.nextIfObjectEnd()) {
                long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
                if (readFieldNameHashCode != 0) {
                    if (readFieldNameHashCode == ObjectReader.HASH_TYPE && i2 == 0) {
                        long readTypeHashCode = jSONReader.readTypeHashCode();
                        JSONReader.Context context = jSONReader.context;
                        ObjectReader objectReaderAutoType = context.getObjectReaderAutoType(readTypeHashCode);
                        if (objectReaderAutoType == null) {
                            String string = jSONReader.getString();
                            objectReader = context.getObjectReaderAutoType(string, this.objectClass);
                            if (objectReader == null) {
                                throw new JSONException(jSONReader.info("auotype not support : " + string));
                            }
                        } else {
                            objectReader = objectReaderAutoType;
                        }
                        T t = (T) objectReader.readJSONBObject(jSONReader, type, obj, j);
                        jSONReader.nextIfComma();
                        return t;
                    }
                    FieldReader fieldReader = getFieldReader(readFieldNameHashCode);
                    if (fieldReader == null) {
                        processExtra(jSONReader, null, j);
                    } else if (jSONReader.isReference()) {
                        jSONReader.next();
                        String readString = jSONReader.readString();
                        if (hashMap2 == null) {
                            hashMap2 = new HashMap();
                        }
                        hashMap2.put(Long.valueOf(readFieldNameHashCode), readString);
                    } else {
                        Object readFieldValue = fieldReader.readFieldValue(jSONReader);
                        r4 = r4;
                        if (r4 == 0) {
                            r4 = new LinkedHashMap();
                        }
                        r4.put(Long.valueOf(fieldReader.f12469f), readFieldValue);
                    }
                }
                i2++;
                r4 = r4;
            }
            hashMap = hashMap2;
        } else {
            if (!jSONReader.isSupportBeanArray()) {
                throw new JSONException(jSONReader.info("expect object, but " + JSONB.typeName(jSONReader.getType())));
            }
            int startArray = jSONReader.startArray();
            int i3 = 0;
            r4 = 0;
            while (i3 < startArray) {
                FieldReader fieldReader2 = this.fieldReaders[i3];
                Object readFieldValue2 = fieldReader2.readFieldValue(jSONReader);
                if (r4 == 0) {
                    r4 = new LinkedHashMap();
                }
                r4.put(Long.valueOf(fieldReader2.f12469f), readFieldValue2);
                i3++;
                r4 = r4;
            }
        }
        if (r4 == 0) {
            r4 = Collections.emptyMap();
        }
        T t2 = (T) createInstanceNoneDefaultConstructor(r4);
        if (this.f12744m != null) {
            while (true) {
                FieldReader[] fieldReaderArr = this.f12744m;
                if (i >= fieldReaderArr.length) {
                    break;
                }
                FieldReader fieldReader3 = fieldReaderArr[i];
                fieldReader3.accept((FieldReader) t2, r4.get(Long.valueOf(fieldReader3.f12469f)));
                i++;
            }
        }
        if (hashMap != null) {
            for (Map.Entry entry : hashMap.entrySet()) {
                Long l = (Long) entry.getKey();
                String str = (String) entry.getValue();
                FieldReader fieldReader4 = getFieldReader(l.longValue());
                if (Constants.ATTRVAL_PARENT.equals(str)) {
                    fieldReader4.accept((FieldReader) t2, (Object) t2);
                } else {
                    fieldReader4.addResolveTask(jSONReader, t2, str);
                }
            }
        }
        return t2;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean, com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        LinkedHashMap linkedHashMap;
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, 0L);
        }
        LinkedHashMap linkedHashMap2 = null;
        int i = 0;
        if (jSONReader.isSupportBeanArray(this.features | j) && jSONReader.nextIfArrayStart()) {
            while (true) {
                FieldReader[] fieldReaderArr = this.fieldReaders;
                if (i >= fieldReaderArr.length) {
                    break;
                }
                Object readFieldValue = fieldReaderArr[i].readFieldValue(jSONReader);
                if (linkedHashMap2 == null) {
                    linkedHashMap2 = new LinkedHashMap();
                }
                linkedHashMap2.put(Long.valueOf(this.fieldReaders[i].f12469f), readFieldValue);
                i++;
                linkedHashMap2 = linkedHashMap2;
            }
            if (!jSONReader.nextIfArrayEnd()) {
                throw new JSONException(jSONReader.info("array not end, " + jSONReader.current()));
            }
            jSONReader.nextIfComma();
            Map<Long, Object> map = linkedHashMap2;
            if (linkedHashMap2 == null) {
                map = Collections.emptyMap();
            }
            return createInstanceNoneDefaultConstructor(map);
        }
        if (!jSONReader.nextIfObjectStart()) {
            if (jSONReader.isTypeRedirect()) {
                jSONReader.setTypeRedirect(false);
            } else if (jSONReader.nextIfNullOrEmptyString()) {
                return null;
            }
        }
        JSONReader.Context context = jSONReader.context;
        long j2 = this.features | j | context.features;
        LinkedHashMap linkedHashMap3 = null;
        int i2 = 0;
        while (!jSONReader.nextIfObjectEnd()) {
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (readFieldNameHashCode != 0) {
                if (readFieldNameHashCode == this.typeKeyHashCode && i2 == 0) {
                    long readTypeHashCode = jSONReader.readTypeHashCode();
                    if (readTypeHashCode != getTypeNameHash()) {
                        ObjectReader objectReaderAutoType = ((JSONReader.Feature.SupportAutoType.mask & j2) > 0L ? 1 : ((JSONReader.Feature.SupportAutoType.mask & j2) == 0L ? 0 : -1)) != 0 ? jSONReader.getObjectReaderAutoType(readTypeHashCode, this.objectClass, this.features) : context.getObjectReaderAutoType(jSONReader.getString(), this.objectClass);
                        if (objectReaderAutoType == null) {
                            objectReaderAutoType = context.getObjectReaderAutoType(jSONReader.getString(), this.objectClass, this.features);
                        }
                        if (objectReaderAutoType != null) {
                            T t = (T) objectReaderAutoType.readObject(jSONReader, type, obj, 0L);
                            jSONReader.nextIfComma();
                            return t;
                        }
                    } else {
                        continue;
                    }
                } else {
                    FieldReader fieldReader = getFieldReader(readFieldNameHashCode);
                    if (fieldReader == null && (JSONReader.Feature.SupportSmartMatch.mask & j2) != 0) {
                        fieldReader = getFieldReaderLCase(jSONReader.getNameHashCodeLCase());
                    }
                    if (fieldReader == null) {
                        processExtra(jSONReader, null, j);
                    } else {
                        Object readFieldValue2 = fieldReader.readFieldValue(jSONReader);
                        LinkedHashMap linkedHashMap4 = linkedHashMap3 == null ? new LinkedHashMap() : linkedHashMap3;
                        linkedHashMap4.put(Long.valueOf(fieldReader instanceof gdg ? ((gdg) fieldReader).f70936p : fieldReader.f12469f), readFieldValue2);
                        linkedHashMap3 = linkedHashMap4;
                    }
                }
            }
            i2++;
        }
        if (this.hasDefaultValue) {
            linkedHashMap = linkedHashMap3 == null ? new LinkedHashMap() : linkedHashMap3;
            for (FieldReader fieldReader2 : this.fieldReaders) {
                if (fieldReader2.defaultValue != null && linkedHashMap.get(Long.valueOf(fieldReader2.f12469f)) == null) {
                    linkedHashMap.put(Long.valueOf(fieldReader2.f12469f), fieldReader2.defaultValue);
                }
            }
        } else {
            linkedHashMap = linkedHashMap3;
        }
        T apply = this.f12745n.apply(linkedHashMap == null ? Collections.emptyMap() : linkedHashMap);
        if (this.f12744m != null && linkedHashMap != null) {
            while (true) {
                FieldReader[] fieldReaderArr2 = this.f12744m;
                if (i >= fieldReaderArr2.length) {
                    break;
                }
                FieldReader fieldReader3 = fieldReaderArr2[i];
                Object obj2 = linkedHashMap.get(Long.valueOf(fieldReader3.f12469f));
                if (obj2 != null) {
                    fieldReader3.accept((FieldReader) apply, obj2);
                }
                i++;
            }
        }
        jSONReader.nextIfComma();
        return apply;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReaderNoneDefaultConstructor, com.alibaba.fastjson2.reader.ObjectReaderNoneDefaultConstructor<T>, com.alibaba.fastjson2.reader.ObjectReader, com.alibaba.fastjson2.reader.ObjectReaderBean] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.AbstractMap] */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.util.LinkedHashMap] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.function.Function] */
    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T createInstance(Map map, long j) {
        long j2;
        Class<?> cls;
        Class<?> cls2;
        ?? typeConvert;
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        Object obj = map.get(getTypeKey());
        ?? r3 = 0;
        if (obj instanceof String) {
            String str = (String) obj;
            ObjectReader autoType = (JSONReader.Feature.SupportAutoType.mask & j) != 0 ? autoType(objectReaderProvider, Fnv.hashCode64(str)) : null;
            if (autoType == null) {
                autoType = objectReaderProvider.getObjectReader(str, getObjectClass(), getFeatures() | j);
            }
            if (autoType != this && autoType != null) {
                return (T) autoType.createInstance(map, j);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            String obj2 = entry.getKey().toString();
            Object value = entry.getValue();
            FieldReader fieldReader = getFieldReader(obj2);
            if (fieldReader != null) {
                if (value != null && (cls = value.getClass()) != (cls2 = fieldReader.fieldClass) && (typeConvert = objectReaderProvider.getTypeConvert(cls, cls2)) != 0) {
                    value = typeConvert.apply(value);
                }
                if (r3 == 0) {
                    r3 = new LinkedHashMap();
                }
                if (fieldReader instanceof gdg) {
                    j2 = ((gdg) fieldReader).f70936p;
                } else {
                    j2 = fieldReader.f12469f;
                }
                r3.put(Long.valueOf(j2), value);
            }
        }
        if (r3 == 0) {
            r3 = Collections.emptyMap();
        }
        T t = (T) createInstanceNoneDefaultConstructor(r3);
        int i = 0;
        while (true) {
            FieldReader[] fieldReaderArr = this.f12744m;
            if (i >= fieldReaderArr.length) {
                return t;
            }
            FieldReader fieldReader2 = fieldReaderArr[i];
            Object obj3 = map.get(fieldReader2.fieldName);
            if (obj3 != null) {
                Class<?> cls3 = obj3.getClass();
                Class<?> cls4 = fieldReader2.fieldClass;
                Type type = fieldReader2.fieldType;
                if (cls3 != cls4) {
                    ?? typeConvert2 = objectReaderProvider.getTypeConvert(cls3, cls4);
                    if (!(type instanceof Class)) {
                        obj3 = TypeUtils.cast(obj3, type, objectReaderProvider);
                    } else if (typeConvert2 != 0) {
                        obj3 = typeConvert2.apply(obj3);
                    } else if (obj3 instanceof Map) {
                        obj3 = fieldReader2.getObjectReader(JSONFactory.createReadContext(objectReaderProvider, new JSONReader.Feature[0])).createInstance((Map) obj3, fieldReader2.features | j);
                    }
                }
                fieldReader2.accept((FieldReader) t, obj3);
            }
            i++;
        }
    }
}
