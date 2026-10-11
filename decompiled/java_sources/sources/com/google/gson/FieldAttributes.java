package com.google.gson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;

/* loaded from: classes6.dex */
public final class FieldAttributes {

    /* renamed from: a */
    public final Field f36043a;

    public FieldAttributes(Field field) {
        Objects.requireNonNull(field);
        this.f36043a = field;
    }

    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) this.f36043a.getAnnotation(cls);
    }

    public Collection<Annotation> getAnnotations() {
        return Arrays.asList(this.f36043a.getAnnotations());
    }

    public Class<?> getDeclaredClass() {
        return this.f36043a.getType();
    }

    public Type getDeclaredType() {
        return this.f36043a.getGenericType();
    }

    public Class<?> getDeclaringClass() {
        return this.f36043a.getDeclaringClass();
    }

    public String getName() {
        return this.f36043a.getName();
    }

    public boolean hasModifier(int i) {
        return (this.f36043a.getModifiers() & i) != 0;
    }

    public String toString() {
        return this.f36043a.toString();
    }
}
