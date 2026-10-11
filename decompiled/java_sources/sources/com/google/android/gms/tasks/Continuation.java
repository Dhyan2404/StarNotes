package com.google.android.gms.tasks;

import androidx.annotation.NonNull;

/* loaded from: classes5.dex */
public interface Continuation<TResult, TContinuationResult> {
    TContinuationResult then(@NonNull Task<TResult> task) throws Exception;
}
