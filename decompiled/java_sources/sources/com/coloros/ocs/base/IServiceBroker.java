package com.coloros.ocs.base;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.coloros.ocs.base.IAuthenticationListener;

/* loaded from: classes4.dex */
public interface IServiceBroker extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.ocs.base.IServiceBroker";

    /* loaded from: classes4.dex */
    public static class Default implements IServiceBroker {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.coloros.ocs.base.IServiceBroker
        public IBinder getBinder(String str, String str2) throws RemoteException {
            return null;
        }

        @Override // com.coloros.ocs.base.IServiceBroker
        public void handleAuthentication(String str, String str2, IAuthenticationListener iAuthenticationListener) throws RemoteException {
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IServiceBroker {

        /* renamed from: a */
        public static final int f16258a = 1;

        /* renamed from: b */
        public static final int f16259b = 2;

        /* renamed from: com.coloros.ocs.base.IServiceBroker$Stub$a */
        /* loaded from: classes4.dex */
        public static class C2143a implements IServiceBroker {

            /* renamed from: b */
            public static IServiceBroker f16260b;

            /* renamed from: a */
            public IBinder f16261a;

            public C2143a(IBinder iBinder) {
                this.f16261a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f16261a;
            }

            /* renamed from: e */
            public String m9709e() {
                return IServiceBroker.DESCRIPTOR;
            }

            @Override // com.coloros.ocs.base.IServiceBroker
            public IBinder getBinder(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IServiceBroker.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!this.f16261a.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBinder(str, str2);
                    }
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.coloros.ocs.base.IServiceBroker
            public void handleAuthentication(String str, String str2, IAuthenticationListener iAuthenticationListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IServiceBroker.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(iAuthenticationListener != null ? iAuthenticationListener.asBinder() : null);
                    if (this.f16261a.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().handleAuthentication(str, str2, iAuthenticationListener);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IServiceBroker.DESCRIPTOR);
        }

        public static IServiceBroker asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IServiceBroker.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IServiceBroker)) ? new C2143a(iBinder) : (IServiceBroker) queryLocalInterface;
        }

        public static IServiceBroker getDefaultImpl() {
            return C2143a.f16260b;
        }

        public static boolean setDefaultImpl(IServiceBroker iServiceBroker) {
            if (C2143a.f16260b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iServiceBroker == null) {
                return false;
            }
            C2143a.f16260b = iServiceBroker;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(IServiceBroker.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface(IServiceBroker.DESCRIPTOR);
                handleAuthentication(parcel.readString(), parcel.readString(), IAuthenticationListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(IServiceBroker.DESCRIPTOR);
            IBinder binder = getBinder(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(binder);
            return true;
        }
    }

    IBinder getBinder(String str, String str2) throws RemoteException;

    void handleAuthentication(String str, String str2, IAuthenticationListener iAuthenticationListener) throws RemoteException;
}
