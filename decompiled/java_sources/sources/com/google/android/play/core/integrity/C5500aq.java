package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC5570r;
import com.google.android.play.integrity.internal.C5549ag;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.integrity.aq */
/* loaded from: classes6.dex */
public final class C5500aq extends AbstractRunnableC5570r {

    /* renamed from: a */
    final /* synthetic */ Context f33394a;

    /* renamed from: b */
    final /* synthetic */ C5507ax f33395b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5500aq(C5507ax c5507ax, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.f33395b = c5507ax;
        this.f33394a = context;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: b */
    public final void mo25664b() {
        TaskCompletionSource taskCompletionSource;
        taskCompletionSource = this.f33395b.f33412d;
        taskCompletionSource.trySetResult(Boolean.valueOf(C5549ag.m25727a(this.f33394a)));
    }
}
