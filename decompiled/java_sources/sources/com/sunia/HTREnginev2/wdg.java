package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class wdg extends vdg {

    /* renamed from: z */
    public final Function f88521z;

    public wdg(String str, int i, long j, String str2, String str3, Method method, Function function) {
        super(str, i, j, str2, str3, Boolean.class, Boolean.class, null, method);
        this.f88521z = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return this.f88521z.apply(obj);
    }
}
