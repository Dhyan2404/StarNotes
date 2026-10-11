package com.tencent.qmsp.oaid2;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.qmsp.oaid2.C16880j;
import java.security.MessageDigest;

/* renamed from: com.tencent.qmsp.oaid2.l */
/* loaded from: classes10.dex */
public class C16884l implements InterfaceC16864b {

    /* renamed from: a */
    public Context f93777a;

    /* renamed from: b */
    public IVendorCallback f93778b;

    /* renamed from: c */
    public String f93779c = null;

    /* renamed from: d */
    public boolean f93780d = false;

    /* renamed from: com.tencent.qmsp.oaid2.l$a */
    /* loaded from: classes10.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C16880j.a m60187a = C16880j.m60187a(C16884l.this.f93777a);
                C16884l.this.f93779c = m60187a.m60189a();
                m60187a.m60190b();
                if (!TextUtils.isEmpty(C16884l.this.f93779c)) {
                    C16884l.this.f93780d = true;
                }
                if (C16884l.this.f93778b != null) {
                    IVendorCallback iVendorCallback = C16884l.this.f93778b;
                    boolean z = C16884l.this.f93780d;
                    C16884l c16884l = C16884l.this;
                    iVendorCallback.onResult(z, c16884l.m60204a(C16870e.m60161a(c16884l.f93777a)), C16884l.this.f93779c);
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (TextUtils.isEmpty(C16884l.this.f93779c)) {
                    C16884l.this.f93780d = false;
                }
                if (C16884l.this.f93778b != null) {
                    IVendorCallback iVendorCallback2 = C16884l.this.f93778b;
                    boolean z2 = C16884l.this.f93780d;
                    C16884l c16884l2 = C16884l.this;
                    iVendorCallback2.onResult(z2, c16884l2.m60204a(C16870e.m60161a(c16884l2.f93777a)), C16884l.this.f93779c);
                }
            }
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: e */
    public boolean mo60148e() {
        return false;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: j */
    public void mo60149j() {
        new Thread(new a()).start();
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: k */
    public boolean mo60150k() {
        return false;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: l */
    public void mo60151l() {
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: d */
    public String mo60147d() {
        return m60204a(C16870e.m60161a(this.f93777a));
    }

    /* renamed from: b */
    public final String m60205b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String str2 = "";
            for (byte b : MessageDigest.getInstance("MD5").digest(str.getBytes())) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    hexString = "0" + hexString;
                }
                str2 = str2 + hexString;
            }
            return str2;
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: a */
    public final String m60204a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            return m60205b("0x1008611" + str + "0xdzfdweiwu");
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public void mo60146a(Context context, IVendorCallback iVendorCallback) {
        this.f93777a = context;
        this.f93778b = iVendorCallback;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public String mo60145a() {
        return this.f93779c;
    }
}
