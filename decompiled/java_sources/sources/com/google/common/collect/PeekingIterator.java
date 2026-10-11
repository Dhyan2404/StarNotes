package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Iterator;

@DoNotMock("Use Iterators.peekingIterator")
@snf
@GwtCompatible
/* loaded from: classes6.dex */
public interface PeekingIterator<E> extends Iterator<E> {
    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    @xvk
    E next();

    @xvk
    E peek();

    @Override // java.util.Iterator
    void remove();
}
