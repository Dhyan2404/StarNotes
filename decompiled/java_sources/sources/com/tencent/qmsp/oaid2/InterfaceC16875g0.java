package com.tencent.qmsp.oaid2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.tencent.qmsp.oaid2.g0 */
/* loaded from: classes10.dex */
public interface InterfaceC16875g0 extends IInterface {

    /* renamed from: com.tencent.qmsp.oaid2.g0$a */
    /* loaded from: classes10.dex */
    public static abstract class a extends Binder implements InterfaceC16875g0 {

        /* renamed from: com.tencent.qmsp.oaid2.g0$a$a, reason: collision with other inner class name */
        /* loaded from: classes10.dex */
        public static class C20609a implements InterfaceC16875g0 {

            /* renamed from: a */
            public IBinder f93740a;

            public C20609a(IBinder iBinder) {
                this.f93740a = iBinder;
            }

            /* renamed from: a */
            public String m60176a(String str, String str2, String str3) {
                String str4;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.f93740a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    str4 = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                    return str4;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    try {
                        throw th;
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        str4 = "";
                    }
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f93740a;
            }
        }

        /* renamed from: a */
        public static InterfaceC16875g0 m60175a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC16875g0)) ? new C20609a(iBinder) : (InterfaceC16875g0) queryLocalInterface;
        }
    }
}
