package com.tencent.qimei.p079aa;

import com.tencent.qimei.ac.C16743b;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.aa.a */
/* loaded from: classes10.dex */
public class C16734a {

    /* renamed from: a */
    public static final Map<String, C16734a> f93329a = new ConcurrentHashMap();

    /* renamed from: b */
    public final String f93330b;

    /* renamed from: c */
    public final C16743b f93331c;

    public C16734a(String str) {
        this.f93330b = str;
        this.f93331c = new C16743b(str);
    }

    /* renamed from: a */
    public static synchronized C16734a m59797a(String str) {
        C16734a c16734a;
        synchronized (C16734a.class) {
            Map<String, C16734a> map = f93329a;
            c16734a = map.get(str);
            if (c16734a == null) {
                c16734a = new C16734a(str);
                map.put(str, c16734a);
            }
        }
        return c16734a;
    }

    /* renamed from: a */
    public C16743b m59798a() {
        return this.f93331c;
    }
}
