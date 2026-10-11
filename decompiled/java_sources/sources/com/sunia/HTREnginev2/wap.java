package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes5.dex */
public final class wap extends com.google.android.gms.common.internal.service.zaa {

    /* renamed from: a */
    public final BaseImplementation.ResultHolder f88423a;

    public wap(BaseImplementation.ResultHolder resultHolder) {
        this.f88423a = resultHolder;
    }

    @Override // com.google.android.gms.common.internal.service.zaa, com.google.android.gms.common.internal.service.zak
    public final void zab(int i) throws RemoteException {
        this.f88423a.setResult(new Status(i));
    }
}
