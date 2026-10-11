package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public final class zzdr extends zzbu implements zzdp {
    public zzdr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public final int zza() throws RemoteException {
        Parcel zza = zza(2, m22250a_());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public final void zza(String str, String str2, Bundle bundle, long j) throws RemoteException {
        Parcel m22250a_ = m22250a_();
        m22250a_.writeString(str);
        m22250a_.writeString(str2);
        zzbw.zza(m22250a_, bundle);
        m22250a_.writeLong(j);
        zzb(1, m22250a_);
    }
}
