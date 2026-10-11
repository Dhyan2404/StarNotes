package com.tencent.qmsp.oaid2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: com.tencent.qmsp.oaid2.f */
/* loaded from: classes10.dex */
public interface InterfaceC16872f extends IInterface {

    /* renamed from: com.tencent.qmsp.oaid2.f$a */
    /* loaded from: classes10.dex */
    public static abstract class a extends Binder implements InterfaceC16872f {

        /* renamed from: com.tencent.qmsp.oaid2.f$a$a, reason: collision with other inner class name */
        /* loaded from: classes10.dex */
        public static class C20608a implements InterfaceC16872f {

            /* renamed from: a */
            public IBinder f93736a;

            public C20608a(IBinder iBinder) {
                this.f93736a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f93736a;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16872f
            /* renamed from: b */
            public boolean mo60167b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                boolean z = true;
                try {
                    obtain.writeInterfaceToken("com.asus.msa.SupplementaryDID.IDidAidlInterface");
                    this.f93736a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16872f
            /* renamed from: c */
            public String mo60168c() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.msa.SupplementaryDID.IDidAidlInterface");
                    this.f93736a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                    return readString;
                } catch (Throwable unused) {
                    obtain2.recycle();
                    obtain.recycle();
                    return "";
                }
            }

            @Override // com.tencent.qmsp.oaid2.InterfaceC16872f
            /* renamed from: i */
            public String mo60169i() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.msa.SupplementaryDID.IDidAidlInterface");
                    this.f93736a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                    return readString;
                } catch (Throwable unused) {
                    obtain2.recycle();
                    obtain.recycle();
                    return "";
                }
            }
        }

        /* renamed from: a */
        public static InterfaceC16872f m60170a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.asus.msa.SupplementaryDID.IDidAidlInterface");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC16872f)) ? new C20608a(iBinder) : (InterfaceC16872f) queryLocalInterface;
        }
    }

    /* renamed from: b */
    boolean mo60167b();

    /* renamed from: c */
    String mo60168c();

    /* renamed from: i */
    String mo60169i();
}
