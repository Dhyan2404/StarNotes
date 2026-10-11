package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.writer.FieldWriterObject;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class xfg<T> extends FieldWriterObject<T> {

    /* renamed from: w */
    public final Function f89612w;

    /* renamed from: x */
    public final boolean f89613x;

    public xfg(String str, int i, long j, String str2, String str3, Type type, Class cls, Method method, Function function) {
        super(str, i, j, str2, str3, type, cls, null, method);
        this.f89612w = function;
        this.f89613x = cls == AtomicIntegerArray.class || cls == AtomicLongArray.class || cls == AtomicReferenceArray.class || cls.isArray();
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(Object obj) {
        return this.f89612w.apply(obj);
    }
}
