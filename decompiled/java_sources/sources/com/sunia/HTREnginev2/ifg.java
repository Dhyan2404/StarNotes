package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ifg<T> extends hfg<T> {

    /* renamed from: r */
    public final Function<T, Byte> f73200r;

    public ifg(String str, int i, long j, String str2, String str3, Method method, Function<T, Byte> function) {
        super(str, i, j, str2, str3, Byte.class, null, method);
        this.f73200r = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f73200r.apply(t);
    }
}
