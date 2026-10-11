package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class ocg<T> extends edg<T> {
    public ocg(String str, Class cls, int i, long j, String str2, long[] jArr, Field field) {
        super(str, cls, cls, i, j, str2, jArr, field);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean isReadOnly() {
        return true;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        if (jSONReader.readIfNull()) {
            return;
        }
        try {
            long[] jArr = (long[]) this.field.get(t);
            if (jSONReader.nextIfArrayStart()) {
                int i = 0;
                while (!jSONReader.nextIfArrayEnd()) {
                    long readInt64Value = jSONReader.readInt64Value();
                    if (jArr != null && i < jArr.length) {
                        jArr[i] = readInt64Value;
                    }
                    i++;
                }
            }
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("set " + this.fieldName + " error"), e);
        }
    }
}
