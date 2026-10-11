package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.auth.api.accounttransfer.AccountTransferClient;
import com.google.android.gms.internal.auth.zzaq;
import com.google.android.gms.internal.auth.zzau;

/* loaded from: classes5.dex */
public final class qkp extends jop {

    /* renamed from: e */
    public final /* synthetic */ zzaq f82168e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qkp(AccountTransferClient accountTransferClient, int i, zzaq zzaqVar) {
        super(1608, null);
        this.f82168e = zzaqVar;
    }

    @Override // com.sunia.HTREnginev2.jop
    /* renamed from: a */
    public final void mo53280a(zzau zzauVar) throws RemoteException {
        zzauVar.zzd(new ckp(this, this), this.f82168e);
    }
}
