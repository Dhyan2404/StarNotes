package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.function.ToByteFunction;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class lfg extends hfg {

    /* renamed from: r */
    public final ToByteFunction f76416r;

    public lfg(String str, int i, long j, String str2, String str3, Method method, ToByteFunction toByteFunction) {
        super(str, i, j, str2, str3, Byte.TYPE, null, method);
        this.f76416r = toByteFunction;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return Byte.valueOf(this.f76416r.applyAsByte(obj));
    }

    @Override // com.sunia.HTREnginev2.hfg, com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, Object obj) {
        try {
            m54462c(jSONWriter, this.f76416r.applyAsByte(obj));
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.sunia.HTREnginev2.hfg, com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, Object obj) {
        jSONWriter.writeInt32(this.f76416r.applyAsByte(obj));
    }
}
