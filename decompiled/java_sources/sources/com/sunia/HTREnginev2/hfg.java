package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class hfg<T> extends FieldWriter<T> {
    public hfg(String str, int i, long j, String str2, String str3, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, cls, cls, field, method);
    }

    /* renamed from: c */
    public final void m54462c(JSONWriter jSONWriter, byte b) {
        if ((jSONWriter.getFeatures() & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0) {
            writeFieldName(jSONWriter);
            jSONWriter.writeString(Byte.toString(b));
        } else {
            writeFieldName(jSONWriter);
            jSONWriter.writeInt8(b);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            Byte b = (Byte) getFieldValue(t);
            if (b != null) {
                m54462c(jSONWriter, b.byteValue());
                return true;
            }
            if (((this.features | jSONWriter.getFeatures()) & JSONWriter.Feature.WriteNulls.mask) == 0) {
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
    public void writeValue(JSONWriter jSONWriter, T t) {
        Byte b = (Byte) getFieldValue(t);
        if (b == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeInt32(b.byteValue());
        }
    }
}
