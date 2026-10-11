package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.auth.api.accounttransfer.AccountTransferClient;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.internal.auth.zzaz;

/* loaded from: classes5.dex */
public final class ejp extends xpp {

    /* renamed from: f */
    public final /* synthetic */ zzaz f69012f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ejp(AccountTransferClient accountTransferClient, int i, zzaz zzazVar) {
        super(1606);
        this.f69012f = zzazVar;
    }

    @Override // com.sunia.HTREnginev2.jop
    /* renamed from: a */
    public final void mo53280a(zzau zzauVar) throws RemoteException {
        zzauVar.zzh(this.f89942e, this.f69012f);
    }
}
