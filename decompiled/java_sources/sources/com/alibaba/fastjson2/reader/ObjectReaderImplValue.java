package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class ObjectReaderImplValue<I, T> implements ObjectReader<T> {

    /* renamed from: a */
    public final Type f12728a;

    /* renamed from: b */
    public final Class<I> f12729b;

    /* renamed from: c */
    public final long f12730c;

    /* renamed from: d */
    public final Constructor<T> f12731d;

    /* renamed from: e */
    public final Method f12732e;

    /* renamed from: f */
    public final Function<I, T> f12733f;

    /* renamed from: g */
    public final Object f12734g;

    /* renamed from: h */
    public ObjectReader f12735h;

    public ObjectReaderImplValue(Class<T> cls, Type type, Class<I> cls2, long j, String str, Object obj, Constructor<T> constructor, Method method, Function<I, T> function) {
        this.f12728a = type;
        this.f12729b = cls2;
        this.f12730c = j;
        this.f12731d = constructor;
        this.f12732e = method;
        this.f12733f = function;
        if (method != null) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 2) {
                this.f12734g = Array.newInstance(parameterTypes[1].getComponentType(), 0);
                return;
            }
        }
        this.f12734g = null;
    }

    /* renamed from: of */
    public static <I, T> ObjectReaderImplValue<I, T> m7484of(Class<T> cls, Class<I> cls2, Method method) {
        return new ObjectReaderImplValue<>(cls, cls2, cls2, 0L, null, null, null, method, null);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        return readObject(jSONReader, type, obj, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (this.f12735h == null) {
            this.f12735h = jSONReader.getObjectReader(this.f12728a);
        }
        Object readObject = this.f12735h.readObject(jSONReader, type, obj, j | this.f12730c);
        if (readObject == null) {
            return null;
        }
        Function<I, T> function = this.f12733f;
        if (function != 0) {
            try {
                return (T) function.apply(readObject);
            } catch (Exception e) {
                throw new JSONException(jSONReader.info("create object error"), e);
            }
        }
        Constructor<T> constructor = this.f12731d;
        if (constructor != null) {
            try {
                return constructor.newInstance(readObject);
            } catch (Exception e2) {
                throw new JSONException(jSONReader.info("create object error"), e2);
            }
        }
        Method method = this.f12732e;
        if (method == null) {
            throw new JSONException(jSONReader.info("create object error"));
        }
        try {
            Object obj2 = this.f12734g;
            return obj2 != null ? (T) method.invoke(null, readObject, obj2) : (T) method.invoke(null, readObject);
        } catch (Exception e3) {
            throw new JSONException(jSONReader.info("create object error"), e3);
        }
    }

    /* renamed from: of */
    public static <I, T> ObjectReaderImplValue<I, T> m7485of(Class<T> cls, Class<I> cls2, Function<I, T> function) {
        return new ObjectReaderImplValue<>(cls, cls2, cls2, 0L, null, null, null, null, function);
    }
}
