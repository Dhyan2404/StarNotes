package com.sunia.HTREnginev2;

import kotlin.jvm.JvmField;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.Segment;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class fel<E> implements Waiter {

    /* renamed from: e */
    @JvmField
    @NotNull
    public final CancellableContinuationImpl<ChannelResult<? extends E>> f69939e;

    /* JADX WARN: Multi-variable type inference failed */
    public fel(@NotNull CancellableContinuationImpl<? super ChannelResult<? extends E>> cancellableContinuationImpl) {
        this.f69939e = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(@NotNull Segment<?> segment, int i) {
        this.f69939e.invokeOnCancellation(segment, i);
    }
}
