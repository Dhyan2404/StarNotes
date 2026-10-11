package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class Batch extends BasePendingResult<BatchResult> {

    /* renamed from: a */
    public int f29044a;

    /* renamed from: b */
    public boolean f29045b;

    /* renamed from: c */
    public boolean f29046c;

    /* renamed from: d */
    public final PendingResult[] f29047d;

    /* renamed from: e */
    public final Object f29048e;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final List f29049a = new ArrayList();

        /* renamed from: b */
        public final GoogleApiClient f29050b;

        public Builder(@NonNull GoogleApiClient googleApiClient) {
            this.f29050b = googleApiClient;
        }

        @NonNull
        @ResultIgnorabilityUnspecified
        public <R extends Result> BatchResultToken<R> add(@NonNull PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.f29049a.size());
            this.f29049a.add(pendingResult);
            return batchResultToken;
        }

        @NonNull
        public Batch build() {
            return new Batch(this.f29049a, this.f29050b, null);
        }
    }

    public /* synthetic */ Batch(List list, GoogleApiClient googleApiClient, zac zacVar) {
        super(googleApiClient);
        this.f29048e = new Object();
        int size = list.size();
        this.f29044a = size;
        PendingResult[] pendingResultArr = new PendingResult[size];
        this.f29047d = pendingResultArr;
        if (list.isEmpty()) {
            setResult(new BatchResult(Status.RESULT_SUCCESS, pendingResultArr));
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            PendingResult pendingResult = (PendingResult) list.get(i);
            this.f29047d[i] = pendingResult;
            pendingResult.addStatusListener(new C5052a(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        int i = 0;
        while (true) {
            PendingResult[] pendingResultArr = this.f29047d;
            if (i >= pendingResultArr.length) {
                return;
            }
            pendingResultArr[i].cancel();
            i++;
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    @NonNull
    public BatchResult createFailedResult(@NonNull Status status) {
        return new BatchResult(status, this.f29047d);
    }
}
