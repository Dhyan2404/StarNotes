package com.sunia.HTREnginev2;

import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class gng {

    /* renamed from: g */
    public static final int f71202g = 15;

    /* renamed from: h */
    @VisibleForTesting
    public static final long f71203h = 1000000;

    /* renamed from: c */
    public boolean f71206c;

    /* renamed from: d */
    public boolean f71207d;

    /* renamed from: f */
    public int f71209f;

    /* renamed from: a */
    public C13779a f71204a = new C13779a();

    /* renamed from: b */
    public C13779a f71205b = new C13779a();

    /* renamed from: e */
    public long f71208e = C4649C.TIME_UNSET;

    /* renamed from: com.sunia.HTREnginev2.gng$a */
    /* loaded from: classes5.dex */
    public static final class C13779a {

        /* renamed from: a */
        public long f71210a;

        /* renamed from: b */
        public long f71211b;

        /* renamed from: c */
        public long f71212c;

        /* renamed from: d */
        public long f71213d;

        /* renamed from: e */
        public long f71214e;

        /* renamed from: f */
        public long f71215f;

        /* renamed from: g */
        public final boolean[] f71216g = new boolean[15];

        /* renamed from: h */
        public int f71217h;

        /* renamed from: c */
        public static int m54308c(long j) {
            return (int) (j % 15);
        }

        /* renamed from: a */
        public long m54309a() {
            long j = this.f71214e;
            if (j == 0) {
                return 0L;
            }
            return this.f71215f / j;
        }

        /* renamed from: b */
        public long m54310b() {
            return this.f71215f;
        }

        /* renamed from: d */
        public boolean m54311d() {
            long j = this.f71213d;
            if (j == 0) {
                return false;
            }
            return this.f71216g[m54308c(j - 1)];
        }

        /* renamed from: e */
        public boolean m54312e() {
            return this.f71213d > 15 && this.f71217h == 0;
        }

        /* renamed from: f */
        public void m54313f(long j) {
            long j2 = this.f71213d;
            if (j2 == 0) {
                this.f71210a = j;
            } else if (j2 == 1) {
                long j3 = j - this.f71210a;
                this.f71211b = j3;
                this.f71215f = j3;
                this.f71214e = 1L;
            } else {
                long j4 = j - this.f71212c;
                int m54308c = m54308c(j2);
                if (Math.abs(j4 - this.f71211b) <= 1000000) {
                    this.f71214e++;
                    this.f71215f += j4;
                    boolean[] zArr = this.f71216g;
                    if (zArr[m54308c]) {
                        zArr[m54308c] = false;
                        this.f71217h--;
                    }
                } else {
                    boolean[] zArr2 = this.f71216g;
                    if (!zArr2[m54308c]) {
                        zArr2[m54308c] = true;
                        this.f71217h++;
                    }
                }
            }
            this.f71213d++;
            this.f71212c = j;
        }

        /* renamed from: g */
        public void m54314g() {
            this.f71213d = 0L;
            this.f71214e = 0L;
            this.f71215f = 0L;
            this.f71217h = 0;
            Arrays.fill(this.f71216g, false);
        }
    }

    /* renamed from: a */
    public long m54301a() {
        return m54305e() ? this.f71204a.m54309a() : C4649C.TIME_UNSET;
    }

    /* renamed from: b */
    public float m54302b() {
        if (m54305e()) {
            return (float) (1.0E9d / this.f71204a.m54309a());
        }
        return -1.0f;
    }

    /* renamed from: c */
    public int m54303c() {
        return this.f71209f;
    }

    /* renamed from: d */
    public long m54304d() {
        return m54305e() ? this.f71204a.m54310b() : C4649C.TIME_UNSET;
    }

    /* renamed from: e */
    public boolean m54305e() {
        return this.f71204a.m54312e();
    }

    /* renamed from: f */
    public void m54306f(long j) {
        this.f71204a.m54313f(j);
        if (this.f71204a.m54312e() && !this.f71207d) {
            this.f71206c = false;
        } else if (this.f71208e != C4649C.TIME_UNSET) {
            if (!this.f71206c || this.f71205b.m54311d()) {
                this.f71205b.m54314g();
                this.f71205b.m54313f(this.f71208e);
            }
            this.f71206c = true;
            this.f71205b.m54313f(j);
        }
        if (this.f71206c && this.f71205b.m54312e()) {
            C13779a c13779a = this.f71204a;
            this.f71204a = this.f71205b;
            this.f71205b = c13779a;
            this.f71206c = false;
            this.f71207d = false;
        }
        this.f71208e = j;
        this.f71209f = this.f71204a.m54312e() ? 0 : this.f71209f + 1;
    }

    /* renamed from: g */
    public void m54307g() {
        this.f71204a.m54314g();
        this.f71205b.m54314g();
        this.f71206c = false;
        this.f71208e = C4649C.TIME_UNSET;
        this.f71209f = 0;
    }
}
