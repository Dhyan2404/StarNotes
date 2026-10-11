package com.tencent.qimei.ad;

import android.content.Context;
import android.os.Looper;
import com.tencent.qimei.ae.C16760c;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.webview.util.X5StateController;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.ad.e */
/* loaded from: classes10.dex */
public class RunnableC16748e implements Runnable, C16760c.b, InterfaceC16744a {

    /* renamed from: a */
    public static final String f93399a = "e";

    /* renamed from: b */
    public static final Map<String, RunnableC16748e> f93400b = new ConcurrentHashMap();

    /* renamed from: c */
    public final String f93401c;

    /* renamed from: d */
    public int f93402d;

    /* renamed from: e */
    public int f93403e;

    /* renamed from: f */
    public int f93404f;

    /* renamed from: g */
    public boolean f93405g;

    /* renamed from: h */
    public boolean f93406h;

    /* renamed from: i */
    public Context f93407i;

    /* renamed from: j */
    public InterfaceC16744a f93408j;

    /* renamed from: k */
    public boolean f93409k;

    /* renamed from: l */
    public volatile C16754k f93410l;

    /* renamed from: m */
    public volatile C16757n f93411m;

    public RunnableC16748e(String str) {
        this.f93401c = str;
    }

    /* renamed from: a */
    public static synchronized RunnableC16748e m59841a(String str) {
        RunnableC16748e runnableC16748e;
        synchronized (RunnableC16748e.class) {
            Map<String, RunnableC16748e> map = f93400b;
            runnableC16748e = map.get(str);
            if (runnableC16748e == null) {
                runnableC16748e = new RunnableC16748e(str);
                map.put(str, runnableC16748e);
            }
        }
        return runnableC16748e;
    }

    /* renamed from: b */
    public ClassLoader m59847b() {
        return null;
    }

    /* renamed from: c */
    public final void m59848c() {
        boolean z;
        ((RunnableC16748e) this.f93408j).m59847b();
        boolean z2 = false;
        Object m59865a = C16762a.m59865a(null, "com.tencent.smtt.sdk.QbSdk", "isTbsCoreInited", new Class[0], new Object[0]);
        Object m59865a2 = C16762a.m59865a(null, "com.tencent.smtt.sdk.QbSdk", "getTbsVersion", new Class[]{Context.class}, new Object[]{this.f93407i});
        if (m59865a2 == null) {
            C16806a.m59991a(f93399a, "Qbsdk not install", new Object[0]);
        } else {
            int intValue = ((Integer) m59865a2).intValue();
            if (m59865a != null) {
                z = ((Boolean) m59865a).booleanValue();
            } else {
                X5StateController.X5Controller controller = X5StateController.C16852a.f93698a.getController();
                z = controller != null && controller.detectX5InitFinished();
            }
            if (!z || intValue == 0) {
                C16806a.m59991a(f93399a, "x5 not ready,isInited: %b x5Version: %d", Boolean.valueOf(z), m59865a2);
            } else {
                z2 = true;
            }
        }
        if (z2) {
            if (this.f93402d != 0) {
                this.f93405g = true;
                RunnableC16748e runnableC16748e = (RunnableC16748e) this.f93408j;
                if (runnableC16748e.f93411m == null) {
                    runnableC16748e.f93411m = new C16757n(runnableC16748e.f93407i);
                }
                runnableC16748e.f93411m.m59858b();
                m59845a(runnableC16748e.f93411m.f93429c.m59850a());
            }
        } else if (this.f93403e != 0) {
            this.f93406h = true;
            if (this.f93410l == null) {
                this.f93410l = new C16754k(this.f93407i);
            }
            this.f93410l.m59854a();
            m59845a(this.f93410l.f93424c.m59850a());
        }
        AbstractC16769a.m59895a().mo59896a((this.f93405g ? this.f93402d : this.f93406h ? this.f93403e : 600) * 1000, this);
    }

    /* renamed from: d */
    public final void m59849d() {
        Looper.getMainLooper().getQueue().addIdleHandler(new C16746c(this));
        AbstractC16769a.m59895a().mo59896a(30000L, new RunnableC16747d(this));
    }

