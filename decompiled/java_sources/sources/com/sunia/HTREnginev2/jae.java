package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public final class jae implements Supplier {

    /* renamed from: e */
    public final Constructor f74102e;

    /* renamed from: f */
    public final Class f74103f;

    /* renamed from: g */
    public final boolean f74104g;

    /* renamed from: h */
    public final int f74105h;

    public jae(Constructor constructor) {
        constructor.setAccessible(true);
        this.f74102e = constructor;
        Class declaringClass = constructor.getDeclaringClass();
        this.f74103f = declaringClass;
        int parameterCount = constructor.getParameterCount();
        this.f74105h = parameterCount;
        this.f74104g = parameterCount == 0 && Modifier.isPublic(constructor.getModifiers()) && Modifier.isPublic(declaringClass.getModifiers());
    }

    @Override // java.util.function.Supplier
    public Object get() {
        try {
            return this.f74104g ? this.f74103f.newInstance() : this.f74105h == 1 ? this.f74102e.newInstance(new Object[1]) : this.f74102e.newInstance(new Object[0]);
        } catch (Throwable th) {
            throw new JSONException("create instance error", th);
        }
    }
}
