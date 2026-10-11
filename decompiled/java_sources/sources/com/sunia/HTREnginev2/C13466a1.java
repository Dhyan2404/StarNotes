package com.sunia.HTREnginev2;

import com.fasterxml.jackson.core.base.ParserBase;

/* renamed from: com.sunia.HTREnginev2.a1 */
/* loaded from: classes10.dex */
public class C13466a1 {

    /* renamed from: a */
    public final long f64192a;

    /* renamed from: b */
    public final long f64193b;

    public C13466a1(long j, long j2) {
        this.f64192a = j;
        this.f64193b = j2;
    }

    /* renamed from: c */
    public static long m52929c(long j, long j2) {
        do {
            long j3 = j % j2;
            j = j2;
            j2 = j3;
        } while (j2 != 0);
        return j;
    }

    /* renamed from: a */
    public long m52930a() {
        return this.f64193b;
    }

    /* renamed from: b */
    public long m52931b() {
        return this.f64192a;
    }

    /* renamed from: a */
    public static C13466a1 m52928a(long j, long j2) {
        if (j2 < 0) {
            j = -j;
            j2 = -j2;
        }
        if (j > 2147483647L || j < ParserBase.f21225q || j2 < 1 || j2 > 2147483647L) {
            return null;
        }
        long m52929c = m52929c(Math.abs(j), j2);
        return new C13466a1(j / m52929c, j2 / m52929c);
    }
}
