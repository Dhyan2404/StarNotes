package com.sunia.HTREnginev2;

import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class e6n extends JobImpl {
    public e6n(@Nullable Job job) {
        super(job);
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean childCancelled(@NotNull Throwable th) {
        return false;
    }
}
