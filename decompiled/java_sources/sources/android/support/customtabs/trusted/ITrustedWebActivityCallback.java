package android.support.customtabs.trusted;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface ITrustedWebActivityCallback extends IInterface {

    /* loaded from: classes3.dex */
    public static class Default implements ITrustedWebActivityCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityCallback
        public void onExtraCallback(String str, Bundle bundle) throws RemoteException {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements ITrustedWebActivityCallback {

        /* renamed from: a */
        public static final String f50a = "android.support.customtabs.trusted.ITrustedWebActivityCallback";

        /* renamed from: b */
        public static final int f51b = 2;

        /* renamed from: android.support.customtabs.trusted.ITrustedWebActivityCallback$Stub$a */
        /* loaded from: classes3.dex */
        public static class C0015a implements ITrustedWebActivityCallback {

            /* renamed from: b */
            public static ITrustedWebActivityCallback f52b;

            /* renamed from: a */
            public IBinder f53a;

            public C0015a(IBinder iBinder) {
                this.f53a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f53a;
            }

            /* renamed from: e */
            public String m15e() {
                return Stub.f50a;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityCallback
            public void onExtraCallback(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.f50a);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f53a.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onExtraCallback(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, f50a);
        }

        public static ITrustedWebActivityCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f50a);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ITrustedWebActivityCallback)) ? new C0015a(iBinder) : (ITrustedWebActivityCallback) queryLocalInterface;
        }

        public static ITrustedWebActivityCallback getDefaultImpl() {
            return C0015a.f52b;
        }

        public static boolean setDefaultImpl(ITrustedWebActivityCallback iTrustedWebActivityCallback) {
            if (C0015a.f52b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTrustedWebActivityCallback == null) {
                return false;
            }
            C0015a.f52b = iTrustedWebActivityCallback;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(f50a);
                return true;
            }
            parcel.enforceInterface(f50a);
            onExtraCallback(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void onExtraCallback(String str, Bundle bundle) throws RemoteException;
}
