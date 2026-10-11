package com.sunia.HTREnginev2;

import java.util.Collection;
import org.apache.commons.collections4.Closure;
import org.apache.commons.collections4.Predicate;
import org.apache.commons.collections4.Transformer;

/* loaded from: classes11.dex */
public class oyg {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> Closure<T> m56182a(Closure<? super T> closure) {
        return closure;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static <T> Predicate<T> m56183b(Predicate<? super T> predicate) {
        return predicate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static <I, O> Transformer<I, O> m56184c(Transformer<? super I, ? extends O> transformer) {
        return transformer;
    }

    /* renamed from: d */
    public static <E> Closure<E>[] m56185d(Closure<? super E>... closureArr) {
        if (closureArr == null) {
            return null;
        }
        return (Closure[]) closureArr.clone();
    }

    /* renamed from: e */
    public static <T> Predicate<T>[] m56186e(Predicate<? super T>... predicateArr) {
        if (predicateArr == null) {
            return null;
        }
        return (Predicate[]) predicateArr.clone();
    }

    /* renamed from: f */
    public static <I, O> Transformer<I, O>[] m56187f(Transformer<? super I, ? extends O>... transformerArr) {
        if (transformerArr == null) {
            return null;
        }
        return (Transformer[]) transformerArr.clone();
    }

    /* renamed from: g */
    public static void m56188g(Closure<?>... closureArr) {
        if (closureArr == null) {
            throw new NullPointerException("The closure array must not be null");
        }
        for (int i = 0; i < closureArr.length; i++) {
            if (closureArr[i] == null) {
                throw new NullPointerException("The closure array must not contain a null closure, index " + i + " was null");
            }
        }
    }

    /* renamed from: h */
    public static void m56189h(Predicate<?>... predicateArr) {
        if (predicateArr == null) {
            throw new NullPointerException("The predicate array must not be null");
        }
        for (int i = 0; i < predicateArr.length; i++) {
            if (predicateArr[i] == null) {
                throw new NullPointerException("The predicate array must not contain a null predicate, index " + i + " was null");
            }
        }
    }

    /* renamed from: i */
    public static void m56190i(Transformer<?, ?>... transformerArr) {
        if (transformerArr == null) {
            throw new NullPointerException("The transformer array must not be null");
        }
        for (int i = 0; i < transformerArr.length; i++) {
            if (transformerArr[i] == null) {
                throw new NullPointerException("The transformer array must not contain a null transformer, index " + i + " was null");
            }
        }
    }

    /* renamed from: j */
    public static <T> Predicate<? super T>[] m56191j(Collection<? extends Predicate<? super T>> collection) {
        if (collection == null) {
            throw new NullPointerException("The predicate collection must not be null");
        }
        Predicate<? super T>[] predicateArr = new Predicate[collection.size()];
        int i = 0;
        for (Predicate<? super T> predicate : collection) {
            predicateArr[i] = predicate;
            if (predicate == null) {
                throw new NullPointerException("The predicate collection must not contain a null predicate, index " + i + " was null");
            }
            i++;
        }
        return predicateArr;
    }
}
