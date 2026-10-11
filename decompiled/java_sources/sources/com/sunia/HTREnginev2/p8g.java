package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.util.Fnv;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class p8g<T> implements Function<Map<Long, Object>, T> {

    /* renamed from: e */
    public final Method f80551e;

    /* renamed from: f */
    public final Function f80552f;

    /* renamed from: g */
    public final BiFunction f80553g;

    /* renamed from: h */
    public final String[] f80554h;

    /* renamed from: i */
    public final long[] f80555i;

    public p8g(Method method, String... strArr) {
        this.f80551e = method;
        Class<?>[] parameterTypes = method.getParameterTypes();
        this.f80554h = new String[parameterTypes.length];
        this.f80555i = new long[parameterTypes.length];
        int i = 0;
        while (true) {
            if (i >= parameterTypes.length) {
                this.f80552f = null;
                this.f80553g = null;
                return;
            }
            String str = i < strArr.length ? strArr[i] : null;
            if (str == null) {
                str = Constants.ELEMNAME_ARG_STRING + i;
            }
            strArr[i] = str;
            this.f80555i[i] = Fnv.hashCode64(str);
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.function.Function
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public T apply(Map<Long, Object> map) {
        if (this.f80552f != null) {
            return (T) this.f80552f.apply(map.get(Long.valueOf(this.f80555i[0])));
        }
        if (this.f80553g != null) {
            return (T) this.f80553g.apply(map.get(Long.valueOf(this.f80555i[0])), map.get(Long.valueOf(this.f80555i[1])));
        }
        int length = this.f80555i.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr[i] = map.get(Long.valueOf(this.f80555i[i]));
        }
        try {
            return (T) this.f80551e.invoke(null, objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            throw new JSONException("invoke factoryMethod error", e);
        }
    }
}
