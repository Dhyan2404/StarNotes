package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.snf;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public abstract class AbstractSequentialIterator<T> extends UnmodifiableIterator<T> {

    /* renamed from: e */
    @CheckForNull
    public T f33909e;

    public AbstractSequentialIterator(@CheckForNull T t) {
        this.f33909e = t;
    }

    @CheckForNull
    public abstract T computeNext(T t);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f33909e != null;
    }

    @Override // java.util.Iterator
    public final T next() {
        T t = this.f33909e;
        if (t == null) {
            throw new NoSuchElementException();
        }
        this.f33909e = computeNext(t);
        return t;
    }
}
