package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import java.util.Queue;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class lae<T> extends AbstractIterator<T> {

    /* renamed from: g */
    public final Queue<T> f76285g;

    public lae(Queue<T> queue) {
        this.f76285g = (Queue) Preconditions.checkNotNull(queue);
    }

    @Override // com.google.common.collect.AbstractIterator
    @CheckForNull
    public T computeNext() {
        return this.f76285g.isEmpty() ? endOfData() : this.f76285g.remove();
    }
}
