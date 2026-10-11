package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C5569q;

/* renamed from: com.google.android.play.core.integrity.av */
/* loaded from: classes6.dex */
final class BinderC5505av extends BinderC5503at {

    /* renamed from: c */
    private final C5569q f33407c;

    public BinderC5505av(C5507ax c5507ax, TaskCompletionSource taskCompletionSource) {
        super(c5507ax, taskCompletionSource);
        this.f33407c = new C5569q("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.BinderC5503at, com.google.android.play.integrity.internal.InterfaceC5563k
    /* renamed from: e */
    public final void mo25677e(Bundle bundle) throws RemoteException {
        super.mo25677e(bundle);
        this.f33407c.m25748c("onWarmUpExpressIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f33404a.trySetException(new StandardIntegrityException(i, null));
        } else {
            this.f33404a.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
