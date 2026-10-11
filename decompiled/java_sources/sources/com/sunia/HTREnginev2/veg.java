package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.JDKUtils;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class veg<T> extends seg<T> {
    public veg(String str, int i, long j, String str2, String str3, Field field) {
        super(str, i, j, str2, str3, Short.TYPE, field, null);
    }

    /* renamed from: d */
    public short m57791d(T t) {
        if (t == null) {
            throw new JSONException("field.get error, " + this.fieldName);
        }
        try {
            long j = this.fieldOffset;
            return j != -1 ? JDKUtils.UNSAFE.getShort(t, j) : this.field.getShort(t);
        } catch (IllegalAccessException | IllegalArgumentException e) {
            throw new JSONException("field.get error, " + this.fieldName, e);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return Short.valueOf(m57791d(t));
    }

    @Override // com.sunia.HTREnginev2.seg, com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        m57154c(jSONWriter, m57791d(t));
        return true;
    }

    @Override // com.sunia.HTREnginev2.seg, com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        jSONWriter.writeInt32(m57791d(t));
    }
}
