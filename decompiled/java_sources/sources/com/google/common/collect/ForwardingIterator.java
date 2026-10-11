package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Iterator;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public abstract class ForwardingIterator<T> extends ForwardingObject implements Iterator<T> {
    @Override // com.google.common.collect.ForwardingObject
    public abstract Iterator<T> delegate();

    @Override // java.util.Iterator
    public boolean hasNext() {
        return delegate().hasNext();
    }

    @CanIgnoreReturnValue
    @xvk
    public T next() {
        return delegate().next();
    }

    public void remove() {
        delegate().remove();
    }
}
