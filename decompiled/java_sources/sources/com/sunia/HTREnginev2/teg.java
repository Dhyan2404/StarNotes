package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class teg<T> extends seg<T> {

    /* renamed from: r */
    public final Function<T, Short> f85241r;

    public teg(String str, int i, long j, String str2, String str3, Method method, Function<T, Short> function) {
        super(str, i, j, str2, str3, Short.class, null, method);
        this.f85241r = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f85241r.apply(t);
    }
}
