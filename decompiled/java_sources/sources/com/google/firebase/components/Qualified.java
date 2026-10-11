package com.google.firebase.components;

import androidx.annotation.NonNull;
import java.lang.annotation.Annotation;

/* loaded from: classes6.dex */
public final class Qualified<T> {

    /* renamed from: a */
    public final Class<? extends Annotation> f35833a;

    /* renamed from: b */
    public final Class<T> f35834b;

    /* renamed from: com.google.firebase.components.Qualified$a */
    /* loaded from: classes6.dex */
    public @interface InterfaceC6453a {
    }

    public Qualified(Class<? extends Annotation> cls, Class<T> cls2) {
        this.f35833a = cls;
        this.f35834b = cls2;
    }

    @NonNull
    public static <T> Qualified<T> qualified(Class<? extends Annotation> cls, Class<T> cls2) {
        return new Qualified<>(cls, cls2);
    }

    @NonNull
    public static <T> Qualified<T> unqualified(Class<T> cls) {
        return new Qualified<>(InterfaceC6453a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Qualified.class != obj.getClass()) {
            return false;
        }
        Qualified qualified = (Qualified) obj;
        if (this.f35834b.equals(qualified.f35834b)) {
            return this.f35833a.equals(qualified.f35833a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f35834b.hashCode() * 31) + this.f35833a.hashCode();
    }

    public String toString() {
        if (this.f35833a == InterfaceC6453a.class) {
            return this.f35834b.getName();
        }
        return "@" + this.f35833a.getName() + " " + this.f35834b.getName();
    }
}
