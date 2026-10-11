package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.aof;

@DoNotMock("Use an instance of one of the Finalizable*Reference classes")
@GwtIncompatible
@aof
/* loaded from: classes6.dex */
public interface FinalizableReference {
    void finalizeReferent();
}
