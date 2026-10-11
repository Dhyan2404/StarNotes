package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes5.dex */
public final class mep extends com.google.android.gms.auth.api.signin.internal.zba {

    /* renamed from: a */
    public final /* synthetic */ oep f77524a;

    public mep(oep oepVar) {
        this.f77524a = oepVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void zbb(Status status) throws RemoteException {
        this.f77524a.setResult((oep) status);
    }
}
