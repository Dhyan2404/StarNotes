package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class o9k extends p9k {
    public o9k(Class cls, Class cls2, long j) {
        super(cls, cls2, null, String.class, j, null);
    }

    @Override // com.sunia.HTREnginev2.p9k, com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object put;
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, j);
        }
        if (!jSONReader.nextIfObjectStart()) {
            if (jSONReader.current() == '[') {
                jSONReader.next();
                if (jSONReader.current() == '{') {
                    Object readObject = readObject(jSONReader, String.class, obj, j);
                    if (jSONReader.nextIfArrayEnd()) {
                        jSONReader.nextIfComma();
                        return readObject;
                    }
                }
                throw new JSONException(jSONReader.info("expect '{', but '['"));
            }
            if (jSONReader.nextIfNullOrEmptyString()) {
                return null;
            }
        }
        JSONReader.Context context = jSONReader.context;
        Map hashMap = this.f80583b == HashMap.class ? new HashMap() : (Map) createInstance(context.features | j);
        long j2 = j | context.features;
        int i = 0;
        while (!jSONReader.nextIfObjectEnd()) {
            String readFieldName = jSONReader.readFieldName();
            String readString = jSONReader.readString();
            if ((i != 0 || (JSONReader.Feature.SupportAutoType.mask & j2) == 0 || !readFieldName.equals(getTypeKey())) && ((readString != null || (JSONReader.Feature.IgnoreNullPropertyValue.mask & j2) == 0) && (put = hashMap.put(readFieldName, readString)) != null && (JSONReader.Feature.DuplicateKeyValueAsArray.mask & j2) != 0)) {
                if (put instanceof Collection) {
                    ((Collection) put).add(readString);
                    hashMap.put(readFieldName, put);
                } else {
                    hashMap.put(readFieldName, JSONArray.m7266of(put, (Object) readString));
                }
            }
            i++;
        }
        jSONReader.nextIfComma();
        return hashMap;
    }
}
