package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface IMultiInstanceInvalidationCallback extends IInterface {
    public static final String DESCRIPTOR = "androidx.room.IMultiInstanceInvalidationCallback";

    /* loaded from: classes3.dex */
    public static class Default implements IMultiInstanceInvalidationCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.room.IMultiInstanceInvalidationCallback
        public void onInvalidation(String[] strArr) throws RemoteException {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IMultiInstanceInvalidationCallback {

        /* renamed from: a */
        public static final int f10051a = 1;

        /* renamed from: androidx.room.IMultiInstanceInvalidationCallback$Stub$a */
        /* loaded from: classes3.dex */
        public static class C1422a implements IMultiInstanceInvalidationCallback {

            /* renamed from: a */
            public IBinder f10052a;

            public C1422a(IBinder iBinder) {
                this.f10052a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10052a;
            }

            /* renamed from: e */
            public String m6292e() {
                return IMultiInstanceInvalidationCallback.DESCRIPTOR;
            }

            @Override // androidx.room.IMultiInstanceInvalidationCallback
            public void onInvalidation(String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IMultiInstanceInvalidationCallback.DESCRIPTOR);
                    obtain.writeStringArray(strArr);
                    this.f10052a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IMultiInstanceInvalidationCallback.DESCRIPTOR);
        }

        public static IMultiInstanceInvalidationCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IMultiInstanceInvalidationCallback.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IMultiInstanceInvalidationCallback)) ? new C1422a(iBinder) : (IMultiInstanceInvalidationCallback) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IMultiInstanceInvalidationCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IMultiInstanceInvalidationCallback.DESCRIPTOR);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            onInvalidation(parcel.createStringArray());
            return true;
        }
    }

    void onInvalidation(String[] strArr) throws RemoteException;
}
