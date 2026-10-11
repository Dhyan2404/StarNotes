package com.oplus.ocs.base.task;

/* loaded from: classes9.dex */
public interface Continuation<TResult, TContinuationResult> {
    TContinuationResult then(Task<TResult> task);
}
