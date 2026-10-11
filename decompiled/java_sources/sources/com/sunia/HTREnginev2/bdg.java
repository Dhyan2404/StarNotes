package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplMap;
import com.alibaba.fastjson2.reader.ObjectReaderImplObject;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public class bdg<T> extends edg<T> {
    public bdg(String str, Type type, Class cls, int i, long j, String str2, Field field) {
        super(str, type, cls, i, j, str2, null, field);
    }

    @Override // com.sunia.HTREnginev2.edg, com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj == null) {
            return;
        }
        try {
            Map map = (Map) this.field.get(t);
            if (map == Collections.EMPTY_MAP || map == null || "java.util.Collections$UnmodifiableMap".equals(map.getClass().getName())) {
                return;
            }
            map.putAll((Map) obj);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void acceptExtra(Object obj, String str, Object obj2) {
        try {
            ((Map) this.field.get(obj)).put(str, obj2);
        } catch (Exception unused) {
            throw new JSONException("set " + this.fieldName + " error");
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public ObjectReader getItemObjectReader(JSONReader jSONReader) {
        if (this.f12477n != null) {
            return this.f12477n;
        }
        ObjectReader objectReader = getObjectReader(jSONReader);
        if (objectReader instanceof ObjectReaderImplMap) {
            y9k y9kVar = y9k.f90517a;
            this.f12477n = y9kVar;
            return y9kVar;
        }
        if (!(objectReader instanceof p9k)) {
            return ObjectReaderImplObject.INSTANCE;
        }
        ObjectReader objectReader2 = jSONReader.getObjectReader(((p9k) objectReader).f80585d);
        this.f12477n = objectReader2;
        return objectReader2;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean isReadOnly() {
        return true;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void processExtra(JSONReader jSONReader, Object obj) {
        try {
            Map map = (Map) this.field.get(obj);
            String fieldName = jSONReader.getFieldName();
            map.put(fieldName, getItemObjectReader(jSONReader).readObject(jSONReader, null, fieldName, 0L));
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("set " + this.fieldName + " error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        if (this.initReader == null) {
            this.initReader = jSONReader.context.getObjectReader(this.fieldType);
        }
        accept((bdg<T>) t, jSONReader.jsonb ? this.initReader.readJSONBObject(jSONReader, this.fieldType, this.fieldName, this.features) : this.initReader.readObject(jSONReader, this.fieldType, this.fieldName, this.features));
    }
}
