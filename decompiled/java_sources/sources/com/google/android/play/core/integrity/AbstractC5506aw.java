package com.google.android.play.core.integrity;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC5570r;
import com.google.android.play.integrity.internal.C5546ad;

/* renamed from: com.google.android.play.core.integrity.aw */
/* loaded from: classes6.dex */
abstract class AbstractC5506aw extends AbstractRunnableC5570r {

    /* renamed from: f */
    final /* synthetic */ C5507ax f33408f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC5506aw(@Nullable C5507ax c5507ax, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        this.f33408f = c5507ax;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: a */
    public final void mo25663a(Exception exc) {
        if (!(exc instanceof C5546ad)) {
            super.mo25663a(exc);
        } else if (C5507ax.m25682g(this.f33408f)) {
            super.mo25663a(new StandardIntegrityException(-2, exc));
        } else {
            super.mo25663a(new StandardIntegrityException(-9, exc));
        }
    }
}
