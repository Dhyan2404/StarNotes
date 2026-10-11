package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;

@FunctionalInterface
@GwtCompatible
@pnf
/* loaded from: classes6.dex */
public interface AsyncFunction<I, O> {
    ListenableFuture<O> apply(@uvk I i) throws Exception;
}
