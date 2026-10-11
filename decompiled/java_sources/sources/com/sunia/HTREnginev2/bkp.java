package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.auth.api.accounttransfer.AccountTransferClient;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.internal.auth.zzax;

/* loaded from: classes5.dex */
public final class bkp extends jop {

    /* renamed from: e */
    public final /* synthetic */ zzax f65851e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bkp(AccountTransferClient accountTransferClient, int i, zzax zzaxVar) {
        super(1607, null);
        this.f65851e = zzaxVar;
    }

    @Override // com.sunia.HTREnginev2.jop
    /* renamed from: a */
    public final void mo53280a(zzau zzauVar) throws RemoteException {
        zzauVar.zzg(new tjp(this, this), this.f65851e);
    }
}
