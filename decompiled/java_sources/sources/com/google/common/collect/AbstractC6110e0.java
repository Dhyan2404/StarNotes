package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.ListIterator;

@snf
@GwtCompatible
/* renamed from: com.google.common.collect.e0 */
/* loaded from: classes6.dex */
public abstract class AbstractC6110e0<F, T> extends AbstractC6108d0<F, T> implements ListIterator<T> {
    public AbstractC6110e0(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    @Override // java.util.ListIterator
    public void add(@xvk T t) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public final ListIterator<? extends F> m26908b() {
        return Iterators.m26338a(this.f34588e);
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return m26908b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return m26908b().nextIndex();
    }

    @Override // java.util.ListIterator
    @xvk
    public final T previous() {
        return mo26351a(m26908b().previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return m26908b().previousIndex();
    }

    public void set(@xvk T t) {
        throw new UnsupportedOperationException();
    }
}
