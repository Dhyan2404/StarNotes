package com.tencent.qimei.p096q;

import com.tencent.qimei.p093n.C16806a;
import org.json.JSONArray;

/* renamed from: com.tencent.qimei.q.b */
/* loaded from: classes10.dex */
public class C16814b {

    /* renamed from: a */
    public static final String f93567a = "b";

    /* renamed from: a */
    public static void m60017a(String str, String str2, String str3, String str4, String str5) {
        C16821i m60021b = C16821i.m60021b();
        C16815c m60022a = m60021b.m60022a();
        m60022a.f93568a.put("version", str2);
        m60022a.f93568a.put("browser", str3);
        m60022a.f93568a.put("hid", str4);
        m60022a.f93568a.put("userAgent", str5);
        m60021b.m60025b(m60022a, "j1", str, "/bind");
        C16806a.m59995b(f93567a, "H5ID has been reported over,h5id = %s", str4);
    }

    /* renamed from: a */
    public static void m60016a(String str, String str2, long j, String str3, String str4, String str5, String str6, long j2, String str7, String str8, int i, boolean z, JSONArray jSONArray, InterfaceC16813a interfaceC16813a) {
        C16821i m60021b = C16821i.m60021b();
        C16815c m60022a = m60021b.m60022a();
        m60022a.f93568a.put("appKey", str);
        m60022a.f93568a.put("source", str2);
        m60022a.f93568a.put("firstTime", Long.valueOf(j));
        m60022a.f93568a.put("oaid", str3);
        m60022a.f93568a.put("aid", str4);
        m60022a.f93568a.put("q16", str5);
        m60022a.f93568a.put("q36", str6);
        m60022a.f93568a.put("updateTime", Long.valueOf(j2));
        m60022a.f93568a.put("sdkVersion", str7);
        m60022a.f93568a.put("interval", Integer.valueOf(i));
        m60022a.f93568a.put("strict", Boolean.valueOf(z));
        m60022a.f93568a.put("platform", str8);
        m60022a.f93568a.put("data", jSONArray);
        m60022a.f93569b = false;
        m60022a.f93570c = interfaceC16813a;
        m60021b.m60025b(m60022a, "s1", str, "/sp");
        C16806a.m59995b(f93567a, "Spread data has been reported over,appKey = %s", str);
    }
}
