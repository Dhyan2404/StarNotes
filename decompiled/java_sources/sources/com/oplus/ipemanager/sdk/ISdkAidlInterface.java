package com.oplus.ipemanager.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.oplus.ipemanager.sdk.ISDKAidlCallback;
import java.util.List;

/* loaded from: classes9.dex */
public interface ISdkAidlInterface extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.ipemanager.sdk.ISdkAidlInterface";

    int getPencilConnectState() throws RemoteException;

    int getSuportSdkVersion() throws RemoteException;

    List<IpeFeature> getSupportFeatures() throws RemoteException;

    boolean getVibrationSwitchState() throws RemoteException;

    boolean isDemoModeEnable() throws RemoteException;

    boolean isFunctionVibrationEnable() throws RemoteException;

    void setISdkAidlCallback(ISDKAidlCallback iSDKAidlCallback) throws RemoteException;

    void setVibrationType(int i) throws RemoteException;

    void startFeedBackVibration() throws RemoteException;

    void startVibration(int i) throws RemoteException;

    void stopFeedBackVibration() throws RemoteException;

    void unsetISdkAidlCallback(ISDKAidlCallback iSDKAidlCallback) throws RemoteException;

    /* renamed from: com.oplus.ipemanager.sdk.ISdkAidlInterface$a */
    /* loaded from: classes9.dex */
    public static abstract class AbstractBinderC13024a extends Binder implements ISdkAidlInterface {

        /* renamed from: com.oplus.ipemanager.sdk.ISdkAidlInterface$a$a */
        /* loaded from: classes9.dex */
        public static class a implements ISdkAidlInterface {

            /* renamed from: a */
            public static ISdkAidlInterface f62973a;

            /* renamed from: b */
            private IBinder f62974b;

            public a(IBinder iBinder) {
                this.f62974b = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f62974b;
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final int getPencilConnectState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    if (!this.f62974b.transact(3, obtain, obtain2, 0) && AbstractBinderC13024a.m52149a() != null) {
                        return AbstractBinderC13024a.m52149a().getPencilConnectState();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final int getSuportSdkVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    if (!this.f62974b.transact(6, obtain, obtain2, 0) && AbstractBinderC13024a.m52149a() != null) {
                        return AbstractBinderC13024a.m52149a().getSuportSdkVersion();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final List<IpeFeature> getSupportFeatures() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    if (!this.f62974b.transact(7, obtain, obtain2, 0) && AbstractBinderC13024a.m52149a() != null) {
                        return AbstractBinderC13024a.m52149a().getSupportFeatures();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(IpeFeature.INSTANCE);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final boolean getVibrationSwitchState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    if (!this.f62974b.transact(2, obtain, obtain2, 0) && AbstractBinderC13024a.m52149a() != null) {
                        return AbstractBinderC13024a.m52149a().getVibrationSwitchState();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final boolean isDemoModeEnable() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    if (!this.f62974b.transact(8, obtain, obtain2, 0) && AbstractBinderC13024a.m52149a() != null) {
                        return AbstractBinderC13024a.m52149a().isDemoModeEnable();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final boolean isFunctionVibrationEnable() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    if (!this.f62974b.transact(9, obtain, obtain2, 0) && AbstractBinderC13024a.m52149a() != null) {
                        return AbstractBinderC13024a.m52149a().isFunctionVibrationEnable();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final void setISdkAidlCallback(ISDKAidlCallback iSDKAidlCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    obtain.writeStrongBinder(iSDKAidlCallback != null ? iSDKAidlCallback.asBinder() : null);
                    if (this.f62974b.transact(1, obtain, null, 1) || AbstractBinderC13024a.m52149a() == null) {
                        return;
                    }
                    AbstractBinderC13024a.m52149a().setISdkAidlCallback(iSDKAidlCallback);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final void setVibrationType(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.f62974b.transact(4, obtain, null, 1) || AbstractBinderC13024a.m52149a() == null) {
                        return;
                    }
                    AbstractBinderC13024a.m52149a().setVibrationType(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final void startFeedBackVibration() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    if (this.f62974b.transact(11, obtain, null, 1) || AbstractBinderC13024a.m52149a() == null) {
                        return;
                    }
                    AbstractBinderC13024a.m52149a().startFeedBackVibration();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final void startVibration(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.f62974b.transact(5, obtain, null, 1) || AbstractBinderC13024a.m52149a() == null) {
                        return;
                    }
                    AbstractBinderC13024a.m52149a().startVibration(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final void stopFeedBackVibration() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    if (this.f62974b.transact(12, obtain, null, 1) || AbstractBinderC13024a.m52149a() == null) {
                        return;
                    }
                    AbstractBinderC13024a.m52149a().stopFeedBackVibration();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.ipemanager.sdk.ISdkAidlInterface
            public final void unsetISdkAidlCallback(ISDKAidlCallback iSDKAidlCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISdkAidlInterface.DESCRIPTOR);
                    obtain.writeStrongBinder(iSDKAidlCallback != null ? iSDKAidlCallback.asBinder() : null);
                    if (this.f62974b.transact(10, obtain, null, 1) || AbstractBinderC13024a.m52149a() == null) {
                        return;
                    }
                    AbstractBinderC13024a.m52149a().unsetISdkAidlCallback(iSDKAidlCallback);
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* renamed from: a */
        public static ISdkAidlInterface m52150a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ISdkAidlInterface.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISdkAidlInterface)) {
                return (ISdkAidlInterface) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(ISdkAidlInterface.DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    setISdkAidlCallback(ISDKAidlCallback.AbstractBinderC13023a.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    boolean vibrationSwitchState = getVibrationSwitchState();
                    parcel2.writeNoException();
                    parcel2.writeInt(vibrationSwitchState ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    int pencilConnectState = getPencilConnectState();
                    parcel2.writeNoException();
                    parcel2.writeInt(pencilConnectState);
                    return true;
                case 4:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    setVibrationType(parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    startVibration(parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    int suportSdkVersion = getSuportSdkVersion();
                    parcel2.writeNoException();
                    parcel2.writeInt(suportSdkVersion);
                    return true;
                case 7:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    List<IpeFeature> supportFeatures = getSupportFeatures();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(supportFeatures);
                    return true;
                case 8:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    boolean isDemoModeEnable = isDemoModeEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(isDemoModeEnable ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    boolean isFunctionVibrationEnable = isFunctionVibrationEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(isFunctionVibrationEnable ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    unsetISdkAidlCallback(ISDKAidlCallback.AbstractBinderC13023a.asInterface(parcel.readStrongBinder()));
                    return true;
                case 11:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    startFeedBackVibration();
                    return true;
                case 12:
                    parcel.enforceInterface(ISdkAidlInterface.DESCRIPTOR);
                    stopFeedBackVibration();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: a */
        public static ISdkAidlInterface m52149a() {
            return a.f62973a;
        }
    }
}
