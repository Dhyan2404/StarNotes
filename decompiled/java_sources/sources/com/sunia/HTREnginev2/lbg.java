package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReaderObject;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class lbg<T> extends FieldReaderObject<T> {
    public lbg(String str, int i, long j, String str2, Double d, Method method) {
        super(str, Double.class, Double.class, i, j, str2, null, d, method, null, null);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        try {
            this.method.invoke(t, TypeUtils.toDouble(obj));
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        Double readDouble = jSONReader.readDouble();
        if (readDouble != null || this.defaultValue == null) {
            try {
                this.method.invoke(t, readDouble);
            } catch (Exception e) {
                throw new JSONException(jSONReader.info("set " + this.fieldName + " error"), e);
            }
        }
    }
}
