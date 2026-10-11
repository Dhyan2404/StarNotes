package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes3.dex */
public final class nag<T> extends FieldReader<T> {
    public nag(String str, Class cls, int i, Method method) {
        super(str, cls, cls, i, 0L, null, null, null, method, null);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj == null) {
            return;
        }
        try {
            int i = 0;
            AtomicLongArray atomicLongArray = (AtomicLongArray) this.method.invoke(t, new Object[0]);
            if (obj instanceof AtomicLongArray) {
                AtomicLongArray atomicLongArray2 = (AtomicLongArray) obj;
                while (i < atomicLongArray2.length()) {
                    atomicLongArray.set(i, atomicLongArray2.get(i));
                    i++;
                }
                return;
            }
            List list = (List) obj;
            while (i < list.size()) {
                atomicLongArray.set(i, TypeUtils.toIntValue(list.get(i)));
                i++;
            }
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
        if (jSONReader.readIfNull()) {
            return;
        }
        try {
            int i = 0;
            AtomicLongArray atomicLongArray = (AtomicLongArray) this.method.invoke(t, new Object[0]);
            if (jSONReader.nextIfArrayStart()) {
                while (!jSONReader.nextIfArrayEnd()) {
                    long readInt64Value = jSONReader.readInt64Value();
                    if (atomicLongArray != null && i < atomicLongArray.length()) {
                        atomicLongArray.set(i, readInt64Value);
                    }
                    i++;
                }
            }
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("set " + this.fieldName + " error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        return jSONReader.readArray(Long.class);
    }
}
