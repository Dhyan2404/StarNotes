package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class geg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Function<T, Double> f70957r;

    public geg(String str, int i, long j, String str2, String str3, Method method, Function<T, Double> function) {
        super(str, i, j, str2, str3, Double.class, Double.class, null, method);
        this.f70957r = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f70957r.apply(t);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            Double apply = this.f70957r.apply(t);
            if (apply == null) {
                long features = jSONWriter.getFeatures(this.features);
                if ((JSONWriter.Feature.WriteNulls.mask & features) == 0 || (features & JSONWriter.Feature.NotWriteDefaultValue.mask) != 0) {
                    return false;
                }
                writeFieldName(jSONWriter);
                jSONWriter.writeNumberNull();
                return true;
            }
            writeFieldName(jSONWriter);
            double doubleValue = apply.doubleValue();
            DecimalFormat decimalFormat = this.decimalFormat;
            if (decimalFormat != null) {
                jSONWriter.writeDouble(doubleValue, decimalFormat);
            } else {
                jSONWriter.writeDouble(doubleValue);
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
        Double apply = this.f70957r.apply(t);
        if (apply == null) {
            jSONWriter.writeNumberNull();
            return;
        }
        double doubleValue = apply.doubleValue();
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeDouble(doubleValue, decimalFormat);
        } else {
            jSONWriter.writeDouble(doubleValue);
        }
    }
}
