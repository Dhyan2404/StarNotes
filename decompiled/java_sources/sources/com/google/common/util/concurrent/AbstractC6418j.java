package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.math.LongMath;
import com.google.common.util.concurrent.RateLimiter;
import com.sunia.HTREnginev2.pnf;
import java.util.concurrent.TimeUnit;

@GwtIncompatible
@pnf
/* renamed from: com.google.common.util.concurrent.j */
/* loaded from: classes6.dex */
public abstract class AbstractC6418j extends RateLimiter {

    /* renamed from: c */
    public double f35488c;

    /* renamed from: d */
    public double f35489d;

    /* renamed from: e */
    public double f35490e;

    /* renamed from: f */
    public long f35491f;

    /* renamed from: com.google.common.util.concurrent.j$b */
    /* loaded from: classes6.dex */
    public static final class b extends AbstractC6418j {

        /* renamed from: g */
        public final double f35492g;

        public b(RateLimiter.AbstractC6387a abstractC6387a, double d) {
            super(abstractC6387a);
            this.f35492g = d;
        }

        @Override // com.google.common.util.concurrent.AbstractC6418j
        /* renamed from: l */
        public double mo27881l() {
            return this.f35490e;
        }

        @Override // com.google.common.util.concurrent.AbstractC6418j
        /* renamed from: m */
        public void mo27882m(double d, double d2) {
            double d3 = this.f35489d;
            double d4 = this.f35492g * d;
            this.f35489d = d4;
            if (d3 == Double.POSITIVE_INFINITY) {
                this.f35488c = d4;
            } else {
                this.f35488c = d3 != 0.0d ? (this.f35488c * d4) / d3 : 0.0d;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractC6418j
        /* renamed from: o */
        public long mo27884o(double d, double d2) {
            return 0L;
        }
    }

    /* renamed from: com.google.common.util.concurrent.j$c */
    /* loaded from: classes6.dex */
    public static final class c extends AbstractC6418j {

        /* renamed from: g */
        public final long f35493g;

        /* renamed from: h */
        public double f35494h;

        /* renamed from: i */
        public double f35495i;

        /* renamed from: j */
        public double f35496j;

        public c(RateLimiter.AbstractC6387a abstractC6387a, long j, TimeUnit timeUnit, double d) {
            super(abstractC6387a);
            this.f35493g = timeUnit.toMicros(j);
            this.f35496j = d;
        }

        @Override // com.google.common.util.concurrent.AbstractC6418j
        /* renamed from: l */
        public double mo27881l() {
            return this.f35493g / this.f35489d;
        }

        @Override // com.google.common.util.concurrent.AbstractC6418j
        /* renamed from: m */
        public void mo27882m(double d, double d2) {
            double d3 = this.f35489d;
            double d4 = this.f35496j * d2;
            long j = this.f35493g;
            double d5 = (j * 0.5d) / d2;
            this.f35495i = d5;
            double d6 = ((j * 2.0d) / (d2 + d4)) + d5;
            this.f35489d = d6;
            this.f35494h = (d4 - d2) / (d6 - d5);
            if (d3 == Double.POSITIVE_INFINITY) {
                this.f35488c = 0.0d;
                return;
            }
            if (d3 != 0.0d) {
                d6 = (this.f35488c * d6) / d3;
            }
            this.f35488c = d6;
        }

        @Override // com.google.common.util.concurrent.AbstractC6418j
        /* renamed from: o */
        public long mo27884o(double d, double d2) {
            long j;
            double d3 = d - this.f35495i;
            if (d3 > 0.0d) {
                double min = Math.min(d3, d2);
                j = (long) (((m27885p(d3) + m27885p(d3 - min)) * min) / 2.0d);
                d2 -= min;
            } else {
                j = 0;
            }
            return j + ((long) (this.f35490e * d2));
        }

        /* renamed from: p */
        public final double m27885p(double d) {
            return this.f35490e + (d * this.f35494h);
        }
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    /* renamed from: e */
    public final double mo27773e() {
        return TimeUnit.SECONDS.toMicros(1L) / this.f35490e;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    /* renamed from: f */
    public final void mo27774f(double d, long j) {
        m27883n(j);
        double micros = TimeUnit.SECONDS.toMicros(1L) / d;
        this.f35490e = micros;
        mo27882m(d, micros);
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    /* renamed from: h */
    public final long mo27776h(long j) {
        return this.f35491f;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    /* renamed from: k */
    public final long mo27779k(int i, long j) {
        m27883n(j);
        long j2 = this.f35491f;
        double d = i;
        double min = Math.min(d, this.f35488c);
        this.f35491f = LongMath.saturatedAdd(this.f35491f, mo27884o(this.f35488c, min) + ((long) ((d - min) * this.f35490e)));
        this.f35488c -= min;
        return j2;
    }

    /* renamed from: l */
    public abstract double mo27881l();

    /* renamed from: m */
    public abstract void mo27882m(double d, double d2);

    /* renamed from: n */
    public void m27883n(long j) {
        if (j > this.f35491f) {
            this.f35488c = Math.min(this.f35489d, this.f35488c + ((j - r0) / mo27881l()));
            this.f35491f = j;
        }
    }

    /* renamed from: o */
    public abstract long mo27884o(double d, double d2);

    public AbstractC6418j(RateLimiter.AbstractC6387a abstractC6387a) {
        super(abstractC6387a);
        this.f35491f = 0L;
    }
}
