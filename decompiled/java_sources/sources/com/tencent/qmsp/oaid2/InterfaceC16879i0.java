package com.tencent.qmsp.oaid2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.tencent.qmsp.oaid2.i0 */
/* loaded from: classes10.dex */
public interface InterfaceC16879i0 extends IInterface {
    /* renamed from: a */
    String mo60184a();

    /* renamed from: a */
    String mo60185a(String str);

    /* renamed from: com.tencent.qmsp.oaid2.i0$a */
    /* loaded from: classes10.dex */
    public static abstract class a extends Binder implements InterfaceC16879i0 {
        /* renamed from: a */
        public static InterfaceC16879i0 m60186a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.deviceidservice.IDeviceIdService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC16879i0)) ? new C20610a(iBinder) : (InterfaceC16879i0) queryLocalInterface;
        }

        /* renamed from: com.tencent.qmsp.oaid2.i0$a$a, reason: collision with other inner class name */
        /* loaded from: classes10.dex */
        public static class C20610a implements InterfaceC16879i0 {

            /* renamed from: a */
            public IBinder f93760a;

            public C20610a(IBinder iBinder) {
                this.f93760a = iBinder;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16879i0
            /* renamed from: a */
            public String mo60185a(String str) {
                String str2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    try {
                        obtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                        obtain.writeString(str);
                        this.f93760a.transact(3, obtain, obtain2, 0);
                        obtain2.readException();
                        str2 = obtain2.readString();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        obtain2.recycle();
                        obtain.recycle();
                        str2 = null;
                    }
                    return str2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f93760a;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16879i0
            /* renamed from: a */
            public String mo60184a() {
                String str;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    try {
                        obtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                        this.f93760a.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        str = obtain2.readString();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        obtain2.recycle();
                        obtain.recycle();
                        str = null;
                    }
                    return str;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
