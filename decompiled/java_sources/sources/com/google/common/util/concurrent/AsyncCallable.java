package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.pnf;

@FunctionalInterface
@GwtCompatible
@pnf
/* loaded from: classes6.dex */
public interface AsyncCallable<V> {
    ListenableFuture<V> call() throws Exception;
}
