package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class yfg<T> extends wfg<T> {

    /* renamed from: J */
    public final Function f90667J;

    /* renamed from: O */
    public final boolean f90668O;

    public yfg(String str, int i, long j, String str2, String str3, Type type, Class cls, Method method, Function function) {
        super(str, i, j, str2, str3, type, cls, null, method);
        this.f90667J = function;
        this.f90668O = cls == AtomicIntegerArray.class || cls == AtomicLongArray.class || cls == AtomicReferenceArray.class || cls.isArray();
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return this.f90667J.apply(obj);
    }
}
