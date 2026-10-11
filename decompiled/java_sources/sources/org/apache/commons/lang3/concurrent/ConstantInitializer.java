package org.apache.commons.lang3.concurrent;

import java.util.Objects;

/* loaded from: classes12.dex */
public class ConstantInitializer<T> implements ConcurrentInitializer<T> {

    /* renamed from: b */
    public static final String f107505b = "ConstantInitializer@%d [ object = %s ]";

    /* renamed from: a */
    public final T f107506a;

    public ConstantInitializer(T t) {
        this.f107506a = t;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ConstantInitializer) {
            return Objects.equals(getObject(), ((ConstantInitializer) obj).getObject());
        }
        return false;
    }

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        return getObject();
    }

    public final T getObject() {
        return this.f107506a;
    }

    public int hashCode() {
        if (getObject() != null) {
            return getObject().hashCode();
        }
        return 0;
    }

    public String toString() {
        return String.format(f107505b, Integer.valueOf(System.identityHashCode(this)), String.valueOf(getObject()));
    }
}
