package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;

/* renamed from: com.google.android.gms.common.api.a */
/* loaded from: classes5.dex */
public final class C5052a implements PendingResult.StatusListener {

    /* renamed from: a */
    public final /* synthetic */ Batch f29079a;

    public C5052a(Batch batch) {
        this.f29079a = batch;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Object obj;
        int i;
        int i2;
        boolean z;
        boolean z2;
        PendingResult[] pendingResultArr;
        obj = this.f29079a.f29048e;
        synchronized (obj) {
            if (this.f29079a.isCanceled()) {
                return;
            }
            if (status.isCanceled()) {
                this.f29079a.f29046c = true;
            } else if (!status.isSuccess()) {
                this.f29079a.f29045b = true;
            }
            Batch batch = this.f29079a;
            i = batch.f29044a;
            batch.f29044a = i - 1;
            Batch batch2 = this.f29079a;
            i2 = batch2.f29044a;
            if (i2 == 0) {
                z = batch2.f29046c;
                if (z) {
                    super/*com.google.android.gms.common.api.internal.BasePendingResult*/.cancel();
                } else {
                    z2 = batch2.f29045b;
                    Status status2 = z2 ? new Status(13) : Status.RESULT_SUCCESS;
                    Batch batch3 = this.f29079a;
                    pendingResultArr = batch3.f29047d;
                    batch3.setResult(new BatchResult(status2, pendingResultArr));
                }
            }
        }
    }
}
