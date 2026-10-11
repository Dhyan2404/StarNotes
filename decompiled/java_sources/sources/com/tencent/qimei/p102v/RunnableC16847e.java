package com.tencent.qimei.p102v;

import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p091l.C16795c;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p094o.C16810d;
import com.tencent.qimei.p096q.C16814b;
import com.tencent.qimei.p096q.InterfaceC16813a;
import com.tencent.qimei.p105y.C16858d;
import com.tencent.qimei.sdk.p099S.SpreadValue;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.v.e */
/* loaded from: classes10.dex */
public class RunnableC16847e implements Runnable, InterfaceC16813a {

    /* renamed from: a */
    public static final Map<String, RunnableC16847e> f93679a = new ConcurrentHashMap();

    /* renamed from: b */
    public final String f93680b;

    /* renamed from: c */
    public final String f93681c;

    /* renamed from: d */
    public final String f93682d;

    /* renamed from: e */
    public final AtomicBoolean f93683e = new AtomicBoolean(false);

    /* renamed from: com.tencent.qimei.v.e$a */
    /* loaded from: classes10.dex */
    public class a implements Runnable {
        public /* synthetic */ a(RunnableC16846d runnableC16846d) {
        }

        @Override // java.lang.Runnable
        public void run() {
            C16849g.m60134a().m60136a(RunnableC16847e.this.f93680b, RunnableC16847e.this.f93681c);
            AbstractC16769a.m59895a().mo59896a(10000L, RunnableC16847e.this);
        }
    }

    public RunnableC16847e(String str) {
        this.f93680b = str;
        String m59902d = C16773a.m59902d();
        this.f93681c = m59902d;
        this.f93682d = str + m59902d;
    }

    /* renamed from: a */
    public static synchronized RunnableC16847e m60128a(String str) {
        RunnableC16847e runnableC16847e;
        synchronized (RunnableC16847e.class) {
            Map<String, RunnableC16847e> map = f93679a;
            runnableC16847e = map.get(str);
            if (runnableC16847e == null) {
                runnableC16847e = new RunnableC16847e(str);
                map.put(str, runnableC16847e);
            }
        }
        return runnableC16847e;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean booleanValue;
        C16795c c16795c = C16795c.a.f93522a;
        if (C16762a.m59876a(c16795c.m59953a() != null ? c16795c.f93520a.getLong("l_u_time", 0L) : 0L, C16734a.m59797a(this.f93680b).m59798a().m59839u())) {
            boolean m59837s = C16734a.m59797a(this.f93680b).m59798a().m59837s();
            booleanValue = (c16795c.m59953a() == null ? Boolean.TRUE : Boolean.valueOf(c16795c.f93520a.getBoolean("sp_need_report", true))).booleanValue();
            if (!m59837s) {
                booleanValue = true;
            }
        } else {
            booleanValue = false;
        }
        if (booleanValue) {
            HashMap<String, SpreadValue> m60083a = new C16845c().m60123a().m60083a();
            if (m60083a.size() <= 1) {
                return;
            }
            String str = this.f93680b;
            String str2 = this.f93682d;
            SpreadValue remove = m60083a.containsKey(str2) ? m60083a.remove(str2) : null;
            if (remove == null || this.f93683e.get()) {
                return;
            }
            this.f93683e.set(true);
            JSONArray jSONArray = new JSONArray();
            for (SpreadValue spreadValue : m60083a.values()) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("appKey", spreadValue.m60090b());
                    jSONObject.put("source", spreadValue.m60103i());
                    jSONObject.put("oaid", spreadValue.m60098f());
                    jSONObject.put("aid", spreadValue.m60087a());
                    jSONObject.put("q16", spreadValue.m60100g());
                    jSONObject.put("q36", spreadValue.m60102h());
                    jSONObject.put("firstTime", spreadValue.m60091c());
                    jSONObject.put("updateTime", spreadValue.m60104j());
                    jSONObject.put("fromKey", spreadValue.m60094d());
                    jSONObject.put("fromSource", spreadValue.m60096e());
                } catch (JSONException e) {
                    C16806a.m59992a(e);
                }
                jSONArray.put(jSONObject);
            }
            C16795c.a.f93522a.m59955a("sp_need_report", false);
            C16814b.m60016a(remove.m60090b(), remove.m60103i(), remove.m60091c(), remove.m60098f(), remove.m60087a(), remove.m60100g(), remove.m60102h(), remove.m60104j(), C16858d.m60143b().getSdkVersion(), "android", C16734a.m59797a(str).m59798a().m59839u(), C16734a.m59797a(str).m59798a().m59837s(), jSONArray, this);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m60129a(RunnableC16847e runnableC16847e) {
        C16810d m59998a = C16810d.m59998a(runnableC16847e.f93680b);
        HashMap<String, SpreadValue> hashMap = new HashMap<>();
        hashMap.put(runnableC16847e.f93682d, new SpreadValue().m60086a(m59998a.m60004a()).m60095e(m59998a.m60011h()).m60089b(runnableC16847e.f93680b).m60101h(runnableC16847e.f93681c).m60097f(C16762a.m59885d(runnableC16847e.f93680b).getQimei16()).m60099g(C16762a.m59885d(runnableC16847e.f93680b).getQimei36()).m60085a(System.currentTimeMillis()).m60092c(runnableC16847e.f93680b).m60093d(runnableC16847e.f93681c).m60088b(System.currentTimeMillis()));
        C16849g.m60134a().m60137a(hashMap, runnableC16847e.f93680b, runnableC16847e.f93681c);
    }

    /* renamed from: b */
    public void m60133b() {
        C16795c c16795c = C16795c.a.f93522a;
        long currentTimeMillis = System.currentTimeMillis();
        if (c16795c.m59953a() != null) {
            c16795c.f93520a.edit().putLong("l_u_time", currentTimeMillis).apply();
        }
        this.f93683e.set(false);
        C16806a.m59995b("SpreadQM", "spread data upload success.", new Object[0]);
    }

    /* renamed from: a */
    public void m60132a() {
        C16795c.a.f93522a.m59955a("sp_need_report", true);
        this.f93683e.set(false);
    }
}
