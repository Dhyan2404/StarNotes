package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class oag<T> extends FieldReader<T> {
    public oag(String str, Class cls, int i, Method method) {
        super(str, cls, cls, i, 0L, null, null, null, method, null);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj == null) {
            return;
        }
        try {
            ((AtomicLong) this.method.invoke(t, new Object[0])).set(((Number) obj).longValue());
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean isReadOnly() {
        return true;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        accept((oag<T>) t, jSONReader.readInt64());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        long readInt64Value = jSONReader.readInt64Value();
        if (jSONReader.wasNull()) {
            return null;
        }
        return new AtomicLong(readInt64Value);
    }
}
