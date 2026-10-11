package org.apache.commons.collections4.functors;

import java.lang.reflect.InvocationTargetException;
import org.apache.commons.collections4.FunctorException;
import org.apache.commons.collections4.Transformer;

/* loaded from: classes11.dex */
public class InstantiateTransformer<T> implements Transformer<Class<? extends T>, T> {

    /* renamed from: g */
    public static final Transformer f105000g = new InstantiateTransformer();

    /* renamed from: e */
    public final Class<?>[] f105001e;

    /* renamed from: f */
    public final Object[] f105002f;

    public InstantiateTransformer() {
        this.f105001e = null;
        this.f105002f = null;
    }

    public static <T> Transformer<Class<? extends T>, T> instantiateTransformer() {
        return f105000g;
    }

    public static <T> Transformer<Class<? extends T>, T> instantiateTransformer(Class<?>[] clsArr, Object[] objArr) {
        if ((clsArr == null && objArr != null) || ((clsArr != null && objArr == null) || (clsArr != null && objArr != null && clsArr.length != objArr.length))) {
            throw new IllegalArgumentException("Parameter types must match the arguments");
        }
        if (clsArr != null && clsArr.length != 0) {
            return new InstantiateTransformer(clsArr, objArr);
        }
        return new InstantiateTransformer();
    }

    @Override // org.apache.commons.collections4.Transformer
    public T transform(Class<? extends T> cls) {
        try {
            if (cls != null) {
                return cls.getConstructor(this.f105001e).newInstance(this.f105002f);
            }
            throw new FunctorException("InstantiateTransformer: Input object was not an instanceof Class, it was a null object");
        } catch (IllegalAccessException e) {
            throw new FunctorException("InstantiateTransformer: Constructor must be public", e);
        } catch (InstantiationException e2) {
            throw new FunctorException("InstantiateTransformer: InstantiationException", e2);
        } catch (NoSuchMethodException unused) {
            throw new FunctorException("InstantiateTransformer: The constructor must exist and be public ");
        } catch (InvocationTargetException e3) {
            throw new FunctorException("InstantiateTransformer: Constructor threw an exception", e3);
        }
    }

    public InstantiateTransformer(Class<?>[] clsArr, Object[] objArr) {
        this.f105001e = clsArr != null ? (Class[]) clsArr.clone() : null;
        this.f105002f = objArr != null ? (Object[]) objArr.clone() : null;
    }
}
