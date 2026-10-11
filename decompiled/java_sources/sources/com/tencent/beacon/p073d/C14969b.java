package com.tencent.beacon.p073d;

import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.tencent.beacon.base.net.p066b.C14933b;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p060a.InterfaceC14872d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;

/* renamed from: com.tencent.beacon.d.b */
/* loaded from: classes10.dex */
public class C14969b implements InterfaceC14872d {

    /* renamed from: a */
    private static volatile C14969b f92948a;

    /* renamed from: b */
    private static final Random f92949b = new Random();

    /* renamed from: c */
    private static final Map<String, Map<String, Integer>> f92950c = new HashMap();

    /* renamed from: i */
    protected Boolean f92974i;

    /* renamed from: k */
    protected InterfaceC14970c f92976k;

    /* renamed from: d */
    protected int f92969d = 48;

    /* renamed from: e */
    protected int f92970e = 2000;

    /* renamed from: f */
    protected int f92971f = 48;

    /* renamed from: g */
    protected int f92972g = 5000;

    /* renamed from: h */
    protected int f92973h = 60000;

    /* renamed from: j */
    protected boolean f92975j = true;

    /* renamed from: l */
    protected boolean f92977l = true;

    /* renamed from: m */
    protected boolean f92978m = true;

    /* renamed from: n */
    protected Set<String> f92979n = null;

    /* renamed from: o */
    protected Map<String, Float> f92980o = null;

    /* renamed from: p */
    protected boolean f92981p = false;

    /* renamed from: q */
    protected boolean f92982q = false;

    /* renamed from: r */
    protected boolean f92983r = false;

    /* renamed from: s */
    protected float f92984s = 1.0f;

    /* renamed from: t */
    protected boolean f92985t = false;

    /* renamed from: u */
    protected boolean f92986u = false;

    /* renamed from: v */
    protected boolean f92987v = false;

    /* renamed from: w */
    protected int f92988w = 1;

    /* renamed from: x */
    protected long f92989x = 6400;

    /* renamed from: y */
    protected int f92990y = 20;

    /* renamed from: z */
    protected int f92991z = 300;

    /* renamed from: A */
    protected boolean f92951A = true;

    /* renamed from: B */
    protected boolean f92952B = true;

    /* renamed from: C */
    protected boolean f92953C = true;

    /* renamed from: D */
    protected boolean f92954D = true;

    /* renamed from: E */
    protected boolean f92955E = true;

    /* renamed from: F */
    protected boolean f92956F = true;

    /* renamed from: G */
    protected boolean f92957G = true;

    /* renamed from: H */
    protected int f92958H = 10000;

    /* renamed from: I */
    protected boolean f92959I = true;

    /* renamed from: J */
    protected boolean f92960J = true;

    /* renamed from: K */
    protected boolean f92961K = true;

    /* renamed from: L */
    protected boolean f92962L = false;

    /* renamed from: M */
    protected int f92963M = 1;

    /* renamed from: N */
    private boolean f92964N = false;

    /* renamed from: O */
    protected int f92965O = 10;

    /* renamed from: P */
    private int f92966P = 2;

    /* renamed from: Q */
    private int f92967Q = 0;

    /* renamed from: R */
    private int f92968R = 2;

    public C14969b() {
        C14870b.m58921a().m58927a(8, this);
    }

    /* renamed from: b */
    public static C14969b m59444b() {
        if (f92948a == null) {
            synchronized (C14969b.class) {
                if (f92948a == null) {
                    f92948a = new C14969b();
                }
            }
        }
        return f92948a;
    }

    /* renamed from: f */
    private void m59446f(int i) {
        if (this.f92967Q != i) {
            C14975h.m59499d().m59509g();
        }
        this.f92967Q = i;
    }

    /* renamed from: y */
    private void m59447y() {
        InterfaceC14970c interfaceC14970c = this.f92976k;
        if (interfaceC14970c != null) {
            interfaceC14970c.mo59491c();
        }
    }

    @Override // com.tencent.beacon.p059a.p060a.InterfaceC14872d
    /* renamed from: a */
    public void mo58930a(C14871c c14871c) {
        if (c14871c.f92540a != 8) {
            return;
        }
        this.f92952B = c14871c.f92541b.containsKey("u_c_a_e") ? ((Boolean) c14871c.f92541b.get("u_c_a_e")).booleanValue() : this.f92952B;
        this.f92951A = c14871c.f92541b.containsKey("u_c_b_e") ? ((Boolean) c14871c.f92541b.get("u_c_b_e")).booleanValue() : this.f92951A;
        this.f92958H = c14871c.f92541b.containsKey("u_c_d_s") ? ((Integer) c14871c.f92541b.get("u_c_d_s")).intValue() : this.f92958H;
        this.f92977l = c14871c.f92541b.containsKey("u_c_p_s") ? ((Boolean) c14871c.f92541b.get("u_c_p_s")).booleanValue() : this.f92977l;
        this.f92953C = c14871c.f92541b.containsKey("u_s_o_h") ? ((Boolean) c14871c.f92541b.get("u_s_o_h")).booleanValue() : this.f92953C;
    }

