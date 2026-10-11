package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.auth.api.accounttransfer.AccountTransferClient;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.internal.auth.zzbb;

/* loaded from: classes5.dex */
public final class zkp extends xpp {

    /* renamed from: f */
    public final /* synthetic */ zzbb f91911f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zkp(AccountTransferClient accountTransferClient, int i, zzbb zzbbVar) {
        super(1609);
        this.f91911f = zzbbVar;
    }

    @Override // com.sunia.HTREnginev2.jop
    /* renamed from: a */
    public final void mo53280a(zzau zzauVar) throws RemoteException {
        zzauVar.zze(this.f89942e, this.f91911f);
    }
}
