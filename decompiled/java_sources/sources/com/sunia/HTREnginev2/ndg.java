package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ndg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Function<T, BigDecimal> f78545r;

    public ndg(String str, int i, long j, String str2, String str3, Method method, Function<T, BigDecimal> function) {
        super(str, i, j, str2, str3, BigDecimal.class, BigDecimal.class, null, method);
        this.f78545r = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f78545r.apply(t);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            BigDecimal apply = this.f78545r.apply(t);
            if (apply == null && ((this.features | jSONWriter.getFeatures()) & JSONWriter.Feature.WriteNulls.mask) == 0) {
                return false;
            }
            writeFieldName(jSONWriter);
            jSONWriter.writeDecimal(apply, this.features, this.decimalFormat);
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
        jSONWriter.writeDecimal(this.f78545r.apply(t), this.features, this.decimalFormat);
    }
}