    /* renamed from: c */
    public void m59463c(int i) {
        if (i < 24 || i > 100) {
            return;
        }
        this.f92971f = i;
    }

    /* renamed from: d */
    public int m59465d() {
        return this.f92958H;
    }

    /* renamed from: e */
    public void m59470e(boolean z) {
        this.f92957G = z;
    }

    /* renamed from: g */
    public synchronized int m59473g() {
        return this.f92971f;
    }

    /* renamed from: h */
    public synchronized int m59474h() {
        return this.f92970e;
    }

    /* renamed from: i */
    public synchronized int m59475i() {
        return this.f92969d;
    }

    /* renamed from: j */
    public int m59476j() {
        return this.f92967Q;
    }

    /* renamed from: k */
    public synchronized int m59477k() {
        return this.f92963M;
    }

    /* renamed from: l */
    public synchronized int m59478l() {
        return this.f92973h;
    }

    /* renamed from: m */
    public boolean m59479m() {
        return this.f92951A;
    }

    /* renamed from: n */
    public boolean m59480n() {
        Boolean bool = this.f92974i;
        return bool == null ? this.f92975j : bool.booleanValue();
    }

    /* renamed from: o */
    public boolean m59481o() {
        return this.f92964N;
    }

    /* renamed from: p */
    public synchronized boolean m59482p() {
        return this.f92982q;
    }

    /* renamed from: q */
    public boolean m59483q() {
        return this.f92955E;
    }

    /* renamed from: r */
    public boolean m59484r() {
        return this.f92956F;
    }

    /* renamed from: s */
    public boolean m59485s() {
        return this.f92954D;
    }

    /* renamed from: t */
    public boolean m59486t() {
        return this.f92977l;
    }

    /* renamed from: u */
    public boolean m59487u() {
        return this.f92957G;
    }

    /* renamed from: v */
    public boolean m59488v() {
        return this.f92961K;
    }

    /* renamed from: w */
    public boolean m59489w() {
        return this.f92953C;
    }

    /* renamed from: x */
    public synchronized boolean m59490x() {
        return this.f92962L;
    }

    /* renamed from: c */
    public void m59464c(boolean z) {
        this.f92956F = z;
    }

    /* renamed from: d */
    public void m59467d(boolean z) {
        this.f92954D = z;
    }

    /* renamed from: e */
    public int m59468e() {
        return this.f92965O;
    }

    /* renamed from: c */
    public int m59462c() {
        return this.f92968R;
    }

    /* renamed from: d */
    public void m59466d(int i) {
        if (i < 24 || i > 100) {
            return;
        }
        this.f92969d = i;
    }

    /* renamed from: e */
    public void m59469e(int i) {
        this.f92967Q = i;
    }

    /* renamed from: f */
    public synchronized int m59471f() {
        return this.f92972g;
    }

    /* renamed from: f */
    public void m59472f(boolean z) {
        this.f92961K = z;
    }

    /* renamed from: b */
    private void m59445b(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("d_m", new HashMap(map));
        C14870b.m58921a().m58929b(new C14871c(2, hashMap));
    }

