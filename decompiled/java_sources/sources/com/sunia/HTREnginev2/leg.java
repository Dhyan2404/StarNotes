package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class leg extends keg {

    /* renamed from: z */
    public final Function f76390z;

    public leg(String str, int i, long j, String str2, String str3, Type type, Class cls, Method method, Function function) {
        super(str, i, j, str2, str3, type, cls, null, method);
        this.f76390z = function;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return this.f76390z.apply(obj);
    }
}
