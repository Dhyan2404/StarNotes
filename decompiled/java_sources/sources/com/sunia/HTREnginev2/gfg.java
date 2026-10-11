package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import java.lang.reflect.Method;
import java.util.function.ToLongFunction;

/* loaded from: classes3.dex */
public final class gfg<T> extends cfg<T> {

    /* renamed from: s */
    public final ToLongFunction f70991s;

    public gfg(String str, int i, long j, String str2, String str3, Method method, ToLongFunction toLongFunction) {
        super(str, i, j, str2, str3, Long.TYPE, null, method);
        this.f70991s = toLongFunction;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return Long.valueOf(this.f70991s.applyAsLong(t));
    }

    @Override // com.sunia.HTREnginev2.cfg, com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            writeInt64(jSONWriter, this.f70991s.applyAsLong(t));
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.sunia.HTREnginev2.cfg, com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        jSONWriter.writeInt64(this.f70991s.applyAsLong(t));
    }
}
