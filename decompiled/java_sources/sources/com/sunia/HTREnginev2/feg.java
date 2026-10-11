package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Field;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
public class feg<T> extends FieldWriter<T> {
    public feg(String str, int i, long j, String str2, String str3, Field field) {
        super(str, i, j, str2, str3, Double.class, Double.class, field, null);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        if (obj == null) {
            throw new JSONException("field.get error, " + this.fieldName);
        }
        try {
            return (this.fieldOffset == -1 || this.fieldClass.isPrimitive()) ? this.field.get(obj) : JDKUtils.UNSAFE.getObject(obj, this.fieldOffset);
        } catch (IllegalAccessException | IllegalArgumentException e) {
            throw new JSONException("field.get error, " + this.fieldName, e);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        Double d = (Double) getFieldValue(t);
        if (d == null) {
            long features = jSONWriter.getFeatures(this.features);
            if ((JSONWriter.Feature.WriteNulls.mask & features) == 0 || (features & JSONWriter.Feature.NotWriteDefaultValue.mask) != 0) {
                return false;
            }
            writeFieldName(jSONWriter);
            jSONWriter.writeNumberNull();
            return true;
        }
        writeFieldName(jSONWriter);
        double doubleValue = d.doubleValue();
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeDouble(doubleValue, decimalFormat);
        } else {
            jSONWriter.writeDouble(doubleValue);
        }
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        Double d = (Double) getFieldValue(t);
        if (d == null) {
            jSONWriter.writeNumberNull();
            return;
        }
        double doubleValue = d.doubleValue();
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeDouble(doubleValue, decimalFormat);
        } else {
            jSONWriter.writeDouble(doubleValue);
        }
    }
}
