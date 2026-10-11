package com.tencent.qimei.p097r;

import android.text.TextUtils;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p092m.C16800a;
import com.tencent.qimei.p100t.C16837a;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.r.n */
/* loaded from: classes10.dex */
public class C16835n {

    /* renamed from: a */
    public static final Map<String, C16835n> f93648a = new ConcurrentHashMap();

    /* renamed from: b */
    public final String f93649b;

    /* renamed from: c */
    public String f93650c;

    /* renamed from: d */
    public final Object f93651d = new Object();

    /* renamed from: e */
    public final Object f93652e = new Object();

    /* renamed from: f */
    public String f93653f = "0";

    public C16835n(String str) {
        this.f93649b = str;
    }

    /* renamed from: a */
    public static synchronized C16835n m60070a(String str) {
        C16835n c16835n;
        synchronized (C16835n.class) {
            Map<String, C16835n> map = f93648a;
            c16835n = map.get(str);
            if (c16835n == null) {
                c16835n = new C16835n(str);
                map.put(str, c16835n);
            }
        }
        return c16835n;
    }

    /* renamed from: b */
    public final void m60074b(String str) {
        synchronized (this.f93652e) {
            C16799g.m59964b(this.f93649b).m59968a("tn", str);
            C16799g.m59964b(this.f93649b).m59967a("t_s_t", System.currentTimeMillis());
        }
    }

    /* renamed from: c */
    public final String m60075c() {
        String m60036a = C16824c.f93600a.m60036a(C16800a.m59972a(), this.f93649b, C16762a.m59890g(this.f93649b), "");
        AbstractC16769a.m59895a().mo59897a(new RunnableC16834m(this, m60036a));
        return m60036a;
    }

    /* renamed from: d */
    public boolean m60076d() {
        return C16837a.m60105a(this.f93649b).m60107a();
    }

    /* renamed from: e */
    public boolean m60077e() {
        return C16762a.m59876a(C16799g.m59964b(this.f93649b).m59970c("t_s_t"), 24L);
    }

    /* renamed from: f */
    public final String m60078f() {
        String m59971d;
        synchronized (this.f93652e) {
            m59971d = C16799g.m59964b(this.f93649b).m59971d("tn");
        }
        return m59971d;
    }

    /* renamed from: a */
    public final void m60072a() {
        synchronized (this.f93652e) {
            C16799g.m59964b(this.f93649b).m59966a("tn");
        }
    }

    /* renamed from: b */
    public String m60073b() {
        synchronized (this.f93651d) {
            if (!TextUtils.isEmpty(this.f93650c)) {
                return this.f93650c;
            }
            String m60078f = m60078f();
            String str = "2";
            if (m60078f.length() > 8192) {
                m60072a();
                m60078f = "";
            }
            if (m60078f.isEmpty()) {
                m60078f = m60075c();
                str = "3";
            } else if (m60076d()) {
                m60075c();
                m60078f = C16824c.f93600a.m60036a(C16800a.m59972a(), this.f93649b, C16762a.m59890g(this.f93649b), m60078f);
                str = "4";
            } else if (m60077e()) {
                m60078f = m60075c();
                str = "5";
            }
            if (TextUtils.isEmpty(m60078f)) {
                C16762a.m59884c(this.f93649b, str);
            }
            synchronized (this.f93651d) {
                if (TextUtils.isEmpty(this.f93650c)) {
                    this.f93650c = m60078f;
                }
            }
            return m60078f;
        }
    }
}
