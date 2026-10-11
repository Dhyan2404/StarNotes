package com.coloros.ocs.base;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.oplus.ocs.base.common.CapabilityInfo;

/* loaded from: classes4.dex */
public interface IAuthenticationListener extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.ocs.base.IAuthenticationListener";

    /* loaded from: classes4.dex */
    public static class Default implements IAuthenticationListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.coloros.ocs.base.IAuthenticationListener
        public void onFail(int i) throws RemoteException {
        }

        @Override // com.coloros.ocs.base.IAuthenticationListener
        public void onSuccess(CapabilityInfo capabilityInfo) throws RemoteException {
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IAuthenticationListener {
        static final int TRANSACTION_onFail = 2;
        static final int TRANSACTION_onSuccess = 1;

        /* renamed from: com.coloros.ocs.base.IAuthenticationListener$Stub$a */
        /* loaded from: classes4.dex */
        public static class C2142a implements IAuthenticationListener {

            /* renamed from: b */
            public static IAuthenticationListener f16256b;

            /* renamed from: a */
            public IBinder f16257a;

            public C2142a(IBinder iBinder) {
                this.f16257a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f16257a;
            }

            /* renamed from: e */
            public String m9708e() {
                return IAuthenticationListener.DESCRIPTOR;
            }

            @Override // com.coloros.ocs.base.IAuthenticationListener
            public void onFail(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IAuthenticationListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.f16257a.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onFail(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.coloros.ocs.base.IAuthenticationListener
            public void onSuccess(CapabilityInfo capabilityInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IAuthenticationListener.DESCRIPTOR);
                    if (capabilityInfo != null) {
                        obtain.writeInt(1);
                        capabilityInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f16257a.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSuccess(capabilityInfo);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IAuthenticationListener.DESCRIPTOR);
        }

        public static IAuthenticationListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IAuthenticationListener.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IAuthenticationListener)) ? new C2142a(iBinder) : (IAuthenticationListener) queryLocalInterface;
        }

        public static IAuthenticationListener getDefaultImpl() {
            return C2142a.f16256b;
        }

        public static boolean setDefaultImpl(IAuthenticationListener iAuthenticationListener) {
            if (C2142a.f16256b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iAuthenticationListener == null) {
                return false;
            }
            C2142a.f16256b = iAuthenticationListener;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(IAuthenticationListener.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface(IAuthenticationListener.DESCRIPTOR);
                onSuccess(parcel.readInt() != 0 ? CapabilityInfo.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(IAuthenticationListener.DESCRIPTOR);
            onFail(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void onFail(int i) throws RemoteException;

    void onSuccess(CapabilityInfo capabilityInfo) throws RemoteException;
}
