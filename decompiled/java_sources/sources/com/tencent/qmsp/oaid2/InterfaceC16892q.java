package com.tencent.qmsp.oaid2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.tencent.qmsp.oaid2.q */
/* loaded from: classes10.dex */
public interface InterfaceC16892q extends IInterface {

    /* renamed from: com.tencent.qmsp.oaid2.q$a */
    /* loaded from: classes10.dex */
    public static abstract class a extends Binder implements InterfaceC16892q {

        /* renamed from: com.tencent.qmsp.oaid2.q$a$a, reason: collision with other inner class name */
        /* loaded from: classes10.dex */
        public static class C20613a implements InterfaceC16892q {

            /* renamed from: a */
            public IBinder f93799a;

            public C20613a(IBinder iBinder) {
                this.f93799a = iBinder;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16892q
            /* renamed from: a */
            public String mo60224a() {
                String str;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    try {
                        obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                        this.f93799a.transact(3, obtain, obtain2, 0);
                        obtain2.readException();
                        str = obtain2.readString();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        obtain2.recycle();
                        obtain.recycle();
                        str = "";
                    }
                    return str;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f93799a;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16892q
            /* renamed from: c */
            public boolean mo60225c() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                boolean z = false;
                try {
                    try {
                        obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                        this.f93799a.transact(2, obtain, obtain2, 0);
                        obtain2.readException();
                        if (obtain2.readInt() != 0) {
                            z = true;
                        }
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16892q
            /* renamed from: d */
            public String mo60226d() {
                String str;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    try {
                        obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                        this.f93799a.transact(5, obtain, obtain2, 0);
                        obtain2.readException();
                        str = obtain2.readString();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        obtain2.recycle();
                        obtain.recycle();
                        str = "";
                    }
                    return str;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16892q
            /* renamed from: f */
            public void mo60227f() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    this.f93799a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } catch (RemoteException e) {
                    e.printStackTrace();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16892q
            /* renamed from: g */
            public boolean mo60228g() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                boolean z = false;
                try {
                    try {
                        obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                        this.f93799a.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        if (obtain2.readInt() != 0) {
                            z = true;
                        }
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: a */
        public static InterfaceC16892q m60229a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC16892q)) ? new C20613a(iBinder) : (InterfaceC16892q) queryLocalInterface;
        }
    }

    /* renamed from: a */
    String mo60224a();

    /* renamed from: c */
    boolean mo60225c();

    /* renamed from: d */
    String mo60226d();

    /* renamed from: f */
    void mo60227f();

    /* renamed from: g */
    boolean mo60228g();
}
