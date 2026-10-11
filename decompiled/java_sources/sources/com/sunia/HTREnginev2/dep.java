package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Status;

/* loaded from: classes5.dex */
public final class dep extends com.google.android.gms.auth.api.signin.internal.zba {

    /* renamed from: a */
    public final /* synthetic */ gep f67781a;

    public dep(gep gepVar) {
        this.f67781a = gepVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void zbd(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
        if (googleSignInAccount != null) {
            com.google.android.gms.auth.api.signin.internal.zbn.zbc(this.f67781a.f70963a).zbe(this.f67781a.f70964b, googleSignInAccount);
        }
        this.f67781a.setResult((gep) new GoogleSignInResult(googleSignInAccount, status));
    }
}
