package net.p110sf.saxon.tree.tiny;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes11.dex */
public class Statistics {

    /* renamed from: a */
    public int f102548a;

    /* renamed from: b */
    public double f102549b;

    /* renamed from: c */
    public double f102550c;

    /* renamed from: d */
    public double f102551d;

    /* renamed from: e */
    public double f102552e;

    public Statistics() {
        this.f102548a = 5;
        this.f102549b = 4000.0d;
        this.f102550c = 100.0d;
        this.f102551d = 20.0d;
        this.f102552e = 4000.0d;
    }

    public double getAverageAttributes() {
        return this.f102550c;
    }

    public double getAverageCharacters() {
        return this.f102552e;
    }

    public double getAverageNamespaces() {
        return this.f102551d;
    }

    public double getAverageNodes() {
        return this.f102549b;
    }

    public String toString() {
        return this.f102548a + MotionUtils.f31761c + this.f102549b + "," + this.f102550c + "," + this.f102551d + "," + this.f102552e + MotionUtils.f31762d;
    }

    public synchronized void updateStatistics(int i, int i2, int i3, int i4) {
        int i5 = this.f102548a;
        if (i5 < 1000000) {
            int i6 = i5 + 1;
            this.f102548a = i6;
            double d = i5;
            double d2 = i6;
            double d3 = ((this.f102549b * d) + i) / d2;
            this.f102549b = d3;
            if (d3 < 10.0d) {
                this.f102549b = 10.0d;
            }
            double d4 = ((this.f102550c * d) + i2) / d2;
            this.f102550c = d4;
            if (d4 < 10.0d) {
                this.f102550c = 10.0d;
            }
            double d5 = ((this.f102551d * d) + i3) / d2;
            this.f102551d = d5;
            if (d5 < 5.0d) {
                this.f102551d = 5.0d;
            }
            double d6 = ((this.f102552e * d) + i4) / d2;
            this.f102552e = d6;
            if (d6 < 100.0d) {
                this.f102552e = 100.0d;
            }
        }
    }

    public Statistics(int i, int i2, int i3, int i4) {
        this.f102548a = 5;
        this.f102549b = i;
        this.f102550c = i2;
        this.f102551d = i3;
        this.f102552e = i4;
    }
}
