package com.tencent.qimei.p097r;

import android.text.TextUtils;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p085f.C16779c;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p092m.C16800a;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p094o.C16810d;
import com.tencent.qimei.p100t.C16837a;
import com.tencent.qimei.sdk.Qimei;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.r.b */
/* loaded from: classes10.dex */
public class C16823b {

    /* renamed from: a */
    public static final Map<String, C16823b> f93592a = new ConcurrentHashMap();

    /* renamed from: b */
    public final String f93593b;

    /* renamed from: c */
    public Qimei f93594c;

    /* renamed from: h */
    public boolean f93599h = false;

    /* renamed from: d */
    public String f93595d = "";

    /* renamed from: e */
    public long f93596e = 0;

    /* renamed from: f */
    public int f93597f = 0;

    /* renamed from: g */
    public boolean f93598g = false;

    public C16823b(String str) {
        this.f93593b = str;
        this.f93594c = new Qimei("", "", str);
    }

    /* renamed from: a */
    public void m60030a(Qimei qimei) {
        if (qimei == null || qimei.isEmpty()) {
            return;
        }
        this.f93594c = qimei;
    }

    /* renamed from: b */
    public final String m60031b() {
        String m60005b = C16810d.m59998a(this.f93593b).m60005b();
        return m60005b == null ? "" : C16800a.m59977b(m60005b);
    }

    /* renamed from: a */
    public static synchronized C16823b m60028a(String str) {
        C16823b c16823b;
        synchronized (C16823b.class) {
            Map<String, C16823b> map = f93592a;
            c16823b = map.get(str);
            if (c16823b == null) {
                c16823b = new C16823b(str);
                if (!c16823b.f93599h) {
                    c16823b.m60029a();
                    c16823b.f93599h = true;
                }
                map.put(str, c16823b);
            }
        }
        return c16823b;
    }

    /* renamed from: a */
    public final synchronized void m60029a() {
        m60030a(C16762a.m59890g(this.f93593b));
        C16837a m60105a = C16837a.m60105a(this.f93593b);
        if (m60105a.m60107a()) {
            Qimei qimei = this.f93594c;
            m60105a.f93664g = new Qimei(qimei.getQimei16(), qimei.getQimei36(), m60105a.f93660c);
            this.f93594c = new Qimei(this.f93593b);
            C16762a.m59881b(this.f93593b);
            C16799g m59964b = C16799g.m59964b(this.f93593b);
            if (m59964b.m59965a() != null && C16779c.m59933a(m59964b.f93537c).m59934b()) {
                m59964b.f93536b.edit().clear().apply();
            }
            return;
        }
        String m60079a = this.f93594c.m60079a();
        String m60081b = this.f93594c.m60081b();
        if (TextUtils.isEmpty(m60079a) && TextUtils.isEmpty(m60081b)) {
            C16806a.m59995b("QM", "Local qm cache not found, try load from old version cache(appKey: %s)", this.f93593b);
            Qimei m60027a = C16822a.m60027a(this.f93593b);
            if (m60027a == null) {
                C16806a.m59995b("QM", "Local qm cache failed(appKey: %s)", this.f93593b);
                return;
            } else {
                this.f93594c = m60027a;
                this.f93598g = true;
            }
        }
        C16806a.m59995b("QM", "(appKey: %s) Qm load successfully from cache, detail: %s", this.f93593b, this.f93594c.toString());
    }
}
