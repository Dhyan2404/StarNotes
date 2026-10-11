package com.tencent.qmsp.oaid2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: com.tencent.qmsp.oaid2.m */
/* loaded from: classes10.dex */
public interface InterfaceC16886m extends IInterface {

    /* renamed from: com.tencent.qmsp.oaid2.m$a */
    /* loaded from: classes10.dex */
    public static abstract class a extends Binder implements InterfaceC16886m {

        /* renamed from: com.tencent.qmsp.oaid2.m$a$a, reason: collision with other inner class name */
        /* loaded from: classes10.dex */
        public static class C20611a implements InterfaceC16886m {

            /* renamed from: a */
            public IBinder f93783a;

            public C20611a(IBinder iBinder) {
                this.f93783a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f93783a;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16886m
            /* renamed from: h */
            public boolean mo60207h() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.f93783a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16886m
            /* renamed from: m */
            public String mo60208m() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.f93783a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: a */
        public static InterfaceC16886m m60209a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC16886m)) ? new C20611a(iBinder) : (InterfaceC16886m) queryLocalInterface;
        }
    }

    /* renamed from: h */
    boolean mo60207h();

    /* renamed from: m */
    String mo60208m();
}
