package com.tencent.qmsp.oaid2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.tencent.qmsp.oaid2.InterfaceC16875g0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.tencent.qmsp.oaid2.h0 */
/* loaded from: classes10.dex */
public class C16877h0 {

    /* renamed from: f */
    public static final C16877h0 f93747f = new C16877h0();

    /* renamed from: a */
    public InterfaceC16875g0 f93748a;

    /* renamed from: b */
    public String f93749b;

    /* renamed from: c */
    public String f93750c;

    /* renamed from: d */
    public final Object f93751d = new Object();

    /* renamed from: e */
    public ServiceConnection f93752e = new a();

    /* renamed from: com.tencent.qmsp.oaid2.h0$a */
    /* loaded from: classes10.dex */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C16877h0.this.f93748a = InterfaceC16875g0.a.m60175a(iBinder);
            synchronized (C16877h0.this.f93751d) {
                C16877h0.this.f93751d.notify();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C16877h0.this.f93748a = null;
        }
    }

    /* renamed from: a */
    public boolean m60178a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 0);
            if (packageInfo != null) {
                return packageInfo.getLongVersionCode() >= 1;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    public final String m60179b(Context context, String str) {
        Signature[] signatureArr;
        if (TextUtils.isEmpty(this.f93749b)) {
            this.f93749b = context.getPackageName();
        }
        if (TextUtils.isEmpty(this.f93750c)) {
            String str2 = null;
            try {
                signatureArr = context.getPackageManager().getPackageInfo(this.f93749b, 64).signatures;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                signatureArr = null;
            }
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest != null) {
                        byte[] digest = messageDigest.digest(byteArray);
                        StringBuilder sb = new StringBuilder();
                        for (byte b : digest) {
                            sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
                        }
                        str2 = sb.toString();
                    }
                } catch (NoSuchAlgorithmException e2) {
                    e2.printStackTrace();
                }
            }
            this.f93750c = str2;
        }
        String m60176a = ((InterfaceC16875g0.a.C20609a) this.f93748a).m60176a(this.f93749b, this.f93750c, str);
        return TextUtils.isEmpty(m60176a) ? "" : m60176a;
    }

    /* renamed from: a */
    public String m60177a(Context context, String str) {
        String m60179b;
        synchronized (this) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                if (this.f93748a == null) {
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
                    intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
                    if (context.bindService(intent, this.f93752e, 1)) {
                        synchronized (this.f93751d) {
                            try {
                                this.f93751d.wait(3000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    if (this.f93748a != null) {
                        try {
                            m60179b = m60179b(context, str);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    m60179b = "";
                } else {
                    try {
                        m60179b = m60179b(context, str);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            } else {
                throw new IllegalStateException("Cannot run on MainThread");
            }
        }
        return m60179b;
    }
}
