package com.samsung.android.sdk.penremote;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.samsung.android.sdk.penremote.ISpenEventListener;

/* loaded from: classes9.dex */
public interface ISPenRemoteService extends IInterface {

    /* loaded from: classes9.dex */
    public static abstract class Stub extends Binder implements ISPenRemoteService {

        /* renamed from: a */
        public static final String f63299a = "com.samsung.android.sdk.penremote.ISPenRemoteService";

        /* renamed from: b */
        public static final int f63300b = 1;

        /* renamed from: c */
        public static final int f63301c = 2;

        /* renamed from: com.samsung.android.sdk.penremote.ISPenRemoteService$Stub$a */
        /* loaded from: classes9.dex */
        public static class C13113a implements ISPenRemoteService {

            /* renamed from: a */
            public IBinder f63302a;

            public C13113a(IBinder iBinder) {
                this.f63302a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f63302a;
            }

            /* renamed from: e */
            public String m52394e() {
                return Stub.f63299a;
            }

            @Override // com.samsung.android.sdk.penremote.ISPenRemoteService
            public void registerSpenEventListener(int i, ISpenEventListener iSpenEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.f63299a);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iSpenEventListener != null ? iSpenEventListener.asBinder() : null);
                    this.f63302a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.sdk.penremote.ISPenRemoteService
            public void unregisterSpenEventListener(int i, ISpenEventListener iSpenEventListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.f63299a);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iSpenEventListener != null ? iSpenEventListener.asBinder() : null);
                    this.f63302a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, f63299a);
        }

        public static ISPenRemoteService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f63299a);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISPenRemoteService)) ? new C13113a(iBinder) : (ISPenRemoteService) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(f63299a);
                registerSpenEventListener(parcel.readInt(), ISpenEventListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(f63299a);
                return true;
            }
            parcel.enforceInterface(f63299a);
            unregisterSpenEventListener(parcel.readInt(), ISpenEventListener.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }

    void registerSpenEventListener(int i, ISpenEventListener iSpenEventListener) throws RemoteException;

    void unregisterSpenEventListener(int i, ISpenEventListener iSpenEventListener) throws RemoteException;
}
