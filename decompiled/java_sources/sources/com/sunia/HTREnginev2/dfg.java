package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class dfg<T> extends cfg<T> {

    /* renamed from: s */
    public final Function<T, Long> f67797s;

    public dfg(String str, int i, long j, String str2, String str3, Method method, Function<T, Long> function) {
        super(str, i, j, str2, str3, Long.class, null, method);
        this.f67797s = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f67797s.apply(t);
    }
}
