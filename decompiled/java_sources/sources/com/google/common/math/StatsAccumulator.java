package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import com.sunia.HTREnginev2.iym;
import com.sunia.HTREnginev2.jym;
import com.sunia.HTREnginev2.kym;
import com.sunia.HTREnginev2.oym;
import com.sunia.HTREnginev2.pym;
import com.sunia.HTREnginev2.sff;
import com.sunia.HTREnginev2.znf;
import java.util.Iterator;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;

@Beta
@znf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class StatsAccumulator {

    /* renamed from: a */
    public long f34995a = 0;

    /* renamed from: b */
    public double f34996b = 0.0d;

    /* renamed from: c */
    public double f34997c = 0.0d;

    /* renamed from: d */
    public double f34998d = Double.NaN;

    /* renamed from: e */
    public double f34999e = Double.NaN;

    /* renamed from: a */
    public static double m27305a(double d, double d2) {
        if (Doubles.isFinite(d)) {
            return d2;
        }
        if (Doubles.isFinite(d2) || d == d2) {
            return d;
        }
        return Double.NaN;
    }

    public void add(double d) {
        long j = this.f34995a;
        if (j == 0) {
            this.f34995a = 1L;
            this.f34996b = d;
            this.f34998d = d;
            this.f34999e = d;
            if (Doubles.isFinite(d)) {
                return;
            }
            this.f34997c = Double.NaN;
            return;
        }
        this.f34995a = j + 1;
        if (Doubles.isFinite(d) && Doubles.isFinite(this.f34996b)) {
            double d2 = this.f34996b;
            double d3 = d - d2;
            double d4 = d2 + (d3 / this.f34995a);
            this.f34996b = d4;
            this.f34997c += d3 * (d - d4);
        } else {
            this.f34996b = m27305a(this.f34996b, d);
            this.f34997c = Double.NaN;
        }
        this.f34998d = Math.min(this.f34998d, d);
        this.f34999e = Math.max(this.f34999e, d);
    }

    public void addAll(Iterable<? extends Number> iterable) {
        Iterator<? extends Number> it2 = iterable.iterator();
        while (it2.hasNext()) {
            add(it2.next().doubleValue());
        }
    }

    /* renamed from: b */
    public final void m27306b(long j, double d, double d2, double d3, double d4) {
        long j2 = this.f34995a;
        if (j2 == 0) {
            this.f34995a = j;
            this.f34996b = d;
            this.f34997c = d2;
            this.f34998d = d3;
            this.f34999e = d4;
            return;
        }
        this.f34995a = j2 + j;
        if (Doubles.isFinite(this.f34996b) && Doubles.isFinite(d)) {
            double d5 = this.f34996b;
            double d6 = d - d5;
            double d7 = j;
            double d8 = d5 + ((d6 * d7) / this.f34995a);
            this.f34996b = d8;
            this.f34997c += d2 + (d6 * (d - d8) * d7);
        } else {
            this.f34996b = m27305a(this.f34996b, d);
            this.f34997c = Double.NaN;
        }
        this.f34998d = Math.min(this.f34998d, d3);
        this.f34999e = Math.max(this.f34999e, d4);
    }

    /* renamed from: c */
    public double m27307c() {
        return this.f34997c;
    }

    public long count() {
        return this.f34995a;
    }

    public double max() {
        Preconditions.checkState(this.f34995a != 0);
        return this.f34999e;
    }

    public double mean() {
        Preconditions.checkState(this.f34995a != 0);
        return this.f34996b;
    }

    public double min() {
        Preconditions.checkState(this.f34995a != 0);
        return this.f34998d;
    }

    public final double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public final double populationVariance() {
        Preconditions.checkState(this.f34995a != 0);
        if (Double.isNaN(this.f34997c)) {
            return Double.NaN;
        }
        if (this.f34995a == 1) {
            return 0.0d;
        }
        return sff.m57156b(this.f34997c) / this.f34995a;
    }

    public final double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public final double sampleVariance() {
        Preconditions.checkState(this.f34995a > 1);
        if (Double.isNaN(this.f34997c)) {
            return Double.NaN;
        }
        return sff.m57156b(this.f34997c) / (this.f34995a - 1);
    }

    public Stats snapshot() {
        return new Stats(this.f34995a, this.f34996b, this.f34997c, this.f34998d, this.f34999e);
    }

    public final double sum() {
        return this.f34996b * this.f34995a;
    }

    public void addAll(Iterator<? extends Number> it2) {
        while (it2.hasNext()) {
            add(it2.next().doubleValue());
        }
    }

    public void addAll(double... dArr) {
        for (double d : dArr) {
            add(d);
        }
    }

    public void addAll(int... iArr) {
        for (int i : iArr) {
            add(i);
        }
    }

    public void addAll(long... jArr) {
        for (long j : jArr) {
            add(j);
        }
    }

    public void addAll(DoubleStream doubleStream) {
        addAll((StatsAccumulator) doubleStream.collect(new iym(), new oym(), new kym()));
    }

    public void addAll(IntStream intStream) {
        addAll((StatsAccumulator) intStream.collect(new iym(), new pym(), new kym()));
    }

    public void addAll(LongStream longStream) {
        addAll((StatsAccumulator) longStream.collect(new iym(), new jym(), new kym()));
    }

    public void addAll(Stats stats) {
        if (stats.count() == 0) {
            return;
        }
        m27306b(stats.count(), stats.mean(), stats.sumOfSquaresOfDeltas(), stats.min(), stats.max());
    }

    public void addAll(StatsAccumulator statsAccumulator) {
        if (statsAccumulator.count() == 0) {
            return;
        }
        m27306b(statsAccumulator.count(), statsAccumulator.mean(), statsAccumulator.m27307c(), statsAccumulator.min(), statsAccumulator.max());
    }
}
