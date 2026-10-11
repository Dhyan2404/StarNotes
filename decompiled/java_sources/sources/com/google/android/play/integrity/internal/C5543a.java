package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.google.android.play.integrity.internal.a */
/* loaded from: classes6.dex */
public class C5543a implements IInterface {

    /* renamed from: a */
    public final IBinder f33458a;

    /* renamed from: b */
    public final String f33459b;

    public C5543a(IBinder iBinder, String str) {
        this.f33458a = iBinder;
        this.f33459b = str;
    }

    /* renamed from: a */
    public final Parcel m25699a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f33459b);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f33458a;
    }

    /* renamed from: b */
    public final void m25700b(int i, Parcel parcel) throws RemoteException {
        try {
            this.f33458a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
