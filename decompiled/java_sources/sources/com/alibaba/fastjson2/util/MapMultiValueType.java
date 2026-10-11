package com.alibaba.fastjson2.util;

import com.alibaba.fastjson2.JSONObject;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class MapMultiValueType<T extends Map> implements Type {

    /* renamed from: e */
    public final Map<String, Type> f12798e;
    public final Class<T> mapType;

    public MapMultiValueType(Class<T> cls, String str, Type type) {
        HashMap hashMap = new HashMap();
        this.f12798e = hashMap;
        this.mapType = cls;
        hashMap.put(str, type);
    }

    /* renamed from: of */
    public static MapMultiValueType<JSONObject> m7597of(String str, Type type) {
        return new MapMultiValueType<>(JSONObject.class, str, type);
    }

    public Type getType(String str) {
        return this.f12798e.get(str);
    }

    /* renamed from: of */
    public static MapMultiValueType<JSONObject> m7598of(Map<String, Type> map) {
        return new MapMultiValueType<>(JSONObject.class, map);
    }

    /* renamed from: of */
    public static <T extends Map> MapMultiValueType<T> m7595of(Class<T> cls, String str, Type type) {
        return new MapMultiValueType<>(cls, str, type);
    }

    /* renamed from: of */
    public static <T extends Map> MapMultiValueType<T> m7596of(Class<T> cls, Map<String, Type> map) {
        return new MapMultiValueType<>(cls, map);
    }

    public MapMultiValueType(Class<T> cls, Map<String, Type> map) {
        HashMap hashMap = new HashMap();
        this.f12798e = hashMap;
        this.mapType = cls;
        hashMap.putAll(map);
    }
}
