package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class ccg<T> extends FieldReader<T> {
    public ccg(String str, Class cls, int i, long j, String str2, Integer num, Field field) {
        super(str, cls, cls, i, j, str2, null, num, null, field);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, double d) {
        accept((ccg<T>) t, Integer.valueOf((int) d));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        try {
            this.field.set(t, jSONReader.readInt32());
        } catch (Exception e) {
            throw new JSONException(jSONReader.info("set " + this.fieldName + " error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, float f) {
        accept((ccg<T>) t, Integer.valueOf((int) f));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        Integer integer = TypeUtils.toInteger(obj);
        if (obj != null || (this.features & JSONReader.Feature.IgnoreSetNullValue.mask) == 0) {
            try {
                this.field.set(t, integer);
            } catch (Exception e) {
                throw new JSONException("set " + this.fieldName + " error", e);
            }
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        return jSONReader.readInt32();
    }
}
