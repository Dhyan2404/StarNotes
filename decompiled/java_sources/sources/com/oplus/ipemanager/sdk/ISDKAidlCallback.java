package com.oplus.ipemanager.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes9.dex */
public interface ISDKAidlCallback extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.ipemanager.sdk.ISDKAidlCallback";

    /* renamed from: com.oplus.ipemanager.sdk.ISDKAidlCallback$a */
    /* loaded from: classes9.dex */
    public static abstract class AbstractBinderC13023a extends Binder implements ISDKAidlCallback {
        static final int TRANSACTION_onConnectionChanged = 1;
        static final int TRANSACTION_onDemoModeEnableChange = 4;
        static final int TRANSACTION_onFunctionFeedbackStateChange = 3;
        static final int TRANSACTION_onVibrationSwitchStateChange = 2;

        /* renamed from: com.oplus.ipemanager.sdk.ISDKAidlCallback$a$a */
        /* loaded from: classes9.dex */
        public static class a implements ISDKAidlCallback {

            /* renamed from: a */
            public static ISDKAidlCallback f62971a;

            /* renamed from: b */
            private IBinder f62972b;

            public a(IBinder iBinder) {
                this.f62972b = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f62972b;
            }

            @Override // com.oplus.ipemanager.sdk.ISDKAidlCallback
            public final void onConnectionChanged(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISDKAidlCallback.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.f62972b.transact(1, obtain, null, 1) || AbstractBinderC13023a.getDefaultImpl() == null) {
                        return;
                    }
                    AbstractBinderC13023a.getDefaultImpl().onConnectionChanged(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISDKAidlCallback
            public final void onDemoModeEnableChange(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISDKAidlCallback.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f62972b.transact(4, obtain, null, 1) || AbstractBinderC13023a.getDefaultImpl() == null) {
                        return;
                    }
                    AbstractBinderC13023a.getDefaultImpl().onDemoModeEnableChange(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISDKAidlCallback
            public final void onFunctionFeedbackStateChange(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISDKAidlCallback.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f62972b.transact(3, obtain, null, 1) || AbstractBinderC13023a.getDefaultImpl() == null) {
                        return;
                    }
                    AbstractBinderC13023a.getDefaultImpl().onFunctionFeedbackStateChange(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISDKAidlCallback
            public final void onVibrationSwitchStateChange(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISDKAidlCallback.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f62972b.transact(2, obtain, null, 1) || AbstractBinderC13023a.getDefaultImpl() == null) {
                        return;
                    }
                    AbstractBinderC13023a.getDefaultImpl().onVibrationSwitchStateChange(z);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC13023a() {
            attachInterface(this, ISDKAidlCallback.DESCRIPTOR);
        }

        public static ISDKAidlCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ISDKAidlCallback.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISDKAidlCallback)) ? new a(iBinder) : (ISDKAidlCallback) queryLocalInterface;
        }

        public static ISDKAidlCallback getDefaultImpl() {
            return a.f62971a;
        }

        public static boolean setDefaultImpl(ISDKAidlCallback iSDKAidlCallback) {
            if (a.f62971a != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iSDKAidlCallback == null) {
                return false;
            }
            a.f62971a = iSDKAidlCallback;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(ISDKAidlCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface(ISDKAidlCallback.DESCRIPTOR);
                onConnectionChanged(parcel.readInt());
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(ISDKAidlCallback.DESCRIPTOR);
                onVibrationSwitchStateChange(parcel.readInt() != 0);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(ISDKAidlCallback.DESCRIPTOR);
                onFunctionFeedbackStateChange(parcel.readInt() != 0);
                return true;
            }
            if (i != 4) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(ISDKAidlCallback.DESCRIPTOR);
            onDemoModeEnableChange(parcel.readInt() != 0);
            return true;
        }
    }

    void onConnectionChanged(int i) throws RemoteException;

    void onDemoModeEnableChange(boolean z) throws RemoteException;

    void onFunctionFeedbackStateChange(boolean z) throws RemoteException;

    void onVibrationSwitchStateChange(boolean z) throws RemoteException;
}
