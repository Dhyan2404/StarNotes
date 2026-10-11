package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;

/* renamed from: com.google.android.gms.common.internal.f */
/* loaded from: classes5.dex */
public final class C5069f implements IGmsServiceBroker {

    /* renamed from: a */
    public final IBinder f29382a;

    public C5069f(IBinder iBinder) {
        this.f29382a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29382a;
    }

    @Override // com.google.android.gms.common.internal.IGmsServiceBroker
    public final void getService(IGmsCallbacks iGmsCallbacks, @Nullable GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(iGmsCallbacks != null ? iGmsCallbacks.asBinder() : null);
            if (getServiceRequest != null) {
                obtain.writeInt(1);
                zzn.m22185a(getServiceRequest, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f29382a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
