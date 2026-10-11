package com.tencent.beacon.p073d;

import android.content.Context;
import android.util.Base64;
import com.tencent.beacon.base.net.p066b.C14934c;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;

/* renamed from: com.tencent.beacon.d.h */
/* loaded from: classes10.dex */
public class C14975h {

    /* renamed from: a */
    private static volatile C14975h f93001a;

    /* renamed from: c */
    private InterfaceC14971d f93003c;

    /* renamed from: i */
    private String f93009i;

    /* renamed from: b */
    private final String f93002b = "sid";

    /* renamed from: d */
    private String f93004d = "";

    /* renamed from: e */
    private boolean f93005e = true;

    /* renamed from: f */
    private int f93006f = 8081;

    /* renamed from: g */
    private String f93007g = "";

    /* renamed from: h */
    private String f93008h = "";

    private C14975h() {
        AbstractC14874b.m58931a().mo58941a(new RunnableC14973f(this));
    }

    /* renamed from: d */
    public static C14975h m59499d() {
        if (f93001a == null) {
            synchronized (C14975h.class) {
                if (f93001a == null) {
                    f93001a = new C14975h();
                }
            }
        }
        return f93001a;
    }

    /* renamed from: a */
    public void m59501a(InterfaceC14971d interfaceC14971d) {
        this.f93003c = interfaceC14971d;
    }

    /* renamed from: b */
    public synchronized void m59504b(String str) {
        this.f93004d = str;
    }

    /* renamed from: c */
    public synchronized void m59505c() {
        m59502a(SharedPreferencesC14896a.m59084a().getString("ias_cookie", ""));
        m59509g();
    }

    /* renamed from: e */
    public synchronized String m59507e() {
        return this.f93004d;
    }

    /* renamed from: f */
    public synchronized String m59508f() {
        return this.f93007g;
    }

    /* renamed from: g */
    public synchronized void m59509g() {
        Context m58997b = C14888c.m58989c().m58997b();
        if (m58997b == null) {
            return;
        }
        String m59375b = C14953b.m59375b();
        this.f93008h = m59375b;
        byte[] m59289a = C14934c.m59289a(m58997b, m59375b);
        if (m59289a != null) {
            this.f93007g = Base64.encodeToString(m59289a, 2);
        } else {
            C14954c.m59395b("rsaEncryKey is null.", new Object[0]);
            C14882j.m58961e().m58953a("506", "rsaEncryKey is null.");
        }
    }

    /* renamed from: a */
    public synchronized String m59500a() {
        return this.f93008h;
    }

    /* renamed from: b */
    public String m59503b() {
        return this.f93009i;
    }

    /* renamed from: a */
    public void m59502a(String str) {
        this.f93009i = str;
    }

    /* renamed from: c */
    public void m59506c(String str) {
        if (str == null || str.equals(this.f93009i)) {
            return;
        }
        this.f93009i = str;
        AbstractC14874b.m58931a().mo58941a(new RunnableC14974g(this, str));
    }
}