    /* renamed from: b */
    public synchronized void m59459b(Set<String> set) {
        if (this.f92980o == null) {
            this.f92980o = new HashMap();
        }
        if (set == null) {
            return;
        }
        Iterator<String> it2 = set.iterator();
        while (it2.hasNext()) {
            String[] split = it2.next().split(",");
            if (split.length == 3) {
                try {
                    this.f92980o.put(split[0].toLowerCase(), Float.valueOf(Float.valueOf(split[1]).floatValue() / Float.valueOf(split[2]).floatValue()));
                } catch (Exception e) {
                    C14954c.m59393a(e);
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized void m59452a(Map<String, String> map) {
        if (map != null) {
            m59445b(map);
            try {
                if (this.f92969d == 48) {
                    this.f92969d = C14953b.m59358a(map.get("realtimeUploadNum"), this.f92969d, 24, 100);
                }
                if (this.f92971f == 48) {
                    this.f92971f = C14953b.m59358a(map.get("normalUploadNum"), this.f92971f, 24, 100);
                }
                if (this.f92972g == 5000) {
                    this.f92972g = C14953b.m59358a(map.get("normalPollingTime"), this.f92972g, 2000, 3600000);
                }
                if (this.f92970e == 2000) {
                    this.f92970e = C14953b.m59358a(map.get("realtimePollingTime"), this.f92970e, 1000, 10000);
                }
                this.f92978m = C14953b.m59370a(map.get("heartOnOff"), this.f92978m);
                this.f92981p = C14953b.m59370a(map.get("tidyEF"), this.f92981p);
                this.f92982q = C14953b.m59370a(map.get("lauEveSim"), this.f92982q);
                this.f92983r = C14953b.m59370a(map.get("zeroPeakOnOff"), this.f92983r);
                String str = map.get("zeroPeakRate");
                if (str != null) {
                    String trim = str.trim();
                    if (trim.length() > 0) {
                        String[] split = trim.split(",");
                        if (split.length == 2) {
                            try {
                                this.f92984s = Float.valueOf(split[0]).floatValue() / Float.valueOf(split[1]).floatValue();
                            } catch (Exception e) {
                                C14954c.m59393a(e);
                            }
                        }
                    }
                }
                this.f92962L = C14953b.m59370a(map.get("straOnOff"), this.f92962L);
                this.f92963M = C14953b.m59358a(map.get("straDayMaxCount"), this.f92963M, 1, Integer.MAX_VALUE);
                this.f92985t = C14953b.m59370a(map.get("acceleEnable"), this.f92985t);
                this.f92986u = C14953b.m59370a(map.get("gyroEnable"), this.f92986u);
                this.f92987v = C14953b.m59370a(map.get("magneticEnable"), this.f92987v);
                this.f92988w = C14953b.m59358a(map.get("gatherCount"), this.f92988w, 1, 50);
                this.f92989x = C14953b.m59359a(map.get("gatherDur"), this.f92989x, 1000L, SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US);
                this.f92990y = C14953b.m59358a(map.get("hertzCount"), this.f92990y, 20, 100);
                this.f92991z = C14953b.m59358a(map.get("consuming"), this.f92991z, 60, 86400);
                this.f92951A = C14953b.m59370a(map.get("bidEnable"), this.f92951A);
                this.f92952B = C14953b.m59370a(map.get("auditEnable"), this.f92952B);
                this.f92958H = C14953b.m59358a(map.get("maxDBCount"), this.f92958H, 10000, 100000);
                this.f92965O = C14953b.m59358a(map.get("netFailureNumMax"), this.f92965O, 1, 50);
                this.f92973h = C14953b.m59358a(map.get("weekNetPollingTime"), this.f92973h, 2000, 3600000);
                this.f92966P = C14953b.m59358a(map.get("zipType"), this.f92966P, 1, 3);
                m59446f(C14953b.m59358a(map.get("rsaPubKeyType"), this.f92967Q, 0, 1));
                this.f92956F = C14953b.m59370a(map.get("needLifeCycleListener"), this.f92956F);
                C14933b.m59285c(map.get("eventUrl"));
                C14933b.m59287e(map.get("strategyUrl"));
            } catch (Exception e2) {
                C14954c.m59393a(e2);
            }
        }
    }

    /* renamed from: b */
    public synchronized boolean m59461b(String str) {
        Map<String, Float> map = this.f92980o;
        if (map != null && map.get(str.toLowerCase()) != null) {
            return f92949b.nextInt(1000) + 1 <= ((int) (this.f92980o.get(str.toLowerCase()).floatValue() * 1000.0f));
        }
        return true;
    }

    /* renamed from: b */
    public void m59460b(boolean z) {
        this.f92955E = z;
    }

    /* renamed from: b */
    public void m59458b(int i) {
        this.f92968R = i;
    }

    /* renamed from: a */
    public synchronized void m59453a(Set<String> set) {
        this.f92979n = set;
    }

    /* renamed from: a */
    public synchronized boolean m59456a(String str) {
        Set<String> set;
        set = this.f92979n;
        return (set == null || set.size() <= 0) ? false : this.f92979n.contains(str);
    }

    /* renamed from: a */
    public synchronized void m59451a(String str, Map<String, Integer> map) {
        f92950c.put(str, map);
    }

    /* renamed from: a */
    public synchronized boolean m59457a(String str, String str2) {
        Map<String, Integer> map = f92950c.get(str);
        if (map != null && map.get(str2) != null) {
            return f92949b.nextInt(10000) + 1 >= map.get(str2).intValue();
        }
        return false;
    }

    /* renamed from: a */
    public void m59455a(boolean z, boolean z2) {
        C14954c.m59392a("event report state changed: " + z, new Object[0]);
        boolean m59480n = m59480n();
        if (z2) {
            this.f92974i = Boolean.valueOf(z);
        } else {
            this.f92975j = z;
        }
        if (m59480n != m59480n()) {
            m59447y();
        }
    }

    /* renamed from: a */
    public void m59450a(InterfaceC14970c interfaceC14970c) {
        this.f92976k = interfaceC14970c;
    }

    /* renamed from: a */
    public void m59454a(boolean z) {
        this.f92964N = z;
    }

    /* renamed from: a */
    public int m59448a() {
        return this.f92966P;
    }

    /* renamed from: a */
    public void m59449a(int i) {
        this.f92966P = i;
    }
}
