package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public interface IResultReceiver extends IInterface {
    public static final String DESCRIPTOR = "android$support$v4$os$IResultReceiver".replace('$', '.');

    /* loaded from: classes3.dex */
    public static class Default implements IResultReceiver {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.os.IResultReceiver
        public void send(int i, Bundle bundle) throws RemoteException {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IResultReceiver {

        /* renamed from: a */
        public static final int f406a = 1;

        /* renamed from: android.support.v4.os.IResultReceiver$Stub$a */
        /* loaded from: classes3.dex */
        public static class C0074a implements IResultReceiver {

            /* renamed from: a */
            public IBinder f407a;

            public C0074a(IBinder iBinder) {
                this.f407a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f407a;
            }

            /* renamed from: e */
            public String m218e() {
                return IResultReceiver.DESCRIPTOR;
            }

            @Override // android.support.v4.os.IResultReceiver
            public void send(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IResultReceiver.DESCRIPTOR);
                    obtain.writeInt(i);
                    _Parcel.m222d(obtain, bundle, 0);
                    this.f407a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IResultReceiver.DESCRIPTOR);
        }

        public static IResultReceiver asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IResultReceiver.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IResultReceiver)) ? new C0074a(iBinder) : (IResultReceiver) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = IResultReceiver.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            send(parcel.readInt(), (Bundle) _Parcel.m221c(parcel, Bundle.CREATOR));
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static class _Parcel {
        /* renamed from: c */
        public static <T> T m221c(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* renamed from: d */
        public static <T extends Parcelable> void m222d(Parcel parcel, T t, int i) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            }
        }
    }

    void send(int i, Bundle bundle) throws RemoteException;
}
