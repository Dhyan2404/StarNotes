package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C5569q;
import com.google.android.play.integrity.internal.InterfaceC5561i;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.integrity.as */
/* loaded from: classes6.dex */
public final class C5502as extends AbstractC5506aw {

    /* renamed from: a */
    final /* synthetic */ String f33399a;

    /* renamed from: b */
    final /* synthetic */ long f33400b;

    /* renamed from: c */
    final /* synthetic */ long f33401c;

    /* renamed from: d */
    final /* synthetic */ TaskCompletionSource f33402d;

    /* renamed from: e */
    final /* synthetic */ C5507ax f33403e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5502as(C5507ax c5507ax, TaskCompletionSource taskCompletionSource, String str, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(c5507ax, taskCompletionSource);
        this.f33403e = c5507ax;
        this.f33399a = str;
        this.f33400b = j;
        this.f33401c = j2;
        this.f33402d = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: b */
    public final void mo25664b() {
        C5569q c5569q;
        if (C5507ax.m25682g(this.f33403e)) {
            super.mo25663a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            C5507ax c5507ax = this.f33403e;
            ((InterfaceC5561i) c5507ax.f33409a.m25719e()).mo25740c(C5507ax.m25678a(c5507ax, this.f33399a, this.f33400b, this.f33401c), new BinderC5504au(this.f33403e, this.f33402d));
        } catch (RemoteException e) {
            c5569q = this.f33403e.f33410b;
            c5569q.m25747b(e, "requestExpressIntegrityToken(%s, %s)", this.f33399a, Long.valueOf(this.f33400b));
            this.f33402d.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
