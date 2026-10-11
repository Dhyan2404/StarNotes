package com.tencent.qmsp.oaid2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.qmsp.oaid2.InterfaceC16886m;

/* renamed from: com.tencent.qmsp.oaid2.j */
/* loaded from: classes10.dex */
public class C16880j {

    /* renamed from: com.tencent.qmsp.oaid2.j$a */
    /* loaded from: classes10.dex */
    public static final class a {

        /* renamed from: a */
        public final String f93761a;

        /* renamed from: b */
        public final boolean f93762b;

        public a(String str, boolean z) {
            this.f93761a = str;
            this.f93762b = z;
        }

        /* renamed from: a */
        public final String m60189a() {
            return this.f93761a;
        }

        /* renamed from: b */
        public final boolean m60190b() {
            return this.f93762b;
        }
    }

    /* renamed from: a */
    public static String m60188a() {
        return "AdId";
    }

    /* renamed from: a */
    public static a m60187a(Context context) {
        Log.i(m60188a(), "getAdvertisingIdInfo " + System.currentTimeMillis());
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
                ServiceConnectionC16882k serviceConnectionC16882k = new ServiceConnectionC16882k();
                Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
                intent.setPackage("com.huawei.hwid");
                if (context.bindService(intent, serviceConnectionC16882k, 1)) {
                    Log.i(m60188a(), "bind ok");
                    try {
                        try {
                            if (!serviceConnectionC16882k.f93771a) {
                                serviceConnectionC16882k.f93771a = true;
                                InterfaceC16886m m60209a = InterfaceC16886m.a.m60209a(serviceConnectionC16882k.f93772b.take());
                                return new a(m60209a.mo60208m(), m60209a.mo60207h());
                            }
                            throw new IllegalStateException();
                        } finally {
                            context.unbindService(serviceConnectionC16882k);
                        }
                    } catch (RemoteException unused) {
                        C16866c.m60153b("bind hms service RemoteException");
                        return null;
                    } catch (Throwable unused2) {
                        C16866c.m60153b("bind hms service InterruptedException");
                        return null;
                    }
                }
                C16866c.m60153b("bind failed");
                return null;
            } catch (PackageManager.NameNotFoundException unused3) {
                C16866c.m60153b("HMS not found");
                return null;
            }
        }
        C16866c.m60153b("Cannot be called from the main thread");
        throw new IllegalStateException("Cannot be called from the main thread");
    }
}
