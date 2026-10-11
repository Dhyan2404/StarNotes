package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.MapMultiValueType;
import com.alibaba.fastjson2.util.TypeUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReaderImplMapMultiValueType implements ObjectReader {

    /* renamed from: a */
    public final Class f12719a;

    /* renamed from: b */
    public final Class f12720b;

    /* renamed from: c */
    public final Function f12721c;

    /* renamed from: d */
    public final MapMultiValueType f12722d;

    public ObjectReaderImplMapMultiValueType(MapMultiValueType mapMultiValueType) {
        this.f12722d = mapMultiValueType;
        Class cls = mapMultiValueType.mapType;
        this.f12719a = cls;
        String name = cls.getName();
        if (cls == Map.class || cls == AbstractMap.class || name.equals("java.util.Collections$SingletonMap")) {
            cls = HashMap.class;
        } else if (name.equals("java.util.Collections$UnmodifiableMap")) {
            cls = LinkedHashMap.class;
        } else if (cls == SortedMap.class) {
            cls = TreeMap.class;
        } else if (cls == ConcurrentMap.class) {
            cls = ConcurrentHashMap.class;
        } else if (cls == ConcurrentNavigableMap.class) {
            cls = ConcurrentSkipListMap.class;
        }
        this.f12720b = cls;
        this.f12721c = null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(long j) {
        Class cls = this.f12720b;
        if (cls == null || cls.isInterface()) {
            return new HashMap();
        }
        try {
            return this.f12720b.newInstance();
        } catch (Exception e) {
            throw new JSONException("create map error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Map jSONObject;
        Map map;
        String str;
        Type type2;
        Map hashMap;
        Map map2;
        if (!jSONReader.nextIfObjectStart()) {
            if (jSONReader.nextIfNullOrEmptyString()) {
                return null;
            }
            throw new JSONException(jSONReader.info("expect '{', but '" + jSONReader.current() + CloudStorageConstants.SINGLE_QUOTES));
        }
        JSONReader.Context context = jSONReader.getContext();
        long j2 = context.features | j;
        Class cls = this.f12720b;
        if (cls == HashMap.class) {
            Supplier<Map> objectSupplier = context.getObjectSupplier();
            if (this.f12719a != Map.class || objectSupplier == null) {
                hashMap = new HashMap();
                map2 = null;
            } else {
                hashMap = objectSupplier.get();
                map2 = TypeUtils.getInnerMap(hashMap);
            }
            jSONObject = hashMap;
            map = map2;
        } else {
            jSONObject = cls == JSONObject.class ? new JSONObject() : (Map) createInstance(j2);
            map = null;
        }
        Type type3 = null;
        while (!jSONReader.nextIfObjectEnd() && !jSONReader.isEnd()) {
            if (!jSONReader.nextIfNull()) {
                String readFieldName = jSONReader.readFieldName();
                str = readFieldName;
                type2 = this.f12722d.getType(readFieldName);
            } else {
                if (!jSONReader.nextIfMatch(':')) {
                    throw new JSONException(jSONReader.info("illegal json"));
                }
                type2 = type3;
                str = null;
            }
            Object readAny = type2 == null ? jSONReader.readAny() : jSONReader.getObjectReader(type2).readObject(jSONReader, type2, obj, 0L);
            if (readAny != null || (JSONReader.Feature.IgnoreNullPropertyValue.mask & j2) == 0) {
                Object put = map != null ? map.put(str, readAny) : jSONObject.put(str, readAny);
                if (put != null && (JSONReader.Feature.DuplicateKeyValueAsArray.mask & j2) != 0) {
                    if (put instanceof Collection) {
                        ((Collection) put).add(readAny);
                        jSONObject.put(str, put);
                    } else {
                        jSONObject.put(str, JSONArray.m7266of(put, readAny));
                    }
                }
            }
            type3 = type2;
        }
        jSONReader.nextIfComma();
        Function function = this.f12721c;
        return function != null ? function.apply(jSONObject) : jSONObject;
    }
}
