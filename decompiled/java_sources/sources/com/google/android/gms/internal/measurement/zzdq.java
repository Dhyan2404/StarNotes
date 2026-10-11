package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public final class zzdq extends zzbu implements zzdo {
    public zzdq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzdo
    public final void zza(Bundle bundle) throws RemoteException {
        Parcel m22250a_ = m22250a_();
        zzbw.zza(m22250a_, bundle);
        zzb(1, m22250a_);
    }
}
