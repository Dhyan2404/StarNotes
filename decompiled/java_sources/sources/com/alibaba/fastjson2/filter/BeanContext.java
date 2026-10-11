package com.alibaba.fastjson2.filter;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class BeanContext {

    /* renamed from: a */
    public final Class f12378a;

    /* renamed from: b */
    public final Method f12379b;

    /* renamed from: c */
    public final Field f12380c;

    /* renamed from: d */
    public final String f12381d;

    /* renamed from: e */
    public final String f12382e;

    /* renamed from: f */
    public final Class f12383f;

    /* renamed from: g */
    public final Type f12384g;

    /* renamed from: h */
    public final long f12385h;

    /* renamed from: i */
    public final String f12386i;

    public BeanContext(Class cls, Method method, Field field, String str, String str2, Class cls2, Type type, long j, String str3) {
        this.f12378a = cls;
        this.f12379b = method;
        this.f12380c = field;
        this.f12381d = str;
        this.f12382e = str2;
        this.f12383f = cls2;
        this.f12384g = type;
        this.f12385h = j;
        this.f12386i = str3;
    }

    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        Field field;
        Method method = this.f12379b;
        T t = method != null ? (T) method.getAnnotation(cls) : null;
        return (t != null || (field = this.f12380c) == null) ? t : (T) field.getAnnotation(cls);
    }

    public Class<?> getBeanClass() {
        return this.f12378a;
    }

    public long getFeatures() {
        return this.f12385h;
    }

    public Field getField() {
        return this.f12380c;
    }

    public Class<?> getFieldClass() {
        return this.f12383f;
    }

    public Type getFieldType() {
        return this.f12384g;
    }

    public String getFormat() {
        return this.f12386i;
    }

    public String getLabel() {
        return this.f12382e;
    }

    public Method getMethod() {
        return this.f12379b;
    }

    public String getName() {
        return this.f12381d;
    }

    public boolean isJsonDirect() {
        return (this.f12385h & 1125899906842624L) != 0;
    }
}
