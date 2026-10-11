package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public abstract class xeg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final boolean f89585r;

    public xeg(String str, int i, long j, String str2, String str3, Type type, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, type, cls, field, method);
        this.f89585r = (JSONWriter.Feature.WriteNonStringValueAsString.mask & j) != 0 || "string".equals(str2);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        return cls == this.fieldClass ? ock.f79573a : jSONWriter.getObjectWriter(cls);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            Integer num = (Integer) getFieldValue(t);
            if (num != null) {
                writeInt32(jSONWriter, num.intValue());
                return true;
            }
            if (((this.features | jSONWriter.getFeatures()) & (JSONWriter.Feature.WriteNulls.mask | JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullNumberAsZero.mask)) == 0) {
                return false;
            }
            writeFieldName(jSONWriter);
            jSONWriter.writeNumberNull();
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public final void writeInt32(JSONWriter jSONWriter, int i) {
        if (this.f89585r) {
            writeFieldName(jSONWriter);
            jSONWriter.writeString(Integer.toString(i));
            return;
        }
        writeFieldName(jSONWriter);
        String str = this.format;
        if (str != null) {
            jSONWriter.writeInt32(i, str);
        } else {
            jSONWriter.writeInt32(i);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        Integer num = (Integer) getFieldValue(t);
        if (num == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeInt32(num);
        }
    }
}
