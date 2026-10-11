package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class oeg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Function<T, Float> f79631r;

    public oeg(String str, int i, long j, String str2, String str3, Method method, Function<T, Float> function) {
        super(str, i, j, str2, str3, Float.class, Float.class, null, method);
        this.f79631r = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f79631r.apply(t);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            Float apply = this.f79631r.apply(t);
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
            float floatValue = apply.floatValue();
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
        Float apply = this.f79631r.apply(t);
        if (apply == null) {
            jSONWriter.writeNumberNull();
            return;
        }
        float floatValue = apply.floatValue();
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeFloat(floatValue, decimalFormat);
        } else {
            jSONWriter.writeFloat(floatValue);
        }
    }
}
