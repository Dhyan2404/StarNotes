package com.tencent.qimei.p097r;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p082c.C16766c;
import com.tencent.qimei.p082c.InterfaceC16765b;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p096q.C16815c;
import com.tencent.qimei.p096q.C16821i;
import com.tencent.qimei.p103w.C16851b;
import com.tencent.qimei.p104x.C16854b;
import com.tencent.qimei.p105y.InterfaceC16856b;
import com.tencent.qimei.p106z.InterfaceC16859a;
import com.tencent.qimei.sdk.Qimei;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.qimei.r.f */
/* loaded from: classes10.dex */
public final class RunnableC16827f implements Runnable, InterfaceC16765b {

    /* renamed from: a */
    public static final Map<String, RunnableC16827f> f93615a = new ConcurrentHashMap();

    /* renamed from: b */
    public static final Queue<Integer> f93616b = new PriorityQueue();

    /* renamed from: c */
    public long f93617c;

    /* renamed from: d */
    public b f93618d;

    /* renamed from: e */
    public C16766c f93619e;

    /* renamed from: f */
    public AtomicBoolean f93620f;

    /* renamed from: g */
    public long f93621g;

    /* renamed from: h */
    public long f93622h;

    /* renamed from: i */
    public boolean f93623i;

    /* renamed from: j */
    public String f93624j;

    /* renamed from: k */
    public final a f93625k;

    /* renamed from: com.tencent.qimei.r.f$a */
    /* loaded from: classes10.dex */
    public static class a {

        /* renamed from: a */
        public final int f93626a;

        /* renamed from: b */
        public final InterfaceC20607a f93627b;

        /* renamed from: c */
        public final AtomicInteger f93628c = new AtomicInteger();

        /* renamed from: com.tencent.qimei.r.f$a$a, reason: collision with other inner class name */
        /* loaded from: classes10.dex */
        public interface InterfaceC20607a {
        }

        public a(int i, InterfaceC20607a interfaceC20607a) {
            this.f93626a = i;
            this.f93627b = interfaceC20607a;
        }
    }

    /* renamed from: com.tencent.qimei.r.f$b */
    /* loaded from: classes10.dex */
    public interface b {
    }

    public RunnableC16827f(String str) {
        new AtomicInteger();
        this.f93617c = 0L;
        this.f93620f = new AtomicBoolean(false);
        this.f93623i = false;
        this.f93624j = "";
        this.f93625k = new a(3, new C16825d(this));
        this.f93624j = str;
        Random random = new Random(RunnableC16827f.class.hashCode());
        for (int i = 0; i < 3; i++) {
            f93616b.offer(Integer.valueOf(random.nextInt(5) + 8));
        }
    }

    /* renamed from: a */
    public static synchronized RunnableC16827f m60038a(String str, @Nullable b bVar) {
        RunnableC16827f runnableC16827f;
        synchronized (RunnableC16827f.class) {
            Map<String, RunnableC16827f> map = f93615a;
            runnableC16827f = map.get(str);
            if (runnableC16827f == null) {
                runnableC16827f = new RunnableC16827f(str);
                runnableC16827f.f93618d = bVar;
                map.put(str, runnableC16827f);
            }
        }
        return runnableC16827f;
    }

    /* renamed from: b */
    public static /* synthetic */ void m60043b(RunnableC16827f runnableC16827f) {
        if (C16851b.f93697a.nextInt(101) <= C16734a.m59797a(runnableC16827f.f93624j).m59798a().m59835q()) {
            long uptimeMillis = SystemClock.uptimeMillis();
            long j = uptimeMillis - runnableC16827f.f93622h;
            long j2 = uptimeMillis - runnableC16827f.f93621g;
            long j3 = C16775c.m59907j().f93467d;
            b bVar = runnableC16827f.f93618d;
            long j4 = bVar != null ? ((C16833l) bVar).f93645k : 0L;
            String str = runnableC16827f.f93624j;
            C16821i m60021b = C16821i.m60021b();
            C16815c m60022a = m60021b.m60022a();
            m60022a.f93568a.put("p1", Long.valueOf(j));
            m60022a.f93568a.put("p2", Long.valueOf(j2));
            m60022a.f93568a.put("p3", Long.valueOf(j3));
            m60022a.f93568a.put("p4", Long.valueOf(j4));
            m60021b.m60025b(m60022a, FirebaseInstallationServiceClient.f35986m, str, "/report");
        }
    }

