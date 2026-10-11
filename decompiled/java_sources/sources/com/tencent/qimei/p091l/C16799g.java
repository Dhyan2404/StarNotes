package com.tencent.qimei.p091l;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tencent.qimei.p078a.C16733a;
import com.tencent.qimei.p085f.C16779c;
import com.tencent.qimei.p092m.C16800a;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.l.g */
/* loaded from: classes10.dex */
public class C16799g {

    /* renamed from: a */
    public static final Map<String, C16799g> f93535a = new ConcurrentHashMap();

    /* renamed from: b */
    public SharedPreferences f93536b;

    /* renamed from: c */
    public final String f93537c;

    /* renamed from: d */
    public Context f93538d;

    /* renamed from: e */
    public String f93539e;

    public C16799g(String str) {
        this.f93537c = str;
    }

    /* renamed from: b */
    public static synchronized C16799g m59964b(String str) {
        C16799g c16799g;
        synchronized (C16799g.class) {
            Map<String, C16799g> map = f93535a;
            c16799g = map.get(str);
            if (c16799g == null) {
                c16799g = new C16799g(str);
                map.put(str, c16799g);
            }
        }
        return c16799g;
    }

    /* renamed from: a */
    public final SharedPreferences m59965a() {
        if (this.f93536b == null) {
            m59969b();
        }
        return this.f93536b;
    }

    /* renamed from: c */
    public long m59970c(String str) {
        if (m59965a() == null) {
            return 0L;
        }
        return this.f93536b.getLong(str, 0L);
    }

    /* renamed from: d */
    public String m59971d(String str) {
        String string;
        return (m59965a() == null || (string = this.f93536b.getString(str, "")) == null) ? "" : string;
    }

    /* renamed from: a */
    public void m59966a(String str) {
        if (m59965a() != null && C16779c.m59933a(this.f93537c).m59934b()) {
            this.f93536b.edit().remove(str).apply();
        }
    }

    /* renamed from: b */
    public final synchronized void m59969b() {
        if (this.f93536b != null) {
            return;
        }
        if (this.f93538d == null) {
            return;
        }
        if (TextUtils.isEmpty(this.f93539e)) {
            this.f93539e = "";
        }
        StringBuilder m59796a = C16733a.m59796a("QV1");
        m59796a.append(this.f93539e);
        m59796a.append(C16800a.m59973a(this.f93537c));
        this.f93536b = this.f93538d.getSharedPreferences(m59796a.toString(), 0);
    }

    /* renamed from: a */
    public void m59967a(String str, long j) {
        if (m59965a() != null && C16779c.m59933a(this.f93537c).m59934b()) {
            this.f93536b.edit().putLong(str, j).apply();
        }
    }

    /* renamed from: a */
    public void m59968a(String str, String str2) {
        if (m59965a() != null && C16779c.m59933a(this.f93537c).m59934b()) {
            this.f93536b.edit().putString(str, str2).apply();
        }
    }
}
