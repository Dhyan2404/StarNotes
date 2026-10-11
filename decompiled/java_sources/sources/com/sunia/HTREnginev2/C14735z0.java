package com.sunia.HTREnginev2;

import com.fasterxml.jackson.core.base.ParserBase;
import java.util.regex.Pattern;

/* renamed from: com.sunia.HTREnginev2.z0 */
/* loaded from: classes10.dex */
public class C14735z0 {

    /* renamed from: c */
    public static final Pattern f91235c = Pattern.compile("[0-9]+(\\.[0-9]*)?|\\.[0-9]+");

    /* renamed from: d */
    public static final C14735z0 f91236d = m58560a(0);

    /* renamed from: e */
    public static final C14735z0 f91237e = m58560a(1);

    /* renamed from: f */
    public static final C14735z0 f91238f = m58560a(10);

    /* renamed from: g */
    public static final C14735z0 f91239g = m58560a(100);

    /* renamed from: h */
    public static final C14735z0 f91240h = m58559a(Double.NaN);

    /* renamed from: a */
    public final double f91241a;

    /* renamed from: b */
    public final C13466a1 f91242b;

    public C14735z0(double d, C13466a1 c13466a1) {
        this.f91241a = d;
        this.f91242b = c13466a1;
    }

    /* renamed from: a */
    public C14735z0 m58570a(C14735z0 c14735z0) {
        C13466a1 m52928a;
        if (m58579f() && c14735z0.m58579f() && (m52928a = C13466a1.m52928a((m58573c() * c14735z0.m58571b()) + (m58571b() * c14735z0.m58573c()), m58571b() * c14735z0.m58571b())) != null) {
            return m58562a(m52928a);
        }
        return m58559a(m58582i() + c14735z0.m58582i());
    }

    /* renamed from: b */
    public long m58571b() {
        return this.f91242b.m52930a();
    }

    /* renamed from: c */
    public long m58573c() {
        return this.f91242b.m52931b();
    }

    /* renamed from: d */
    public boolean m58576d() {
        return m58579f() && m58571b() == 1;
    }

    /* renamed from: e */
    public boolean m58578e() {
        return Double.isNaN(this.f91241a);
    }

    /* renamed from: f */
    public boolean m58579f() {
        return this.f91242b != null;
    }

    /* renamed from: g */
    public C14735z0 m58580g() {
        C13466a1 m52928a;
        return (!m58579f() || (m52928a = C13466a1.m52928a(-m58573c(), m58571b())) == null) ? m58559a(-m58582i()) : m58562a(m52928a);
    }

    /* renamed from: h */
    public int m58581h() {
        if (m58579f()) {
            return Long.signum(m58573c());
        }
        double d = this.f91241a;
        if (d > 0.0d) {
            return 1;
        }
        return d < 0.0d ? -1 : 0;
    }

    /* renamed from: i */
    public double m58582i() {
        return this.f91241a;
    }

    /* renamed from: j */
    public C13466a1 m58583j() {
        return this.f91242b;
    }

    /* renamed from: b */
    public C14735z0 m58572b(C14735z0 c14735z0) {
        C13466a1 m52928a;
        if (m58579f() && c14735z0.m58579f() && (m52928a = C13466a1.m52928a(m58573c() * c14735z0.m58571b(), m58571b() * c14735z0.m58573c())) != null) {
            return m58562a(m52928a);
        }
        return m58559a(m58582i() / c14735z0.m58582i());
    }

    /* renamed from: c */
    public C14735z0 m58574c(C14735z0 c14735z0) {
        C13466a1 m52928a;
        if (m58579f() && c14735z0.m58579f() && (m52928a = C13466a1.m52928a(m58573c() * c14735z0.m58573c(), m58571b() * c14735z0.m58571b())) != null) {
            return m58562a(m52928a);
        }
        return m58559a(m58582i() * c14735z0.m58582i());
    }

    /* renamed from: d */
    public C14735z0 m58575d(C14735z0 c14735z0) {
        Long m58565b;
        C13466a1 m52928a;
        if (m58579f() && c14735z0.m58579f()) {
            if (c14735z0.m58573c() < 0) {
                return f91237e.m58572b(m58575d(c14735z0.m58580g()));
            }
            Long m58565b2 = m58565b(m58573c(), c14735z0.m58583j());
            if (m58565b2 != null && (m58565b = m58565b(m58571b(), c14735z0.m58583j())) != null && (m52928a = C13466a1.m52928a(m58565b2.longValue(), m58565b.longValue())) != null) {
                return m58562a(m52928a);
            }
        }
        return m58559a(Math.pow(m58582i(), c14735z0.m58582i()));
    }

