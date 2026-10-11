package com.oplus.ocs.base;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.oplus.ocs.base.common.CapabilityInfo;

/* loaded from: classes9.dex */
public interface IAuthenticationListener extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.ocs.base.IAuthenticationListener";

    /* loaded from: classes9.dex */
    public static class Default implements IAuthenticationListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.oplus.ocs.base.IAuthenticationListener
        public void onFail(int i) throws RemoteException {
        }

        @Override // com.oplus.ocs.base.IAuthenticationListener
        public void onSuccess(CapabilityInfo capabilityInfo) throws RemoteException {
        }
    }

    /* loaded from: classes9.dex */
    public static abstract class Stub extends Binder implements IAuthenticationListener {
        static final int TRANSACTION_onFail = 2;
        static final int TRANSACTION_onSuccess = 1;

        /* loaded from: classes9.dex */
        public static class Proxy implements IAuthenticationListener {
            public static IAuthenticationListener sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IAuthenticationListener.DESCRIPTOR;
            }

            @Override // com.oplus.ocs.base.IAuthenticationListener
            public void onFail(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IAuthenticationListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onFail(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ocs.base.IAuthenticationListener
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
                    if (this.mRemote.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
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
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IAuthenticationListener)) ? new Proxy(iBinder) : (IAuthenticationListener) queryLocalInterface;
        }

        public static IAuthenticationListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAuthenticationListener iAuthenticationListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iAuthenticationListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAuthenticationListener;
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
