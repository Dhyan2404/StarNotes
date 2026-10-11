package com.tencent.qimei.p085f;

import com.tencent.qimei.p078a.C16733a;
import com.tencent.qimei.p092m.C16800a;
import com.tencent.qimei.p093n.C16806a;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.f.c */
/* loaded from: classes10.dex */
public class C16779c implements InterfaceC16777a {

    /* renamed from: a */
    public static final String f93482a = "com.tencent.qimei.f.c";

    /* renamed from: b */
    public static final Map<String, C16779c> f93483b = new ConcurrentHashMap();

    /* renamed from: c */
    public final String f93484c;

    /* renamed from: d */
    public final String f93485d;

    /* renamed from: f */
    public volatile Boolean f93487f;

    /* renamed from: g */
    public volatile boolean f93488g = false;

    /* renamed from: e */
    public final C16778b f93486e = new C16778b();

    public C16779c(String str) {
        this.f93484c = str;
        StringBuilder m59796a = C16733a.m59796a("pl_");
        m59796a.append(C16800a.m59977b(f93482a + str));
        this.f93485d = m59796a.toString();
    }

    /* renamed from: a */
    public static synchronized C16779c m59933a(String str) {
        C16779c c16779c;
        synchronized (C16779c.class) {
            Map<String, C16779c> map = f93483b;
            c16779c = map.get(str);
            if (c16779c == null) {
                c16779c = new C16779c(str);
                map.put(str, c16779c);
            }
        }
        return c16779c;
    }

    /* renamed from: b */
    public synchronized boolean m59934b() {
        if (this.f93487f == null) {
            boolean z = true;
            boolean m59932a = this.f93486e.m59932a(this.f93485d, this, 1);
            C16806a.m59995b("multiproc", "%s cur right:%b,%b", this.f93484c, Boolean.valueOf(m59932a), Boolean.valueOf(!this.f93488g));
            if (!m59932a || this.f93488g) {
                z = false;
            }
            this.f93487f = Boolean.valueOf(z);
        }
        return this.f93487f.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00aa, code lost:
    
        if (r1.trim().equals(r0) != false) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a2  */
    @Override // com.tencent.qimei.p085f.InterfaceC16777a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo59930a() {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p085f.C16779c.mo59930a():void");
    }
}
