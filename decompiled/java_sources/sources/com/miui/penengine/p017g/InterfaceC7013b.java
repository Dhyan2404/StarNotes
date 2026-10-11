package com.miui.penengine.p017g;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.miui.penengine.g.b */
/* loaded from: classes7.dex */
public interface InterfaceC7013b extends IInterface {

    /* renamed from: com.miui.penengine.g.b$a */
    /* loaded from: classes7.dex */
    public static class a implements InterfaceC7013b {
        @Override // com.miui.penengine.p017g.InterfaceC7013b
        /* renamed from: a */
        public void mo31260a(int i, int i2, int i3) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    /* renamed from: com.miui.penengine.g.b$b */
    /* loaded from: classes7.dex */
    public static abstract class b extends Binder implements InterfaceC7013b {

        /* renamed from: a */
        public static final String f39830a = "com.xiaomi.touchservice.pencilengine.IPencilEngineCallback";

        /* renamed from: b */
        public static final int f39831b = 1;

        /* renamed from: com.miui.penengine.g.b$b$a */
        /* loaded from: classes7.dex */
        public static class a implements InterfaceC7013b {

            /* renamed from: b */
            public static InterfaceC7013b f39832b;

            /* renamed from: a */
            public IBinder f39833a;

            public a(IBinder iBinder) {
                this.f39833a = iBinder;
            }

            @Override // com.miui.penengine.p017g.InterfaceC7013b
            /* renamed from: a */
            public void mo31260a(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f39830a);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (this.f39833a.transact(1, obtain, obtain2, 0) || b.m31447b() == null) {
                        obtain2.readException();
                    } else {
                        f39832b.mo31260a(i, i2, i3);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f39833a;
            }

            /* renamed from: b */
            public String m31449b() {
                return b.f39830a;
            }
        }

        public b() {
            attachInterface(this, f39830a);
        }

        /* renamed from: a */
        public static InterfaceC7013b m31446a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f39830a);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC7013b)) ? new a(iBinder) : (InterfaceC7013b) queryLocalInterface;
        }

        /* renamed from: b */
        public static InterfaceC7013b m31447b() {
            return a.f39832b;
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
                parcel2.writeString(f39830a);
                return true;
            }
            parcel.enforceInterface(f39830a);
            mo31260a(parcel.readInt(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        /* renamed from: b */
        public static boolean m31448b(InterfaceC7013b interfaceC7013b) {
            if (a.f39832b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (interfaceC7013b == null) {
                return false;
            }
            a.f39832b = interfaceC7013b;
            return true;
        }
    }

    /* renamed from: a */
    void mo31260a(int i, int i2, int i3) throws RemoteException;
}
