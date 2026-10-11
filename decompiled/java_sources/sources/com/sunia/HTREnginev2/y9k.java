package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
public final class y9k extends bak {

    /* renamed from: a */
    public static final y9k f90517a = new y9k();

    public y9k() {
        super(String.class);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Map map, long j) {
        if (map == null) {
            return null;
        }
        return JSON.toJSONString(map);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readString();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return jSONReader.readString();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        if (collection == null) {
            return null;
        }
        return JSON.toJSONString(collection);
    }
}
