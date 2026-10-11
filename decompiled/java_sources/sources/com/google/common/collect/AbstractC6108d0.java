package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Iterator;

@snf
@GwtCompatible
/* renamed from: com.google.common.collect.d0 */
/* loaded from: classes6.dex */
public abstract class AbstractC6108d0<F, T> implements Iterator<T> {

    /* renamed from: e */
    public final Iterator<? extends F> f34588e;

    public AbstractC6108d0(Iterator<? extends F> it2) {
        this.f34588e = (Iterator) Preconditions.checkNotNull(it2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @xvk
    /* renamed from: a */
    public abstract T mo26351a(@xvk F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f34588e.hasNext();
    }

    @Override // java.util.Iterator
    @xvk
    public final T next() {
        return mo26351a(this.f34588e.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f34588e.remove();
    }
}
