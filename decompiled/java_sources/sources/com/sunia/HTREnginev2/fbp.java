package com.sunia.HTREnginev2;

import android.os.Looper;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* loaded from: classes5.dex */
public final class fbp<R extends Result> extends BasePendingResult<R> {

    /* renamed from: a */
    public final Result f69857a;

    public fbp(Result result) {
        super(Looper.getMainLooper());
        this.f69857a = result;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        if (status.getStatusCode() == this.f69857a.getStatus().getStatusCode()) {
            return (R) this.f69857a;
        }
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
