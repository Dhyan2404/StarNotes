package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* loaded from: classes5.dex */
public final class ibp<R extends Result> extends BasePendingResult<R> {

    /* renamed from: a */
    public final Result f73096a;

    public ibp(GoogleApiClient googleApiClient, Result result) {
        super(googleApiClient);
        this.f73096a = result;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        return (R) this.f73096a;
    }
}
