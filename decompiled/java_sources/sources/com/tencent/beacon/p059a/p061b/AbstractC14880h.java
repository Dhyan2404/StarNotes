package com.tencent.beacon.p059a.p061b;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.p073d.C14969b;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: com.tencent.beacon.a.b.h */
/* loaded from: classes10.dex */
public abstract class AbstractC14880h {

    /* renamed from: a */
    private static final Map<String, String> f92564a = new LinkedHashMap();

    /* renamed from: b */
    private boolean f92565b = false;

    /* renamed from: c */
    private boolean f92566c = false;

    /* renamed from: d */
    private final Object f92567d = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public synchronized void m58950b(String str, String str2, Throwable th) {
        m58955a(str, str2, th, true, new C14877e(this));
    }

    /* renamed from: e */
    private synchronized void m58951e() {
        if (this.f92565b) {
            return;
        }
        Map<String, String> map = f92564a;
        map.put("attaid", mo58957b());
        map.put("token", mo58958c());
        map.put("error_code", "");
        map.put("platform", "Android");
        map.put("uin", C14890e.m59012l().m59023d());
        map.put("model", Build.BOARD + " " + C14891f.m59045e().m59059h());
        map.put("os", C14890e.m59012l().m59038t());
        map.put("error_msg", "");
        map.put("error_stack_full", "");
        map.put("app_version", C14887b.m58972a());
        map.put("sdk_version", C14888c.m58989c().m59006i());
        map.put("product_id", C14888c.m58989c().m59002e());
        map.put("_dc", "");
        map.put(PrivilegedApp.f6526c, C14887b.m58977b());
        this.f92565b = true;
    }

    /* renamed from: b */
    public abstract String mo58957b();

    /* renamed from: c */
    public abstract String mo58958c();

    /* renamed from: d */
    public boolean m58959d() {
        if (this.f92566c) {
            return true;
        }
        if (!C14969b.m59444b().m59483q()) {
            C14954c.m59395b("atta report closed by user.", new Object[0]);
            return false;
        }
        C14954c.m59395b("atta report.", new Object[0]);
        if (C14954c.m59397b()) {
            return false;
        }
        return C14953b.m59366a(100);
    }

    /* renamed from: a */
    public void m58956a(boolean z) {
        this.f92566c = z;
    }

    /* renamed from: a */
    public synchronized void m58953a(String str, String str2) {
        m58954a(str, str2, null);
    }

    /* renamed from: a */
    public synchronized void m58954a(String str, String str2, Throwable th) {
        m58955a(str, str2, th, false, new C14875c(this, str, str2, th));
    }

    /* renamed from: a */
    public synchronized void m58955a(String str, String str2, Throwable th, boolean z, Callback<BResponse> callback) {
        if (m58959d()) {
            if (!this.f92565b) {
                m58951e();
            }
            if (TextUtils.isEmpty(str)) {
                C14954c.m59395b("[atta] errorCode isn't valid value!", new Object[0]);
            } else {
                AbstractC14874b.m58931a().mo58941a(new RunnableC14876d(this, str, str2, th, z, callback));
            }
        }
    }

    /* renamed from: a */
    public synchronized void m58952a(Context context, String str, String str2, String str3) {
        if (C14953b.m59377b(100)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            C14954c.m59395b("[atta] errorCode isn't valid value!", new Object[0]);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            C14954c.m59395b("init beacon twice, but appkey is null!", new Object[0]);
        } else if (context == null) {
            C14954c.m59395b("init beacon twice, but context is null!", new Object[0]);
        } else {
            AbstractC14874b.m58931a().mo58941a(new RunnableC14879g(this, str, str2, str3, context));
        }
    }
}