    /* renamed from: e */
    public C14735z0 m58577e(C14735z0 c14735z0) {
        C13466a1 m52928a;
        if (m58579f() && c14735z0.m58579f() && (m52928a = C13466a1.m52928a((m58573c() * c14735z0.m58571b()) - (m58571b() * c14735z0.m58573c()), m58571b() * c14735z0.m58571b())) != null) {
            return m58562a(m52928a);
        }
        return m58559a(m58582i() - c14735z0.m58582i());
    }

    /* renamed from: a */
    public C14735z0 m58569a() {
        return m58581h() < 0 ? m58580g() : this;
    }

    /* renamed from: a */
    public static boolean m58564a(C14735z0 c14735z0, C14735z0 c14735z02) {
        if (!c14735z0.m58579f()) {
            return !c14735z02.m58579f() && Math.abs(c14735z0.m58582i() - c14735z02.m58582i()) < Math.max(Math.abs(c14735z0.m58582i()), Math.abs(c14735z02.m58582i())) * 1.0E-15d;
        }
        if (c14735z02.m58579f()) {
            return c14735z0.m58573c() == c14735z02.m58573c() && c14735z0.m58571b() == c14735z02.m58571b();
        }
        return false;
    }

    /* renamed from: b */
    public static Long m58565b(long j, C13466a1 c13466a1) {
        Long m58567d;
        Long m58568e = m58568e(j, c13466a1.m52930a());
        if (m58568e == null || (m58567d = m58567d(m58568e.longValue(), c13466a1.m52931b())) == null) {
            return null;
        }
        return m58567d;
    }

    /* renamed from: c */
    public static long m58566c(long j, long j2) {
        if (j < ParserBase.f21225q || j > 2147483647L || j2 < ParserBase.f21225q || j2 > 2147483647L) {
            throw new ArithmeticException("long overflow");
        }
        return j * j2;
    }

    /* renamed from: e */
    public static Long m58568e(long j, long j2) {
        if (j >= 0) {
            long pow = (long) Math.pow(j, 1.0d / j2);
            if (m58567d(pow, j2).longValue() == j) {
                return Long.valueOf(pow);
            }
            return null;
        }
        if (j2 % 2 == 0) {
            return null;
        }
        long j3 = -j;
        if (m58568e(j3, j2) != null) {
            return Long.valueOf(-m58568e(j3, j2).longValue());
        }
        return null;
    }

    /* renamed from: d */
    public static Long m58567d(long j, long j2) {
        long j3 = 1;
        while (j2 != 0) {
            try {
                if (j2 % 2 == 1) {
                    j3 = m58566c(j3, j);
                }
                j2 /= 2;
                j = m58566c(j, j);
            } catch (ArithmeticException unused) {
                return null;
            }
        }
        return Long.valueOf(j3);
    }

    /* renamed from: a */
    public static C14735z0 m58559a(double d) {
        return new C14735z0(d, null);
    }

    /* renamed from: a */
    public static C14735z0 m58560a(int i) {
        return new C14735z0(i, C13466a1.m52928a(i, 1L));
    }

    /* renamed from: a */
    public static C14735z0 m58562a(C13466a1 c13466a1) {
        return new C14735z0(c13466a1.m52931b() / c13466a1.m52930a(), c13466a1);
    }

    /* renamed from: a */
    public static C14735z0 m58561a(long j, long j2) {
        return m58562a(C13466a1.m52928a(j, j2));
    }

    /* renamed from: a */
    public static C14735z0 m58563a(String str) {
        if (!f91235c.matcher(str).matches()) {
            return f91240h;
        }
        C14735z0 c14735z0 = f91236d;
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '.') {
                C14735z0 c14735z02 = f91237e;
                while (true) {
                    i++;
                    if (i < str.length()) {
                        char charAt2 = str.charAt(i);
                        c14735z02 = c14735z02.m58572b(f91238f);
                        c14735z0 = c14735z0.m58570a(c14735z02.m58574c(m58560a(Character.digit(charAt2, 10))));
                    }
                }
            } else {
                c14735z0 = c14735z0.m58574c(f91238f).m58570a(m58560a(Character.digit(charAt, 10)));
            }
            i++;
        }
        return c14735z0;
    }
}
