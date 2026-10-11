package com.google.common.util.concurrent;

import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.pnf;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

@DoNotMock("Use the methods in Futures (like immediateFuture) or SettableFuture")
@pnf
/* loaded from: classes6.dex */
public interface ListenableFuture<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
