package com.tencent.beacon.p073d;

import com.tencent.beacon.base.util.C14954c;
import java.util.Calendar;
import java.util.Map;

/* renamed from: com.tencent.beacon.d.a */
/* loaded from: classes10.dex */
public class C14968a implements InterfaceC14971d {

    /* renamed from: a */
    private static volatile C14968a f92940a;

    /* renamed from: b */
    public boolean f92941b = false;

    /* renamed from: c */
    private String f92942c = "oth.str.mdt.qq.com";

    /* renamed from: d */
    private int f92943d = 360;

    /* renamed from: e */
    private int f92944e = 100;

    /* renamed from: f */
    private Map<String, String> f92945f = null;

    /* renamed from: g */
    private boolean f92946g = false;

    /* renamed from: h */
    private C14972e f92947h = new C14972e(1);

    private C14968a() {
    }

    /* renamed from: a */
    public static C14968a m59436a() {
        if (f92940a == null) {
            synchronized (C14968a.class) {
                if (f92940a == null) {
                    f92940a = new C14968a();
                }
            }
        }
        return f92940a;
    }

    /* renamed from: b */
    public int m59440b() {
        return this.f92943d;
    }

    /* renamed from: c */
    public synchronized int m59441c() {
        String str;
        Map<String, String> map = this.f92945f;
        if (map == null || (str = map.get("maxStrategyQueryOneDay")) == null || str.trim().equals("")) {
            return this.f92944e;
        }
        int i = this.f92944e;
        try {
            i = Integer.parseInt(str);
        } catch (Exception e) {
            C14954c.m59393a(e);
        }
        return i;
    }

    /* renamed from: d */
    public C14972e m59442d() {
        return this.f92947h;
    }

    /* renamed from: e */
    public synchronized boolean m59443e() {
        Map<String, String> map = this.f92945f;
        if (map == null || !"y".equalsIgnoreCase(map.get("zeroPeak"))) {
            return false;
        }
        return Calendar.getInstance().get(11) == 0;
    }

    /* renamed from: a */
    public void m59438a(int i) {
        this.f92943d = i;
    }

    /* renamed from: a */
    public synchronized void m59439a(Map<String, String> map) {
        this.f92945f = map;
    }

    /* renamed from: a */
    public String m59437a(String str) {
        Map<String, String> m59492a;
        C14972e c14972e = this.f92947h;
        if (c14972e == null || (m59492a = c14972e.m59492a()) == null) {
            return null;
        }
        return m59492a.get(str);
    }
}
