package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class yeg<T> extends xeg<T> {

    /* renamed from: s */
    public final Function<T, Integer> f90639s;

    public yeg(String str, int i, long j, String str2, String str3, Method method, Function<T, Integer> function) {
        super(str, i, j, str2, str3, Integer.class, Integer.class, null, method);
        this.f90639s = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f90639s.apply(t);
    }
}
