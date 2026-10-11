package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;

/* renamed from: com.google.android.gms.common.internal.c */
/* loaded from: classes5.dex */
public final class C5066c implements PendingResult.StatusListener {

    /* renamed from: a */
    public final /* synthetic */ PendingResult f29377a;

    /* renamed from: b */
    public final /* synthetic */ TaskCompletionSource f29378b;

    /* renamed from: c */
    public final /* synthetic */ PendingResultUtil.ResultConverter f29379c;

    /* renamed from: d */
    public final /* synthetic */ zas f29380d;

    public C5066c(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, PendingResultUtil.ResultConverter resultConverter, zas zasVar) {
        this.f29377a = pendingResult;
        this.f29378b = taskCompletionSource;
        this.f29379c = resultConverter;
        this.f29380d = zasVar;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        if (!status.isSuccess()) {
            this.f29378b.setException(ApiExceptionUtil.fromStatus(status));
        } else {
            this.f29378b.setResult(this.f29379c.convert(this.f29377a.await(0L, TimeUnit.MILLISECONDS)));
        }
    }
}
