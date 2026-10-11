package com.alibaba.fastjson2.filter;

import com.alibaba.fastjson2.JSONWriter;

/* loaded from: classes3.dex */
public abstract class BeforeFilter implements Filter {

    /* renamed from: a */
    public static final ThreadLocal<JSONWriter> f12387a = new ThreadLocal<>();

    public void writeBefore(JSONWriter jSONWriter, Object obj) {
        ThreadLocal<JSONWriter> threadLocal = f12387a;
        JSONWriter jSONWriter2 = threadLocal.get();
        threadLocal.set(jSONWriter);
        writeBefore(obj);
        threadLocal.set(jSONWriter2);
    }

    public abstract void writeBefore(Object obj);

    public final void writeKeyValue(String str, Object obj) {
        JSONWriter jSONWriter = f12387a.get();
        boolean containsReference = jSONWriter.containsReference(obj);
        jSONWriter.writeName(str);
        jSONWriter.writeColon();
        jSONWriter.writeAny(obj);
        if (containsReference) {
            return;
        }
        jSONWriter.removeReference(obj);
    }
}
