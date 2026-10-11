package com.tencent.qimei.p100t;

import com.tencent.qimei.sdk.Qimei;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.t.a */
/* loaded from: classes10.dex */
public class C16837a {

    /* renamed from: a */
    public static final String f93658a = "a";

    /* renamed from: b */
    public static final Map<String, C16837a> f93659b = new ConcurrentHashMap();

    /* renamed from: c */
    public final String f93660c;

    /* renamed from: d */
    public boolean f93661d = false;

    /* renamed from: e */
    public boolean f93662e = false;

    /* renamed from: f */
    public int f93663f = 0;

    /* renamed from: g */
    public Qimei f93664g;

    /* renamed from: h */
    public boolean f93665h;

    /* renamed from: i */
    public boolean f93666i;

    public C16837a(String str) {
        this.f93660c = str;
    }

    /* renamed from: a */
    public static synchronized C16837a m60105a(String str) {
        C16837a c16837a;
        synchronized (C16837a.class) {
            Map<String, C16837a> map = f93659b;
            c16837a = map.get(str);
            if (c16837a == null) {
                c16837a = new C16837a(str);
                map.put(str, c16837a);
            }
        }
        return c16837a;
    }

    /* renamed from: a */
    public final String m60106a(boolean z) {
        return z ? "1" : "0";
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00f2, code lost:
    
        if (r10.f93662e != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00f7, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00f4, code lost:
    
        if (r0 > 0) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d4 A[Catch: all -> 0x00fa, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x0051, B:8:0x0057, B:9:0x00ea, B:11:0x00f0, B:19:0x005b, B:22:0x0065, B:24:0x0092, B:25:0x0098, B:32:0x00d4, B:34:0x00da, B:35:0x00dd, B:36:0x00e8, B:38:0x00ae, B:39:0x00b5, B:52:0x000c, B:55:0x002c, B:57:0x003c, B:59:0x004f, B:63:0x0018, B:65:0x001c, B:68:0x0028), top: B:2:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x003c A[Catch: all -> 0x00fa, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x0051, B:8:0x0057, B:9:0x00ea, B:11:0x00f0, B:19:0x005b, B:22:0x0065, B:24:0x0092, B:25:0x0098, B:32:0x00d4, B:34:0x00da, B:35:0x00dd, B:36:0x00e8, B:38:0x00ae, B:39:0x00b5, B:52:0x000c, B:55:0x002c, B:57:0x003c, B:59:0x004f, B:63:0x0018, B:65:0x001c, B:68:0x0028), top: B:2:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0048  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean m60107a() {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p100t.C16837a.m60107a():boolean");
    }
}
