package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C5569q;
import com.google.android.play.integrity.internal.InterfaceC5561i;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.integrity.ar */
/* loaded from: classes6.dex */
public final class C5501ar extends AbstractC5506aw {

    /* renamed from: a */
    final /* synthetic */ long f33396a;

    /* renamed from: b */
    final /* synthetic */ TaskCompletionSource f33397b;

    /* renamed from: c */
    final /* synthetic */ C5507ax f33398c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5501ar(C5507ax c5507ax, TaskCompletionSource taskCompletionSource, long j, TaskCompletionSource taskCompletionSource2) {
        super(c5507ax, taskCompletionSource);
        this.f33398c = c5507ax;
        this.f33396a = j;
        this.f33397b = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: b */
    public final void mo25664b() {
        C5569q c5569q;
        if (C5507ax.m25682g(this.f33398c)) {
            super.mo25663a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            C5507ax c5507ax = this.f33398c;
            ((InterfaceC5561i) c5507ax.f33409a.m25719e()).mo25741d(C5507ax.m25679b(c5507ax, this.f33396a), new BinderC5505av(this.f33398c, this.f33397b));
        } catch (RemoteException e) {
            c5569q = this.f33398c.f33410b;
            c5569q.m25747b(e, "warmUpIntegrityToken(%s)", Long.valueOf(this.f33396a));
            this.f33397b.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
