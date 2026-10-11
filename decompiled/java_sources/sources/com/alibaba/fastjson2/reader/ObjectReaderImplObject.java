package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.sunia.HTREnginev2.bak;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ObjectReaderImplObject extends bak {
    public static final ObjectReaderImplObject INSTANCE = new ObjectReaderImplObject();

    public ObjectReaderImplObject() {
        super(Object.class);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        return collection;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public /* bridge */ /* synthetic */ Class getObjectClass() {
        return super.getObjectClass();
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        ObjectReader checkAutoType;
        byte type2 = jSONReader.getType();
        if (type2 >= 73 && type2 <= 125) {
            return jSONReader.readString();
        }
        if (type2 == -110 && (checkAutoType = jSONReader.checkAutoType(Object.class, 0L, j)) != null) {
            return checkAutoType.readJSONBObject(jSONReader, type, obj, j);
        }
        if (type2 != -81) {
            return jSONReader.readAny();
        }
        jSONReader.next();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    @Override // com.alibaba.fastjson2.reader.ObjectReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object readObject(com.alibaba.fastjson2.JSONReader r24, java.lang.reflect.Type r25, java.lang.Object r26, long r27) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderImplObject.readObject(com.alibaba.fastjson2.JSONReader, java.lang.reflect.Type, java.lang.Object, long):java.lang.Object");
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(long j) {
        return new JSONObject();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Map map, long j) {
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        Object obj = map.get(getTypeKey());
        if (obj instanceof String) {
            String str = (String) obj;
            ObjectReader autoType = (JSONReader.Feature.SupportAutoType.mask & j) != 0 ? autoType(objectReaderProvider, Fnv.hashCode64(str)) : null;
            if (autoType == null && (autoType = objectReaderProvider.getObjectReader(str, getObjectClass(), getFeatures() | j)) == null) {
                throw new JSONException("No suitable ObjectReader found for" + str);
            }
            if (autoType != this) {
                return autoType.createInstance(map, j);
            }
        }
        return map;
    }
}
