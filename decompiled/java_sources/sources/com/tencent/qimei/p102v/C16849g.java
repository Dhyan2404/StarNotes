package com.tencent.qimei.p102v;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p082c.C16764a;
import com.tencent.qimei.p082c.C16768e;
import com.tencent.qimei.p091l.C16795c;
import com.tencent.qimei.p092m.C16800a;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.sdk.p099S.DataFormatter;
import com.tencent.qimei.sdk.p099S.SpreadValue;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.tencent.qimei.v.g */
/* loaded from: classes10.dex */
public class C16849g implements C16768e.a {

    /* renamed from: a */
    public static final String f93685a = C16800a.m59976b();

    /* renamed from: b */
    public String f93686b;

    /* renamed from: c */
    public String f93687c;

    /* renamed from: d */
    public String f93688d;

    /* renamed from: e */
    public C16768e f93689e;

    /* renamed from: f */
    public final DataFormatter f93690f;

    /* renamed from: com.tencent.qimei.v.g$a */
    /* loaded from: classes10.dex */
    public static class a {

        /* renamed from: a */
        public static final C16849g f93691a = new C16849g(null);
    }

    public C16849g() {
        DataFormatter m60123a = new C16845c().m60123a();
        this.f93690f = m60123a;
        C16806a.m59995b("SpreadQM", "%s%s load current cache size: %s", this.f93686b, this.f93687c, Integer.valueOf(m60123a.m60083a().size()));
    }

    /* renamed from: a */
    public static C16849g m60134a() {
        return a.f93691a;
    }

    /* renamed from: b */
    public final Bundle m60138b() {
        Bundle bundle = new Bundle();
        bundle.putString("spread_data", new C16845c().m60126a(this.f93690f, f93685a));
        bundle.putString("appKey", this.f93686b);
        bundle.putString("source", this.f93687c);
        return bundle;
    }

    public /* synthetic */ C16849g(C16848f c16848f) {
        DataFormatter m60123a = new C16845c().m60123a();
        this.f93690f = m60123a;
        C16806a.m59995b("SpreadQM", "%s%s load current cache size: %s", this.f93686b, this.f93687c, Integer.valueOf(m60123a.m60083a().size()));
    }

    /* renamed from: a */
    public synchronized void m60136a(String str, String str2) {
        this.f93686b = str;
        this.f93687c = str2;
        this.f93688d = str + str2;
        C16768e c16768e = this.f93689e;
        if (!(c16768e != null)) {
            if (c16768e == null) {
                C16768e c16768e2 = new C16768e(this, this.f93688d);
                this.f93689e = c16768e2;
                c16768e2.m59894a();
            }
            C16762a.m59873a(C16764a.f93443b, "", m60138b());
            C16806a.m59995b("SpreadQM", "%s-%s | send implicit broadcast", this.f93686b, this.f93687c);
        }
    }

    /* renamed from: a */
    public synchronized void m60135a(String str, @NonNull Bundle bundle) {
        boolean z;
        String string = bundle.getString("appKey");
        String string2 = bundle.getString("source");
        DataFormatter m60125a = new C16845c().m60125a(bundle.getString("spread_data"), f93685a);
        boolean m60137a = m60137a(m60125a.m60083a(), string, string2);
        boolean z2 = this.f93690f.m60083a().size() > m60125a.m60083a().size();
        Object[] objArr = new Object[6];
        objArr[0] = this.f93686b;
        objArr[1] = this.f93687c;
        objArr[2] = string;
        objArr[3] = string2;
        objArr[4] = m60125a;
        if (!m60137a && !z2) {
            z = false;
            objArr[5] = Boolean.valueOf(z);
            C16806a.m59995b("SpreadQM", "%s%s received broadcast from %s%s|data = %s|,needReply:%b ", objArr);
            if (TextUtils.isEmpty(str) && (m60137a || z2)) {
                C16762a.m59882b(C16764a.f93443b, string2, m60138b());
                C16806a.m59995b("SpreadQM", "%s%s reply broadcast to %s", this.f93686b, this.f93687c, string2);
            }
        }
        z = true;
        objArr[5] = Boolean.valueOf(z);
        C16806a.m59995b("SpreadQM", "%s%s received broadcast from %s%s|data = %s|,needReply:%b ", objArr);
        if (TextUtils.isEmpty(str)) {
            C16762a.m59882b(C16764a.f93443b, string2, m60138b());
            C16806a.m59995b("SpreadQM", "%s%s reply broadcast to %s", this.f93686b, this.f93687c, string2);
        }
    }

    /* renamed from: a */
    public synchronized boolean m60137a(HashMap<String, SpreadValue> hashMap, String str, String str2) {
        boolean z;
        HashMap<String, SpreadValue> m60083a = this.f93690f.m60083a();
        z = false;
        for (Map.Entry<String, SpreadValue> entry : hashMap.entrySet()) {
            if (!m60083a.containsKey(entry.getKey())) {
                entry.getValue().m60092c(str);
                entry.getValue().m60093d(str2);
                entry.getValue().m60088b(System.currentTimeMillis());
                m60083a.put(entry.getKey(), entry.getValue());
            } else if (m60083a.get(entry.getKey()) != null && !m60083a.get(entry.getKey()).equals(entry.getValue())) {
                String key = entry.getKey();
                SpreadValue spreadValue = m60083a.get(key);
                spreadValue.m60095e(entry.getValue().m60098f());
                spreadValue.m60086a(entry.getValue().m60087a());
                spreadValue.m60097f(entry.getValue().m60100g());
                spreadValue.m60099g(entry.getValue().m60102h());
                spreadValue.m60092c(str);
                spreadValue.m60093d(str2);
                spreadValue.m60088b(System.currentTimeMillis());
                m60083a.put(key, spreadValue);
            }
            z = true;
        }
        C16806a.m59995b("SpreadQM", "update data,from:appKey:%s  source:%s  updateResult:%b", str, str2, Boolean.valueOf(z));
        if (z) {
            this.f93690f.m60084a(m60083a);
            C16795c.a.f93522a.m59955a("sp_need_report", true);
            new C16845c().m60127a(this.f93690f);
        }
        return z;
    }
}