    /* renamed from: c */
    public final void m60048c() {
        Context context;
        String str = this.f93624j;
        InterfaceC16859a m60140a = C16854b.m60139a().m60140a("BizInfo" + str);
        InterfaceC16856b interfaceC16856b = null;
        InterfaceC16856b interfaceC16856b2 = m60140a instanceof InterfaceC16856b ? (InterfaceC16856b) m60140a : null;
        InterfaceC16856b interfaceC16856b3 = interfaceC16856b2;
        if (interfaceC16856b2 != null) {
            if (interfaceC16856b3 != null) {
                interfaceC16856b = interfaceC16856b3;
            } else {
                InterfaceC16859a m60140a2 = C16854b.m60139a().m60140a("BizInfo" + str);
                if (m60140a2 instanceof InterfaceC16856b) {
                    interfaceC16856b = (InterfaceC16856b) m60140a2;
                }
            }
            interfaceC16856b.mo60062f();
        }
        C16766c c16766c = this.f93619e;
        if (c16766c == null || (context = c16766c.f93445b) == null) {
            return;
        }
        try {
            context.unregisterReceiver(c16766c);
            Process.myPid();
        } catch (IllegalArgumentException e) {
            C16806a.m59992a(e);
        }
    }

    /* renamed from: d */
    public final void m60049d() {
        C16806a.m59995b("QM", "QM request failed(appKey: %s)", this.f93624j);
        m60044a();
        if (this.f93623i) {
            this.f93623i = false;
            return;
        }
        a aVar = this.f93625k;
        aVar.f93628c.getAndIncrement();
        boolean z = aVar.f93628c.get() > aVar.f93626a;
        if (z) {
            aVar.f93628c.set(0);
            a.InterfaceC20607a interfaceC20607a = aVar.f93627b;
            if (interfaceC20607a != null) {
                C16825d c16825d = (C16825d) interfaceC20607a;
                if (!C16734a.m59797a(c16825d.f93612a.f93624j).m59798a().m59834p().isEmpty()) {
                    c16825d.f93612a.f93623i = true;
                    AbstractC16769a.m59895a().mo59896a(10000L, c16825d.f93612a);
                }
            }
        }
        if (z) {
            return;
        }
        Queue<Integer> queue = f93616b;
        AbstractC16769a.m59895a().mo59896a(queue.peek() != null ? queue.poll().longValue() * 1000 : 0L, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e7  */
    @Override // java.lang.Runnable
    @android.annotation.SuppressLint({"MissingPermission"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r11 = this;
            java.util.concurrent.atomic.AtomicBoolean r0 = r11.f93620f
            boolean r0 = r0.get()
            java.lang.String r1 = "QM"
            if (r0 == 0) goto L16
            java.lang.String r11 = r11.f93624j
            java.lang.Object[] r11 = new java.lang.Object[]{r11}
            java.lang.String r0 = "QM is requesting,cancel this request(appKey: %s)"
            com.tencent.qimei.p093n.C16806a.m59995b(r1, r0, r11)
            return
        L16:
            java.util.concurrent.atomic.AtomicBoolean r0 = r11.f93620f
            r2 = 1
            r0.set(r2)
            boolean r0 = com.tencent.qimei.p081b.C16762a.m59875a()
            if (r0 != 0) goto L31
            java.lang.String r0 = r11.f93624j
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r2 = "no network,cancel QM request(appKey: %s)"
            com.tencent.qimei.p093n.C16806a.m59995b(r1, r2, r0)
            r11.m60044a()
            return
        L31:
            java.lang.String r0 = r11.f93624j
            com.tencent.qimei.f.c r0 = com.tencent.qimei.p085f.C16779c.m59933a(r0)
            boolean r0 = r0.m59934b()
            if (r0 != 0) goto L4e
            com.tencent.qimei.c.c r0 = new com.tencent.qimei.c.c
            r0.<init>(r11)
            r11.f93619e = r0
            r0.m59893a()
            r11.m60047b()
            r11.m60044a()
            return
        L4e:
            long r2 = android.os.SystemClock.uptimeMillis()
            r11.f93621g = r2
            com.tencent.qimei.r.c r4 = com.tencent.qimei.p097r.C16824c.f93600a
            java.lang.String r0 = com.tencent.qimei.p092m.C16800a.m59972a()
            java.lang.String r2 = r11.f93624j
            com.tencent.qimei.aa.a r2 = com.tencent.qimei.p079aa.C16734a.m59797a(r2)
            com.tencent.qimei.ac.b r2 = r2.m59798a()
            java.lang.String r2 = r2.f93385l
            boolean r3 = r11.f93623i
            java.lang.String r5 = ""
            if (r3 == 0) goto L7b
            java.lang.String r3 = r11.f93624j
            com.tencent.qimei.aa.a r3 = com.tencent.qimei.p079aa.C16734a.m59797a(r3)
            com.tencent.qimei.ac.b r3 = r3.m59798a()
            java.lang.String r3 = r3.m59834p()
            goto L7c
        L7b:
            r3 = r5
        L7c:
            java.lang.String r2 = r4.m60034a(r2, r3)
            java.lang.String r3 = r11.f93624j
            com.tencent.qimei.r.b r3 = com.tencent.qimei.p097r.C16823b.m60028a(r3)
            com.tencent.qimei.sdk.Qimei r7 = r3.f93594c
            long r8 = java.lang.System.currentTimeMillis()
            r11.f93617c = r8
            java.lang.String r3 = r11.f93624j
            int r3 = com.tencent.qimei.p081b.C16762a.m59883c(r3)
            if (r3 == 0) goto Lae
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: org.json.JSONException -> Laa
            r6.<init>()     // Catch: org.json.JSONException -> Laa
            java.lang.String r8 = "delay"
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: org.json.JSONException -> Laa
            r6.put(r8, r3)     // Catch: org.json.JSONException -> Laa
            java.lang.String r3 = r6.toString()     // Catch: org.json.JSONException -> Laa
            r10 = r3
            goto Laf
        Laa:
            r3 = move-exception
            r3.printStackTrace()
        Lae:
            r10 = r5
        Laf:
            java.lang.String r6 = r11.f93624j
            long r8 = r11.f93617c
            r5 = r0
            java.lang.String r3 = r4.m60035a(r5, r6, r7, r8, r10)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto Le7
            java.lang.String r0 = r11.f93624j
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r2 = "The parameter to get the QM request is wrong, cancel the QM request(appKey: %s)"
            com.tencent.qimei.p093n.C16806a.m59995b(r1, r2, r0)
            java.lang.String r0 = r11.f93624j
            com.tencent.qimei.q.i r1 = com.tencent.qimei.p096q.C16821i.m60021b()
            com.tencent.qimei.q.c r2 = r1.m60022a()
            java.util.Map<java.lang.String, java.lang.Object> r3 = r2.f93568a
            java.lang.String r4 = "p1"
            java.lang.String r5 = "1007"
            r3.put(r4, r5)
            java.lang.String r3 = "v2"
            java.lang.String r4 = "/report"
            r1.m60025b(r2, r3, r0, r4)
            r11.m60044a()
            return
        Le7:
            long r4 = android.os.SystemClock.uptimeMillis()
            r11.f93622h = r4
            com.tencent.qimei.r.e r4 = new com.tencent.qimei.r.e
            r4.<init>(r11, r0)
            com.tencent.qimei.p081b.C16762a.m59874a(r2, r3, r4)
            java.lang.String r11 = r11.f93624j
            java.lang.Object[] r11 = new java.lang.Object[]{r11, r2}
            java.lang.String r0 = "start request QM(appKey: %s), url: %s"
            com.tencent.qimei.p093n.C16806a.m59995b(r1, r0, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p097r.RunnableC16827f.run():void");
    }

    /* renamed from: a */
    public void m60044a() {
        this.f93620f.set(false);
    }

    /* renamed from: a */
    public final void m60045a(String str, int i, String str2) {
        a aVar = this.f93625k;
        if (aVar.f93628c.get() > aVar.f93626a - 1) {
            String str3 = this.f93624j;
            String str4 = str.equals("451") ? "1001" : "1000";
            C16821i m60021b = C16821i.m60021b();
            C16815c m60022a = m60021b.m60022a();
            m60022a.f93568a.put("p1", str4);
            m60022a.f93568a.put("p2", "error code: " + i + ", msg:" + str2);
            m60021b.m60025b(m60022a, WechatLoadWebWidget.ACTION_SYMBOL_REPLACE, str3, "/report");
        }
        m60049d();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0137  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m60046a(java.lang.String r20, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p097r.RunnableC16827f.m60046a(java.lang.String, java.lang.String):void");
    }

    /* renamed from: b */
    public void m60047b() {
        C16823b.m60028a(this.f93624j).m60030a(C16762a.m59890g(this.f93624j));
        Qimei qimei = C16823b.m60028a(this.f93624j).f93594c;
        if (qimei == null || qimei.isEmpty()) {
            return;
        }
        Process.myPid();
        m60048c();
    }
}
