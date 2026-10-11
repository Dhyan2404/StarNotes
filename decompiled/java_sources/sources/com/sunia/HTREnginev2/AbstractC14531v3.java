package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.NoSuchElementException;

@snf
@GwtCompatible
/* renamed from: com.sunia.HTREnginev2.v3 */
/* loaded from: classes6.dex */
public abstract class AbstractC14531v3<E> extends UnmodifiableListIterator<E> {

    /* renamed from: e */
    public final int f87079e;

    /* renamed from: f */
    public int f87080f;

    public AbstractC14531v3(int i) {
        this(i, 0);
    }

    @xvk
    /* renamed from: a */
    public abstract E mo26054a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f87080f < this.f87079e;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f87080f > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    @xvk
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f87080f;
        this.f87080f = i + 1;
        return mo26054a(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f87080f;
    }

    @Override // java.util.ListIterator
    @xvk
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f87080f - 1;
        this.f87080f = i;
        return mo26054a(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f87080f - 1;
    }

    public AbstractC14531v3(int i, int i2) {
        Preconditions.checkPositionIndex(i2, i);
        this.f87079e = i;
        this.f87080f = i2;
    }
}
