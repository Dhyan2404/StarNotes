package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
public class peg<T> extends FieldWriter<T> {
    public peg(String str, int i, long j, String str2, String str3, Type type, Class cls, Method method) {
        super(str, i, j, str2, str3, type, cls, null, method);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        try {
            return this.method.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            throw new JSONException("invoke getter method error, " + this.fieldName, e);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            Float f = (Float) getFieldValue(t);
            if (f == null) {
                long features = jSONWriter.getFeatures(this.features);
                if ((JSONWriter.Feature.WriteNulls.mask & features) == 0 || (features & JSONWriter.Feature.NotWriteDefaultValue.mask) != 0) {
                    return false;
                }
                writeFieldName(jSONWriter);
                jSONWriter.writeNumberNull();
                return true;
            }
            writeFieldName(jSONWriter);
            float floatValue = f.floatValue();
            DecimalFormat decimalFormat = this.decimalFormat;
            if (decimalFormat != null) {
                jSONWriter.writeFloat(floatValue, decimalFormat);
            } else {
                jSONWriter.writeFloat(floatValue);
            }
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
        Float f = (Float) getFieldValue(t);
        if (f == null) {
            jSONWriter.writeNumberNull();
            return;
        }
        float floatValue = f.floatValue();
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeFloat(floatValue, decimalFormat);
        } else {
            jSONWriter.writeFloat(floatValue);
        }
    }
}
