package com.samsung.android.sdk.penremote;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes9.dex */
public interface ISpenEventListener extends IInterface {

    /* loaded from: classes9.dex */
    public static abstract class Stub extends Binder implements ISpenEventListener {

        /* renamed from: a */
        public static final String f63303a = "com.samsung.android.sdk.penremote.ISpenEventListener";

        /* renamed from: b */
        public static final int f63304b = 1;

        /* renamed from: com.samsung.android.sdk.penremote.ISpenEventListener$Stub$a */
        /* loaded from: classes9.dex */
        public static class C13114a implements ISpenEventListener {

            /* renamed from: a */
            public IBinder f63305a;

            public C13114a(IBinder iBinder) {
                this.f63305a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f63305a;
            }

            /* renamed from: e */
            public String m52395e() {
                return Stub.f63303a;
            }

            @Override // com.samsung.android.sdk.penremote.ISpenEventListener
            public void onEvent(SpenEvent spenEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.f63303a);
                    if (spenEvent != null) {
                        obtain.writeInt(1);
                        spenEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f63305a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, f63303a);
        }

        public static ISpenEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f63303a);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISpenEventListener)) ? new C13114a(iBinder) : (ISpenEventListener) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(f63303a);
                return true;
            }
            parcel.enforceInterface(f63303a);
            onEvent(parcel.readInt() != 0 ? SpenEvent.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void onEvent(SpenEvent spenEvent) throws RemoteException;
}
