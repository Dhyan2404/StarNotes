package com.tencent.qimei.p079aa;

import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p085f.C16779c;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p097r.C16833l;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.aa.c */
/* loaded from: classes10.dex */
public class C16736c {

    /* renamed from: a */
    public static final Map<String, C16736c> f93333a = new ConcurrentHashMap();

    /* renamed from: b */
    public static final Object f93334b = new Object();

    /* renamed from: c */
    public final String f93335c;

    /* renamed from: d */
    public RunnableC16739f f93336d;

    /* renamed from: e */
    public boolean f93337e = false;

    public C16736c(String str) {
        this.f93335c = str;
        this.f93336d = new RunnableC16739f(this, str);
    }

    /* renamed from: a */
    public static synchronized C16736c m59801a(String str) {
        C16736c c16736c;
        synchronized (C16736c.class) {
            Map<String, C16736c> map = f93333a;
            c16736c = map.get(str);
            if (c16736c == null) {
                c16736c = new C16736c(str);
                map.put(str, c16736c);
            }
        }
        return c16736c;
    }

    /* renamed from: b */
    public final synchronized void m59806b() {
        if (C16779c.m59933a(this.f93335c).m59934b()) {
            if (!C16762a.m59876a(C16799g.m59964b(this.f93335c).m59970c("s_s_t"), 24L)) {
                InterfaceC16740g interfaceC16740g = this.f93336d.f93344d;
                if (interfaceC16740g != null) {
                    ((C16833l) interfaceC16740g).m60068n();
                }
            } else {
                C16806a.m59995b("SDK_INIT ｜ STRATEGY", "more than 24 hours since the last Strategy request", new Object[0]);
                if (!this.f93336d.f93342b.get()) {
                    AbstractC16769a.m59895a().mo59897a(this.f93336d);
                }
            }
        }
    }

    /* renamed from: a */
    public void m59804a(boolean z) {
        synchronized (f93334b) {
            this.f93337e = z;
        }
    }

    /* renamed from: a */
    public boolean m59805a() {
        boolean z;
        synchronized (f93334b) {
            z = this.f93337e;
        }
        return z;
    }
}
