package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplMap;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.ReferenceKey;
import com.alibaba.fastjson2.util.TypeUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class p9k implements ObjectReader {

    /* renamed from: a */
    public final Class f80582a;

    /* renamed from: b */
    public final Class f80583b;

    /* renamed from: c */
    public final Type f80584c;

    /* renamed from: d */
    public final Type f80585d;

    /* renamed from: e */
    public final Class f80586e;

    /* renamed from: f */
    public final long f80587f;

    /* renamed from: g */
    public final Function f80588g;

    /* renamed from: h */
    public final Constructor f80589h;

    /* renamed from: i */
    public ObjectReader f80590i;

    /* renamed from: j */
    public ObjectReader f80591j;

    public p9k(Class cls, Class cls2, Type type, Type type2, long j, Function function) {
        Constructor<?> constructor = null;
        type = type == Object.class ? null : type;
        this.f80582a = cls;
        this.f80583b = cls2;
        this.f80584c = type;
        this.f80585d = type2;
        this.f80586e = TypeUtils.getClass(type2);
        this.f80587f = j;
        this.f80588g = function;
        Constructor<?>[] declaredConstructors = cls2.getDeclaredConstructors();
        int length = declaredConstructors.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Constructor<?> constructor2 = declaredConstructors[i];
            if (constructor2.getParameterCount() == 0 && !Modifier.isPublic(constructor2.getModifiers())) {
                constructor2.setAccessible(true);
                constructor = constructor2;
                break;
            }
            i++;
        }
        this.f80589h = constructor;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Map map, long j) {
        Map hashMap;
        Object obj;
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        Class cls = this.f80583b;
        if (cls != Map.class && cls != HashMap.class) {
            hashMap = (Map) createInstance(j);
        } else {
            hashMap = new HashMap();
        }
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            Type type = this.f80584c;
            if (type != null && type != String.class) {
                obj = TypeUtils.cast(key, type);
            } else {
                obj = key.toString();
            }
            if (value != null) {
                Class<?> cls2 = value.getClass();
                if (this.f80585d == Object.class) {
                    continue;
                } else if (cls2 != JSONObject.class && cls2 != JSONFactory.getClassJSONObject1x()) {
                    if ((cls2 == JSONArray.class || cls2 == JSONFactory.getClassJSONArray1x()) && this.f80586e == List.class) {
                        if (this.f80590i == null) {
                            this.f80590i = objectReaderProvider.getObjectReader(this.f80585d);
                        }
                        this.f80590i.createInstance((JSONArray) value);
                    } else {
                        Function typeConvert = objectReaderProvider.getTypeConvert(cls2, this.f80585d);
                        if (typeConvert != null) {
                            value = typeConvert.apply(value);
                        } else if (value instanceof Map) {
                            Map map2 = (Map) value;
                            if (this.f80590i == null) {
                                this.f80590i = objectReaderProvider.getObjectReader(this.f80585d);
                            }
                            try {
                                value = this.f80590i.createInstance(map2, j);
                            } catch (Exception unused) {
                            }
                        } else if (value instanceof Collection) {
                            if (this.f80590i == null) {
                                this.f80590i = objectReaderProvider.getObjectReader(this.f80585d);
                            }
                            value = this.f80590i.createInstance((Collection) value);
                        } else if (!cls2.isInstance(value)) {
                            throw new JSONException("can not convert from " + cls2 + " to " + this.f80585d);
                        }
                    }
                } else {
                    if (this.f80590i == null) {
                        this.f80590i = objectReaderProvider.getObjectReader(this.f80585d);
                    }
                    value = this.f80590i.createInstance((JSONObject) value, j);
                }
            }
            hashMap.put(obj, value);
        }
        Function function = this.f80588g;
        return function != null ? function.apply(hashMap) : hashMap;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return this.f80582a;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        ObjectReader objectReader;
        Object readFieldName;
        Object obj2;
        Object readJSONBObject;
        Type type2;
        Function function = this.f80588g;
        if (jSONReader.getType() == -110) {
            objectReader = jSONReader.checkAutoType(this.f80582a, 0L, this.f80587f | j);
            if (objectReader != null && objectReader != this) {
                function = objectReader.getBuildFunction();
                if (!(objectReader instanceof ObjectReaderImplMap) && !(objectReader instanceof p9k)) {
                    return objectReader.readJSONBObject(jSONReader, type, obj, j);
                }
            }
        } else {
            objectReader = null;
        }
        byte type3 = jSONReader.getType();
        if (type3 == -81) {
            jSONReader.next();
            return null;
        }
        if (type3 == -90) {
            jSONReader.next();
        }
        JSONReader.Context context = jSONReader.context;
        long j2 = j | context.features;
        Map hashMap = objectReader != null ? (Map) objectReader.createInstance(j2) : this.f80583b == HashMap.class ? new HashMap() : (Map) createInstance();
        int i = 0;
        while (jSONReader.getType() != -91) {
            if (this.f80584c == String.class || jSONReader.isString()) {
                readFieldName = jSONReader.readFieldName();
            } else if (jSONReader.isReference()) {
                String readReference = jSONReader.readReference();
                readFieldName = new ReferenceKey(i);
                jSONReader.addResolveTask(hashMap, readFieldName, JSONPath.m7282of(readReference));
            } else {
                if (this.f80591j == null && (type2 = this.f80584c) != null) {
                    this.f80591j = jSONReader.getObjectReader(type2);
                }
                ObjectReader objectReader2 = this.f80591j;
                readFieldName = objectReader2 == null ? jSONReader.readAny() : objectReader2.readJSONBObject(jSONReader, null, null, j);
            }
            Object obj3 = readFieldName;
            if (jSONReader.isReference()) {
                String readReference2 = jSONReader.readReference();
                if (Constants.ATTRVAL_PARENT.equals(readReference2)) {
                    hashMap.put(obj3, hashMap);
                } else {
                    jSONReader.addResolveTask(hashMap, obj3, JSONPath.m7282of(readReference2));
                    if (!(hashMap instanceof ConcurrentMap)) {
                        hashMap.put(obj3, null);
                    }
                }
            } else if (jSONReader.nextIfNull()) {
                hashMap.put(obj3, null);
            } else {
                if (this.f80585d == Object.class) {
                    readJSONBObject = jSONReader.readAny();
                    obj2 = obj3;
                } else {
                    obj2 = obj3;
                    ObjectReader checkAutoType = jSONReader.checkAutoType(this.f80586e, 0L, j);
                    if (checkAutoType == null || checkAutoType == this) {
                        if (this.f80590i == null) {
                            this.f80590i = context.provider.getObjectReader(this.f80585d, (JSONReader.Feature.FieldBased.mask & j2) != 0);
                        }
                        readJSONBObject = this.f80590i.readJSONBObject(jSONReader, this.f80585d, obj2, j);
                    } else {
                        readJSONBObject = checkAutoType.readJSONBObject(jSONReader, this.f80585d, obj2, j);
                    }
                }
                if (readJSONBObject != null || (JSONReader.Feature.IgnoreNullPropertyValue.mask & j2) == 0) {
                    hashMap.put(obj2, readJSONBObject);
                }
            }
            i++;
        }
        jSONReader.next();
        return function != null ? function.apply(hashMap) : hashMap;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        int i;
        int i2;
        Map map;
        Map map2;
        Map map3;
        Map map4;
        char c;
        Object read;
        Map map5;
        Object obj2;
        Map hashMap;
        Map map6;
        Object obj3 = null;
        if (jSONReader.nextIfObjectStart()) {
            i = 0;
        } else {
            if (!jSONReader.isTypeRedirect()) {
                if (jSONReader.nextIfNullOrEmptyString()) {
                    return null;
                }
                throw new JSONException(jSONReader.info("expect '{', but '" + jSONReader.current() + CloudStorageConstants.SINGLE_QUOTES));
            }
            jSONReader.setTypeRedirect(false);
            i = 1;
        }
        JSONReader.Context context = jSONReader.context;
        long j2 = context.features | j;
        if (this.f80583b == HashMap.class) {
            Supplier<Map> objectSupplier = context.getObjectSupplier();
            if (this.f80582a != Map.class || objectSupplier == null) {
                hashMap = new HashMap();
                map6 = null;
            } else {
                hashMap = objectSupplier.get();
                map6 = TypeUtils.getInnerMap(hashMap);
            }
            i2 = i;
            map = hashMap;
            map2 = map6;
        } else {
            i2 = i;
            map = (Map) createInstance(j2);
            map2 = null;
        }
        while (!jSONReader.nextIfObjectEnd() && !jSONReader.isEnd()) {
            if (!jSONReader.nextIfNull()) {
                if (this.f80584c == String.class) {
                    read = jSONReader.readFieldName();
                    if (i2 == 0 && (JSONReader.Feature.SupportAutoType.mask & j2) != 0 && read.equals(getTypeKey())) {
                        map3 = map;
                        map4 = map2;
                        ObjectReader objectReaderAutoType = jSONReader.getObjectReaderAutoType(jSONReader.readTypeHashCode(), this.f80582a, j);
                        if (objectReaderAutoType != null && (objectReaderAutoType instanceof ObjectReaderImplMap) && !map3.getClass().equals(((ObjectReaderImplMap) objectReaderAutoType).f12713d)) {
                            map5 = (Map) objectReaderAutoType.createInstance(j);
                            map = map5;
                            i2++;
                            map2 = map4;
                            obj3 = null;
                        }
                    } else {
                        map3 = map;
                        map4 = map2;
                        if (read == null) {
                            read = jSONReader.readString();
                            if (!jSONReader.nextIfMatch(':')) {
                                throw new JSONException(jSONReader.info("illegal json"));
                            }
                        }
                        obj2 = read;
                    }
                } else {
                    map3 = map;
                    map4 = map2;
                    if (i2 == 0 && jSONReader.isEnabled(JSONReader.Feature.SupportAutoType) && jSONReader.current() == '\"') {
                        Type type2 = this.f80584c;
                        if (!(type2 instanceof Class) || !Enum.class.isAssignableFrom((Class) type2)) {
                            String readFieldName = jSONReader.readFieldName();
                            if (readFieldName.equals(getTypeKey())) {
                                ObjectReader objectReaderAutoType2 = jSONReader.getObjectReaderAutoType(jSONReader.readTypeHashCode(), this.f80582a, j);
                                if (objectReaderAutoType2 != null && (objectReaderAutoType2 instanceof ObjectReaderImplMap) && !map3.getClass().equals(((ObjectReaderImplMap) objectReaderAutoType2).f12713d)) {
                                    map5 = (Map) objectReaderAutoType2.createInstance(j);
                                    map = map5;
                                    i2++;
                                    map2 = map4;
                                    obj3 = null;
                                }
                            } else {
                                read = TypeUtils.cast(readFieldName, this.f80584c);
                                obj2 = read;
                            }
                        }
                    }
                    ObjectReader objectReader = this.f80591j;
                    if (objectReader != null) {
                        c = ':';
                        read = objectReader.readObject(jSONReader, null, null, 0L);
                    } else {
                        c = ':';
                        read = jSONReader.read(this.f80584c);
                    }
                    if (i2 != 0 || (JSONReader.Feature.SupportAutoType.mask & j2) == 0 || !read.equals(getTypeKey())) {
                        jSONReader.nextIfMatch(c);
                        obj2 = read;
                    }
                }
                map = map3;
                i2++;
                map2 = map4;
                obj3 = null;
            } else {
                if (!jSONReader.nextIfMatch(':')) {
                    throw new JSONException(jSONReader.info("illegal json"));
                }
                map3 = map;
                obj2 = obj3;
                map4 = map2;
            }
            if (this.f80590i == null) {
                this.f80590i = context.provider.getObjectReader(this.f80585d, (JSONReader.Feature.FieldBased.mask & j2) != 0);
            }
            Object readObject = this.f80590i.readObject(jSONReader, this.f80585d, obj, 0L);
            if (readObject != null || (JSONReader.Feature.IgnoreNullPropertyValue.mask & j2) == 0) {
                Object put = map4 != null ? map4.put(obj2, readObject) : map3.put(obj2, readObject);
                if (put != null && (JSONReader.Feature.DuplicateKeyValueAsArray.mask & j2) != 0) {
                    if (put instanceof Collection) {
                        ((Collection) put).add(readObject);
                        map3.put(obj2, put);
                    } else {
                        map3.put(obj2, JSONArray.m7266of(put, readObject));
                    }
                }
            }
            map = map3;
            i2++;
            map2 = map4;
            obj3 = null;
        }
        Map map7 = map;
        jSONReader.nextIfComma();
        Function function = this.f80588g;
        return function != null ? function.apply(map7) : map7;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(long j) {
        Class cls = this.f80583b;
        if (cls != null && !cls.isInterface()) {
            try {
                Constructor constructor = this.f80589h;
                if (constructor != null) {
                    return constructor.newInstance(new Object[0]);
                }
                return this.f80583b.newInstance();
            } catch (Exception e) {
                throw new JSONException("create map error", e);
            }
        }
        return new HashMap();
    }
}
