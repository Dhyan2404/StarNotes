package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import com.sunia.HTREnginev2.znf;

@Beta
@znf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class PairedStatsAccumulator {

    /* renamed from: a */
    public final StatsAccumulator f34987a = new StatsAccumulator();

    /* renamed from: b */
    public final StatsAccumulator f34988b = new StatsAccumulator();

    /* renamed from: c */
    public double f34989c = 0.0d;

    /* renamed from: a */
    public static double m27275a(double d) {
        return Doubles.constrainToRange(d, -1.0d, 1.0d);
    }

    public void add(double d, double d2) {
        this.f34987a.add(d);
        if (!Doubles.isFinite(d) || !Doubles.isFinite(d2)) {
            this.f34989c = Double.NaN;
        } else if (this.f34987a.count() > 1) {
            this.f34989c += (d - this.f34987a.mean()) * (d2 - this.f34988b.mean());
        }
        this.f34988b.add(d2);
    }

    public void addAll(PairedStats pairedStats) {
        if (pairedStats.count() == 0) {
            return;
        }
        this.f34987a.addAll(pairedStats.xStats());
        if (this.f34988b.count() == 0) {
            this.f34989c = pairedStats.sumOfProductsOfDeltas();
        } else {
            this.f34989c += pairedStats.sumOfProductsOfDeltas() + ((pairedStats.xStats().mean() - this.f34987a.mean()) * (pairedStats.yStats().mean() - this.f34988b.mean()) * pairedStats.count());
        }
        this.f34988b.addAll(pairedStats.yStats());
    }

    /* renamed from: b */
    public final double m27276b(double d) {
        if (d > 0.0d) {
            return d;
        }
        return Double.MIN_VALUE;
    }

    public long count() {
        return this.f34987a.count();
    }

    public final LinearTransformation leastSquaresFit() {
        Preconditions.checkState(count() > 1);
        if (Double.isNaN(this.f34989c)) {
            return LinearTransformation.forNaN();
        }
        double m27307c = this.f34987a.m27307c();
        if (m27307c > 0.0d) {
            return this.f34988b.m27307c() > 0.0d ? LinearTransformation.mapping(this.f34987a.mean(), this.f34988b.mean()).withSlope(this.f34989c / m27307c) : LinearTransformation.horizontal(this.f34988b.mean());
        }
        Preconditions.checkState(this.f34988b.m27307c() > 0.0d);
        return LinearTransformation.vertical(this.f34987a.mean());
    }

    public final double pearsonsCorrelationCoefficient() {
        Preconditions.checkState(count() > 1);
        if (Double.isNaN(this.f34989c)) {
            return Double.NaN;
        }
        double m27307c = this.f34987a.m27307c();
        double m27307c2 = this.f34988b.m27307c();
        Preconditions.checkState(m27307c > 0.0d);
        Preconditions.checkState(m27307c2 > 0.0d);
        return m27275a(this.f34989c / Math.sqrt(m27276b(m27307c * m27307c2)));
    }

    public double populationCovariance() {
        Preconditions.checkState(count() != 0);
        return this.f34989c / count();
    }

    public final double sampleCovariance() {
        Preconditions.checkState(count() > 1);
        return this.f34989c / (count() - 1);
    }

    public PairedStats snapshot() {
        return new PairedStats(this.f34987a.snapshot(), this.f34988b.snapshot(), this.f34989c);
    }

    public Stats xStats() {
        return this.f34987a.snapshot();
    }

    public Stats yStats() {
        return this.f34988b.snapshot();
    }
}
