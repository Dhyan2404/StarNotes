package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.snf;

@DoNotMock("Use Interners.new*Interner")
@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public interface Interner<E> {
    @CanIgnoreReturnValue
    E intern(E e);
}