    @Override // java.lang.Runnable
    public void run() {
        C16760c c16760c = new C16760c(this.f93407i, this.f93401c, this);
        boolean z = true;
        if (!(c16760c.m59862a("tun-cos-1258344701.html") && c16760c.m59862a("tun-cos-1258344701.js"))) {
            c16760c.m59861a(true);
            c16760c.m59864b(true);
        } else if (m59846a("lc_fe_tm", "")) {
            if (c16760c.m59863a("tun-cos-1258344701.html", "lc_fe_st_hm") && c16760c.m59863a("tun-cos-1258344701.js", "lc_fe_st_js")) {
                c16760c.m59861a(false);
                c16760c.m59864b(false);
            } else {
                c16760c.m59861a(true);
                c16760c.m59864b(true);
            }
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        m59848c();
    }

    /* renamed from: a */
    public final synchronized void m59844a() {
        if (this.f93409k) {
            return;
        }
        AbstractC16769a.m59895a().mo59897a(this);
        this.f93409k = true;
    }

    /* renamed from: a */
    public final boolean m59846a(String str, String str2) {
        return C16762a.m59876a(C16799g.m59964b(this.f93401c).m59970c(str + str2), 24L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
    
        if (r2.equals(com.tencent.qimei.p091l.C16799g.m59964b(r9.f93401c).m59971d(com.onyx.android.sdk.ocr.data.constant.OcrValues.LANG_INDIAN + r1)) == false) goto L23;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m59845a(com.tencent.qimei.ad.C16750g r10) {
        /*
            r9 = this;
            if (r10 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r10.f93416a
            java.lang.String r1 = r10.f93417b
            java.lang.String r2 = r10.f93418c
            java.lang.String r10 = r10.f93419d
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            r4 = 0
            r5 = 1
            if (r3 != 0) goto L2c
            boolean r3 = android.text.TextUtils.isEmpty(r10)
            if (r3 != 0) goto L2c
            java.lang.String r3 = "null"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L2c
            int r3 = r2.length()
            r6 = 32
            if (r3 == r6) goto L2a
            goto L2c
        L2a:
            r3 = r4
            goto L2d
        L2c:
            r3 = r5
        L2d:
            if (r3 == 0) goto L43
            java.lang.String r9 = com.tencent.qimei.ad.RunnableC16748e.f93399a
            int r10 = r2.length()
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            java.lang.Object[] r10 = new java.lang.Object[]{r1, r10}
            java.lang.String r0 = "%s hid is invalid, len = %d"
            com.tencent.qimei.p093n.C16806a.m59991a(r9, r0, r10)
            return
        L43:
            java.lang.String r3 = "h_s_t"
            boolean r6 = r9.m59846a(r3, r1)
            java.lang.String r7 = "hi"
            if (r6 == 0) goto L4e
            goto L6d
        L4e:
            java.lang.String r6 = r9.f93401c
            com.tencent.qimei.l.g r6 = com.tencent.qimei.p091l.C16799g.m59964b(r6)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r7)
            r8.append(r1)
            java.lang.String r8 = r8.toString()
            java.lang.String r6 = r6.m59971d(r8)
            boolean r6 = r2.equals(r6)
            if (r6 != 0) goto L6e
        L6d:
            r4 = r5
        L6e:
            if (r4 != 0) goto L7c
            java.lang.String r9 = com.tencent.qimei.ad.RunnableC16748e.f93399a
            java.lang.Object[] r10 = new java.lang.Object[]{r1}
            java.lang.String r0 = "%s hid same and in 24h"
            com.tencent.qimei.p093n.C16806a.m59995b(r9, r0, r10)
            return
        L7c:
            java.lang.String r4 = r9.f93401c
            com.tencent.qimei.l.g r4 = com.tencent.qimei.p091l.C16799g.m59964b(r4)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r7)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            r4.m59968a(r5, r2)
            java.lang.String r4 = r9.f93401c
            com.tencent.qimei.l.g r4 = com.tencent.qimei.p091l.C16799g.m59964b(r4)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r3)
            r5.append(r1)
            java.lang.String r3 = r5.toString()
            long r5 = java.lang.System.currentTimeMillis()
            r4.m59967a(r3, r5)
            java.lang.String r9 = r9.f93401c
            com.tencent.qimei.p096q.C16814b.m60017a(r9, r0, r1, r2, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.ad.RunnableC16748e.m59845a(com.tencent.qimei.ad.g):void");
    }
}
