package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.function.ToShortFunction;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class weg extends seg {

    /* renamed from: r */
    public final ToShortFunction f88547r;

    public weg(String str, int i, long j, String str2, String str3, Method method, ToShortFunction toShortFunction) {
        super(str, i, j, str2, str3, Short.TYPE, null, method);
        this.f88547r = toShortFunction;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return Short.valueOf(this.f88547r.applyAsShort(obj));
    }

    @Override // com.sunia.HTREnginev2.seg, com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, Object obj) {
        try {
            m57154c(jSONWriter, this.f88547r.applyAsShort(obj));
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.sunia.HTREnginev2.seg, com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, Object obj) {
        jSONWriter.writeInt32(this.f88547r.applyAsShort(obj));
    }
}
