package com.alibaba.fastjson2.filter;

import com.alibaba.fastjson2.JSONWriter;

/* loaded from: classes3.dex */
public abstract class AfterFilter implements Filter {

    /* renamed from: a */
    public static final ThreadLocal<JSONWriter> f12377a = new ThreadLocal<>();

    public void writeAfter(JSONWriter jSONWriter, Object obj) {
        ThreadLocal<JSONWriter> threadLocal = f12377a;
        JSONWriter jSONWriter2 = threadLocal.get();
        threadLocal.set(jSONWriter);
        writeAfter(obj);
        threadLocal.set(jSONWriter2);
    }

    public abstract void writeAfter(Object obj);

    public final void writeKeyValue(String str, Object obj) {
        JSONWriter jSONWriter = f12377a.get();
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
