package com.miui.penengine.p017g;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.miui.penengine.p017g.InterfaceC7013b;

/* renamed from: com.miui.penengine.g.a */
/* loaded from: classes7.dex */
public interface InterfaceC7012a extends IInterface {

    /* renamed from: com.miui.penengine.g.a$a */
    /* loaded from: classes7.dex */
    public static class a implements InterfaceC7012a {
        @Override // com.miui.penengine.p017g.InterfaceC7012a
        /* renamed from: a */
        public int mo31438a(int i, int i2) throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.miui.penengine.p017g.InterfaceC7012a
        /* renamed from: a */
        public void mo31439a() throws RemoteException {
        }

        @Override // com.miui.penengine.p017g.InterfaceC7012a
        /* renamed from: a */
        public void mo31440a(InterfaceC7013b interfaceC7013b) throws RemoteException {
        }

        @Override // com.miui.penengine.p017g.InterfaceC7012a
        /* renamed from: a */
        public void mo31441a(InterfaceC7013b interfaceC7013b, String str) throws RemoteException {
        }
    }

    /* renamed from: com.miui.penengine.g.a$b */
    /* loaded from: classes7.dex */
    public static abstract class b extends Binder implements InterfaceC7012a {

        /* renamed from: a */
        public static final String f39823a = "com.xiaomi.touchservice.pencilengine.IPencilEngine";

        /* renamed from: b */
        public static final int f39824b = 1;

        /* renamed from: c */
        public static final int f39825c = 2;

        /* renamed from: d */
        public static final int f39826d = 3;

        /* renamed from: e */
        public static final int f39827e = 4;

        public b() {
            attachInterface(this, f39823a);
        }

        /* renamed from: a */
        public static InterfaceC7012a m31442a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f39823a);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC7012a)) ? new a(iBinder) : (InterfaceC7012a) queryLocalInterface;
        }

        /* renamed from: b */
        public static InterfaceC7012a m31444b() {
            return a.f39828b;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(f39823a);
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface(f39823a);
                mo31440a(InterfaceC7013b.b.m31446a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(f39823a);
                mo31439a();
                parcel2.writeNoException();
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(f39823a);
                int mo31438a = mo31438a(parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(mo31438a);
                return true;
            }
            if (i != 4) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(f39823a);
            mo31441a(InterfaceC7013b.b.m31446a(parcel.readStrongBinder()), parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        /* renamed from: com.miui.penengine.g.a$b$a */
        /* loaded from: classes7.dex */
        public static class a implements InterfaceC7012a {

            /* renamed from: b */
            public static InterfaceC7012a f39828b;

            /* renamed from: a */
            public IBinder f39829a;

            public a(IBinder iBinder) {
                this.f39829a = iBinder;
            }

            @Override // com.miui.penengine.p017g.InterfaceC7012a
            /* renamed from: a */
            public void mo31440a(InterfaceC7013b interfaceC7013b) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f39823a);
                    obtain.writeStrongBinder(interfaceC7013b != null ? interfaceC7013b.asBinder() : null);
                    if (this.f39829a.transact(1, obtain, obtain2, 0) || b.m31444b() == null) {
                        obtain2.readException();
                    } else {
                        f39828b.mo31440a(interfaceC7013b);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f39829a;
            }

            /* renamed from: b */
            public String m31445b() {
                return b.f39823a;
            }

            @Override // com.miui.penengine.p017g.InterfaceC7012a
            /* renamed from: a */
            public void mo31441a(InterfaceC7013b interfaceC7013b, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f39823a);
                    obtain.writeStrongBinder(interfaceC7013b != null ? interfaceC7013b.asBinder() : null);
                    obtain.writeString(str);
                    if (this.f39829a.transact(4, obtain, obtain2, 0) || b.m31444b() == null) {
                        obtain2.readException();
                    } else {
                        f39828b.mo31441a(interfaceC7013b, str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.miui.penengine.p017g.InterfaceC7012a
            /* renamed from: a */
            public int mo31438a(int i, int i2) throws RemoteException {
                int readInt;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f39823a);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f39829a.transact(3, obtain, obtain2, 0) || b.m31444b() == null) {
                        obtain2.readException();
                        readInt = obtain2.readInt();
                    } else {
                        readInt = f39828b.mo31438a(i, i2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.miui.penengine.p017g.InterfaceC7012a
            /* renamed from: a */
            public void mo31439a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f39823a);
                    if (this.f39829a.transact(2, obtain, obtain2, 0) || b.m31444b() == null) {
                        obtain2.readException();
                    } else {
                        f39828b.mo31439a();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: a */
        public static boolean m31443a(InterfaceC7012a interfaceC7012a) {
            if (a.f39828b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (interfaceC7012a == null) {
                return false;
            }
            a.f39828b = interfaceC7012a;
            return true;
        }
    }

    /* renamed from: a */
    int mo31438a(int i, int i2) throws RemoteException;

    /* renamed from: a */
    void mo31439a() throws RemoteException;

    /* renamed from: a */
    void mo31440a(InterfaceC7013b interfaceC7013b) throws RemoteException;

    /* renamed from: a */
    void mo31441a(InterfaceC7013b interfaceC7013b, String str) throws RemoteException;
}
