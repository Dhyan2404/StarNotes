package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public final class udg extends sdg {

    /* renamed from: z */
    public final Predicate f86386z;

    public udg(String str, int i, long j, String str2, String str3, Method method, Predicate predicate) {
        super(str, i, j, str2, str3, Boolean.class, Boolean.class, null, method);
        this.f86386z = predicate;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return Boolean.valueOf(this.f86386z.test(obj));
    }
}
