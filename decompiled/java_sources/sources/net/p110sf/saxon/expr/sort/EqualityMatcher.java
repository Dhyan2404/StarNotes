package net.p110sf.saxon.expr.sort;

/* loaded from: classes11.dex */
public interface EqualityMatcher<T> {
    boolean equal(T t, T t2);

    int hash(T t);
}
