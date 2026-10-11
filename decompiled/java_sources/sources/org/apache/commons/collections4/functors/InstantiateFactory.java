package org.apache.commons.collections4.functors;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import org.apache.commons.collections4.Factory;
import org.apache.commons.collections4.FunctorException;

/* loaded from: classes11.dex */
public class InstantiateFactory<T> implements Factory<T> {

    /* renamed from: e */
    public final Class<T> f104996e;

    /* renamed from: f */
    public final Class<?>[] f104997f;

    /* renamed from: g */
    public final Object[] f104998g;

    /* renamed from: h */
    public transient Constructor<T> f104999h;

    public InstantiateFactory(Class<T> cls) {
        this.f104999h = null;
        this.f104996e = cls;
        this.f104997f = null;
        this.f104998g = null;
        m65949a();
    }

    public static <T> Factory<T> instantiateFactory(Class<T> cls, Class<?>[] clsArr, Object[] objArr) {
        if (cls == null) {
            throw new NullPointerException("Class to instantiate must not be null");
        }
        if ((clsArr != null || objArr == null) && ((clsArr == null || objArr != null) && (clsArr == null || objArr == null || clsArr.length == objArr.length))) {
            return (clsArr == null || clsArr.length == 0) ? new InstantiateFactory(cls) : new InstantiateFactory(cls, clsArr, objArr);
        }
        throw new IllegalArgumentException("Parameter types must match the arguments");
    }

    /* renamed from: a */
    public final void m65949a() {
        try {
            this.f104999h = this.f104996e.getConstructor(this.f104997f);
        } catch (NoSuchMethodException unused) {
            throw new IllegalArgumentException("InstantiateFactory: The constructor must exist and be public ");
        }
    }

    @Override // org.apache.commons.collections4.Factory
    public T create() {
        if (this.f104999h == null) {
            m65949a();
        }
        try {
            return this.f104999h.newInstance(this.f104998g);
        } catch (IllegalAccessException e) {
            throw new FunctorException("InstantiateFactory: Constructor must be public", e);
        } catch (InstantiationException e2) {
            throw new FunctorException("InstantiateFactory: InstantiationException", e2);
        } catch (InvocationTargetException e3) {
            throw new FunctorException("InstantiateFactory: Constructor threw an exception", e3);
        }
    }

    public InstantiateFactory(Class<T> cls, Class<?>[] clsArr, Object[] objArr) {
        this.f104999h = null;
        this.f104996e = cls;
        this.f104997f = (Class[]) clsArr.clone();
        this.f104998g = (Object[]) objArr.clone();
        m65949a();
    }
}
