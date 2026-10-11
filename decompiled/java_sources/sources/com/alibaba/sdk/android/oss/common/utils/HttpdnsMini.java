package com.alibaba.sdk.android.oss.common.utils;

import com.alibaba.sdk.android.oss.common.OSSLog;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class HttpdnsMini {

    /* renamed from: c */
    public static final String f12957c = "HttpDnsMini";

    /* renamed from: d */
    public static final String f12958d = "203.107.1.1";

    /* renamed from: e */
    public static final String f12959e = "181345";

    /* renamed from: f */
    public static final int f12960f = 5;

    /* renamed from: g */
    public static final int f12961g = 10;

    /* renamed from: h */
    public static final int f12962h = 100;

    /* renamed from: i */
    public static final int f12963i = 30;

    /* renamed from: j */
    public static HttpdnsMini f12964j;

    /* renamed from: a */
    public ConcurrentMap<String, C1758a> f12965a = new ConcurrentHashMap();

    /* renamed from: b */
    public ExecutorService f12966b = Executors.newFixedThreadPool(5);

    /* renamed from: com.alibaba.sdk.android.oss.common.utils.HttpdnsMini$a */
    /* loaded from: classes3.dex */
    public class C1758a {

        /* renamed from: a */
        public String f12967a;

        /* renamed from: b */
        public String f12968b;

        /* renamed from: c */
        public long f12969c;

        /* renamed from: d */
        public long f12970d;

        public C1758a() {
        }

        /* renamed from: a */
        public String m7660a() {
            return this.f12967a;
        }

        /* renamed from: b */
        public String m7661b() {
            return this.f12968b;
        }

        /* renamed from: c */
        public long m7662c() {
            return this.f12970d;
        }

        /* renamed from: d */
        public long m7663d() {
            return this.f12969c;
        }

        /* renamed from: e */
        public boolean m7664e() {
            return m7662c() + this.f12969c < System.currentTimeMillis() / 1000;
        }

        /* renamed from: f */
        public boolean m7665f() {
            return (m7662c() + this.f12969c) + 600 > System.currentTimeMillis() / 1000;
        }

        /* renamed from: g */
        public void m7666g(String str) {
            this.f12967a = str;
        }

        /* renamed from: h */
        public void m7667h(String str) {
            this.f12968b = str;
        }

        /* renamed from: i */
        public void m7668i(long j) {
            this.f12970d = j;
        }

        /* renamed from: j */
        public void m7669j(long j) {
            this.f12969c = j;
        }

        public String toString() {
            return "[hostName=" + m7660a() + ", ip=" + this.f12968b + ", ttl=" + m7663d() + ", queryTime=" + this.f12970d + IteratorUtils.f104924b;
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.common.utils.HttpdnsMini$b */
    /* loaded from: classes3.dex */
    public class CallableC1759b implements Callable<String> {

        /* renamed from: e */
        public String f12972e;

        /* renamed from: f */
        public boolean f12973f = false;

        public CallableC1759b(String str) {
            this.f12972e = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x015b  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0163 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0168 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String call() {
            /*
                Method dump skipped, instructions count: 369
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.oss.common.utils.HttpdnsMini.CallableC1759b.call():java.lang.String");
        }
    }

    public static HttpdnsMini getInstance() {
        if (f12964j == null) {
            synchronized (HttpdnsMini.class) {
                if (f12964j == null) {
                    f12964j = new HttpdnsMini();
                }
            }
        }
        return f12964j;
    }

    public String getIpByHostAsync(String str) {
        C1758a c1758a = this.f12965a.get(str);
        if (c1758a == null || c1758a.m7664e()) {
            OSSLog.logDebug("[httpdnsmini] - refresh host: " + str);
            this.f12966b.submit(new CallableC1759b(str));
        }
        if (c1758a == null || !c1758a.m7665f()) {
            return null;
        }
        return c1758a.m7661b();
    }
}
