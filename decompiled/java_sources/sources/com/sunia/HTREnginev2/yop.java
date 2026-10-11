package com.sunia.HTREnginev2;

import com.google.android.gms.auth.api.accounttransfer.AccountTransferException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzan;

/* loaded from: classes5.dex */
public final class yop extends zzan {

    /* renamed from: a */
    public final /* synthetic */ xpp f90938a;

    public yop(xpp xppVar) {
        this.f90938a = xppVar;
    }

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void zzd(Status status) {
        this.f90938a.f74545d.setException(new AccountTransferException(status));
    }

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void zze() {
        this.f90938a.f74545d.setResult(null);
    }
}
