package com.tencent.qmsp.oaid2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.tencent.qmsp.oaid2.n */
/* loaded from: classes10.dex */
public interface InterfaceC16888n extends IInterface {
    /* renamed from: b */
    String mo60211b();

    /* renamed from: b */
    String mo60212b(String str);

    /* renamed from: c */
    boolean mo60213c();

    /* renamed from: com.tencent.qmsp.oaid2.n$a */
    /* loaded from: classes10.dex */
    public static abstract class a extends Binder implements InterfaceC16888n {
        /* renamed from: a */
        public static InterfaceC16888n m60214a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.zui.deviceidservice.IDeviceidInterface");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC16888n)) ? new C20612a(iBinder) : (InterfaceC16888n) queryLocalInterface;
        }

        /* renamed from: com.tencent.qmsp.oaid2.n$a$a, reason: collision with other inner class name */
        /* loaded from: classes10.dex */
        public static class C20612a implements InterfaceC16888n {

            /* renamed from: a */
            public IBinder f93785a;

            public C20612a(IBinder iBinder) {
                this.f93785a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f93785a;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16888n
            /* renamed from: b */
            public String mo60211b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    this.f93785a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                    return readString;
                } catch (RemoteException unused) {
                    obtain2.recycle();
                    obtain.recycle();
                    return null;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16888n
            /* renamed from: c */
            public boolean mo60213c() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                boolean z = false;
                try {
                    obtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    this.f93785a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                } catch (RemoteException unused) {
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16888n
            /* renamed from: b */
            public String mo60212b(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    obtain.writeString(str);
                    this.f93785a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                    return readString;
                } catch (RemoteException unused) {
                    obtain2.recycle();
                    obtain.recycle();
                    return null;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }
        }
    }
}
