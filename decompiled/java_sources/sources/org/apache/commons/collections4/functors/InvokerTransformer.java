package org.apache.commons.collections4.functors;

import java.lang.reflect.InvocationTargetException;
import org.apache.commons.collections4.FunctorException;
import org.apache.commons.collections4.Transformer;

/* loaded from: classes11.dex */
public class InvokerTransformer<I, O> implements Transformer<I, O> {

    /* renamed from: e */
    public final String f105003e;

    /* renamed from: f */
    public final Class<?>[] f105004f;

    /* renamed from: g */
    public final Object[] f105005g;

    public InvokerTransformer(String str) {
        this.f105003e = str;
        this.f105004f = null;
        this.f105005g = null;
    }

    public static <I, O> Transformer<I, O> invokerTransformer(String str) {
        if (str != null) {
            return new InvokerTransformer(str);
        }
        throw new NullPointerException("The method to invoke must not be null");
    }

    @Override // org.apache.commons.collections4.Transformer
    public O transform(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return (O) obj.getClass().getMethod(this.f105003e, this.f105004f).invoke(obj, this.f105005g);
        } catch (IllegalAccessException unused) {
            throw new FunctorException("InvokerTransformer: The method '" + this.f105003e + "' on '" + obj.getClass() + "' cannot be accessed");
        } catch (NoSuchMethodException unused2) {
            throw new FunctorException("InvokerTransformer: The method '" + this.f105003e + "' on '" + obj.getClass() + "' does not exist");
        } catch (InvocationTargetException e) {
            throw new FunctorException("InvokerTransformer: The method '" + this.f105003e + "' on '" + obj.getClass() + "' threw an exception", e);
        }
    }

    public static <I, O> Transformer<I, O> invokerTransformer(String str, Class<?>[] clsArr, Object[] objArr) {
        if (str != null) {
            if ((clsArr == null && objArr != null) || ((clsArr != null && objArr == null) || (clsArr != null && objArr != null && clsArr.length != objArr.length))) {
                throw new IllegalArgumentException("The parameter types must match the arguments");
            }
            if (clsArr != null && clsArr.length != 0) {
                return new InvokerTransformer(str, clsArr, objArr);
            }
            return new InvokerTransformer(str);
        }
        throw new NullPointerException("The method to invoke must not be null");
    }

    public InvokerTransformer(String str, Class<?>[] clsArr, Object[] objArr) {
        this.f105003e = str;
        this.f105004f = clsArr != null ? (Class[]) clsArr.clone() : null;
        this.f105005g = objArr != null ? (Object[]) objArr.clone() : null;
    }
}
