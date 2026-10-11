package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class seg<T> extends FieldWriter<T> {
    public seg(String str, int i, long j, String str2, String str3, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, cls, cls, field, method);
    }

    /* renamed from: c */
    public final void m57154c(JSONWriter jSONWriter, short s) {
        if ((jSONWriter.getFeatures() & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0) {
            writeFieldName(jSONWriter);
            jSONWriter.writeString(Short.toString(s));
        } else {
            writeFieldName(jSONWriter);
            jSONWriter.writeInt16(s);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        return mck.f77466a;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            Short sh = (Short) getFieldValue(t);
            if (sh != null) {
                m57154c(jSONWriter, sh.shortValue());
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
        Short sh = (Short) getFieldValue(t);
        if (sh == null) {
            jSONWriter.writeNumberNull();
        } else {
            jSONWriter.writeInt32(sh.shortValue());
        }
    }
}
