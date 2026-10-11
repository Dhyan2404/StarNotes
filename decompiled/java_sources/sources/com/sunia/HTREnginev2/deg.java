package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class deg<T> extends beg<T> {

    /* renamed from: z */
    public final Function<T, Date> f67775z;

    public deg(String str, int i, long j, String str2, String str3, Method method, Function<T, Date> function) {
        super(str, i, j, str2, str3, Date.class, Date.class, null, method);
        this.f67775z = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f67775z.apply(t);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        Date apply = this.f67775z.apply(t);
        if (apply != null) {
            writeDate(jSONWriter, apply.getTime());
            return true;
        }
        if (((this.features | jSONWriter.getFeatures()) & JSONWriter.Feature.WriteNulls.mask) == 0) {
            return false;
        }
        writeFieldName(jSONWriter);
        jSONWriter.writeNull();
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        Date apply = this.f67775z.apply(t);
        if (apply == null) {
            jSONWriter.writeNull();
        } else {
            writeDate(jSONWriter, false, apply.getTime());
        }
    }
}
