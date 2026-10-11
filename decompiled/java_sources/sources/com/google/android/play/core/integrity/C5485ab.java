package com.google.android.play.core.integrity;

import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC5570r;
import com.google.android.play.integrity.internal.C5546ad;
import com.google.android.play.integrity.internal.C5569q;
import com.google.android.play.integrity.internal.InterfaceC5566n;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.integrity.ab */
/* loaded from: classes6.dex */
public final class C5485ab extends AbstractRunnableC5570r {

    /* renamed from: a */
    final /* synthetic */ byte[] f33369a;

    /* renamed from: b */
    final /* synthetic */ Long f33370b;

    /* renamed from: c */
    final /* synthetic */ TaskCompletionSource f33371c;

    /* renamed from: d */
    final /* synthetic */ IntegrityTokenRequest f33372d;

    /* renamed from: e */
    final /* synthetic */ C5487ad f33373e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5485ab(C5487ad c5487ad, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l, Parcelable parcelable, TaskCompletionSource taskCompletionSource2, IntegrityTokenRequest integrityTokenRequest) {
        super(taskCompletionSource);
        this.f33373e = c5487ad;
        this.f33369a = bArr;
        this.f33370b = l;
        this.f33371c = taskCompletionSource2;
        this.f33372d = integrityTokenRequest;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: a */
    public final void mo25663a(Exception exc) {
        if (exc instanceof C5546ad) {
            super.mo25663a(new IntegrityServiceException(-9, exc));
        } else {
            super.mo25663a(exc);
        }
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: b */
    public final void mo25664b() {
        C5569q c5569q;
        try {
            ((InterfaceC5566n) this.f33373e.f33377a.m25719e()).mo25743c(C5487ad.m25666a(this.f33373e, this.f33369a, this.f33370b, null), new BinderC5486ac(this.f33373e, this.f33371c));
        } catch (RemoteException e) {
            c5569q = this.f33373e.f33378b;
            c5569q.m25747b(e, "requestIntegrityToken(%s)", this.f33372d);
            this.f33371c.trySetException(new IntegrityServiceException(-100, e));
        }
    }
}
