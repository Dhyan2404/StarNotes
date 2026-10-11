package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReaderObject;
import com.alibaba.fastjson2.reader.ObjectReader;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class iag<T> extends FieldReaderObject<T> {
    public iag(Type type, Class cls, int i, long j, String str, Method method) {
        super("$$any$$", type, cls, i, j, str, null, null, method, null, null);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void acceptExtra(Object obj, String str, Object obj2) {
        try {
            this.method.invoke(obj, str, obj2);
        } catch (Exception unused) {
            throw new JSONException("any set error");
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public ObjectReader getItemObjectReader(JSONReader jSONReader) {
        if (this.f12477n != null) {
            return this.f12477n;
        }
        ObjectReader objectReader = jSONReader.getObjectReader(this.fieldType);
        this.f12477n = objectReader;
        return objectReader;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean isReadOnly() {
        return true;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void processExtra(JSONReader jSONReader, Object obj) {
        try {
            this.method.invoke(obj, jSONReader.getFieldName(), getItemObjectReader(jSONReader).readObject(jSONReader, this.fieldType, this.fieldName, 0L));
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("any set error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        throw new UnsupportedOperationException();
    }
}
