package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes5.dex */
public final class jep extends com.google.android.gms.auth.api.signin.internal.zba {

    /* renamed from: a */
    public final /* synthetic */ kep f74237a;

    public jep(kep kepVar) {
        this.f74237a = kepVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void zbc(Status status) throws RemoteException {
        this.f74237a.setResult((kep) status);
    }
}
