package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class BatchResult implements Result {

    /* renamed from: e */
    public final Status f29051e;

    /* renamed from: f */
    public final PendingResult[] f29052f;

    public BatchResult(Status status, PendingResult[] pendingResultArr) {
        this.f29051e = status;
        this.f29052f = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    @NonNull
    public Status getStatus() {
        return this.f29051e;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    public <R extends Result> R take(@NonNull BatchResultToken<R> batchResultToken) {
        Preconditions.checkArgument(batchResultToken.mId < this.f29052f.length, "The result token does not belong to this batch");
        return (R) this.f29052f[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
