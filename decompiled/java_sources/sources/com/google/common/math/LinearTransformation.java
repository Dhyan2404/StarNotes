package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.sunia.HTREnginev2.sff;
import com.sunia.HTREnginev2.znf;
import javax.annotation.CheckForNull;

@Beta
@znf
@GwtIncompatible
/* loaded from: classes6.dex */
public abstract class LinearTransformation {

    /* loaded from: classes6.dex */
    public static final class LinearTransformationBuilder {

        /* renamed from: a */
        public final double f34967a;

        /* renamed from: b */
        public final double f34968b;

        public LinearTransformation and(double d, double d2) {
            Preconditions.checkArgument(sff.m57158d(d) && sff.m57158d(d2));
            double d3 = this.f34967a;
            if (d != d3) {
                return withSlope((d2 - this.f34968b) / (d - d3));
            }
            Preconditions.checkArgument(d2 != this.f34968b);
            return new C6247d(this.f34967a);
        }

        public LinearTransformation withSlope(double d) {
            Preconditions.checkArgument(!Double.isNaN(d));
            return sff.m57158d(d) ? new C6246c(d, this.f34968b - (this.f34967a * d)) : new C6247d(this.f34967a);
        }

        public LinearTransformationBuilder(double d, double d2) {
            this.f34967a = d;
            this.f34968b = d2;
        }
    }

    /* renamed from: com.google.common.math.LinearTransformation$b */
    /* loaded from: classes6.dex */
    public static final class C6245b extends LinearTransformation {

        /* renamed from: a */
        public static final C6245b f34969a = new C6245b();

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            return this;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            return Double.NaN;
        }

        public String toString() {
            return "NaN";
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            return Double.NaN;
        }
    }

    public static LinearTransformation forNaN() {
        return C6245b.f34969a;
    }

    public static LinearTransformation horizontal(double d) {
        Preconditions.checkArgument(sff.m57158d(d));
        return new C6246c(0.0d, d);
    }

    public static LinearTransformationBuilder mapping(double d, double d2) {
        Preconditions.checkArgument(sff.m57158d(d) && sff.m57158d(d2));
        return new LinearTransformationBuilder(d, d2);
    }

    public static LinearTransformation vertical(double d) {
        Preconditions.checkArgument(sff.m57158d(d));
        return new C6247d(d);
    }

    public abstract LinearTransformation inverse();

    public abstract boolean isHorizontal();

    public abstract boolean isVertical();

    public abstract double slope();

    public abstract double transform(double d);

    /* renamed from: com.google.common.math.LinearTransformation$d */
    /* loaded from: classes6.dex */
    public static final class C6247d extends LinearTransformation {

        /* renamed from: a */
        public final double f34973a;

        /* renamed from: b */
        @CheckForNull
        @LazyInit
        public LinearTransformation f34974b;

        public C6247d(double d) {
            this.f34973a = d;
            this.f34974b = null;
        }

        /* renamed from: a */
        public final LinearTransformation m27270a() {
            return new C6246c(0.0d, this.f34973a, this);
        }

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            LinearTransformation linearTransformation = this.f34974b;
            if (linearTransformation != null) {
                return linearTransformation;
            }
            LinearTransformation m27270a = m27270a();
            this.f34974b = m27270a;
            return m27270a;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return true;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            throw new IllegalStateException();
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f34973a));
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            throw new IllegalStateException();
        }

        public C6247d(double d, LinearTransformation linearTransformation) {
            this.f34973a = d;
            this.f34974b = linearTransformation;
        }
    }

    /* renamed from: com.google.common.math.LinearTransformation$c */
    /* loaded from: classes6.dex */
    public static final class C6246c extends LinearTransformation {

        /* renamed from: a */
        public final double f34970a;

        /* renamed from: b */
        public final double f34971b;

        /* renamed from: c */
        @CheckForNull
        @LazyInit
        public LinearTransformation f34972c;

        public C6246c(double d, double d2) {
            this.f34970a = d;
            this.f34971b = d2;
            this.f34972c = null;
        }

        /* renamed from: a */
        public final LinearTransformation m27269a() {
            double d = this.f34970a;
            return d != 0.0d ? new C6246c(1.0d / d, (this.f34971b * (-1.0d)) / d, this) : new C6247d(this.f34971b, this);
        }

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            LinearTransformation linearTransformation = this.f34972c;
            if (linearTransformation != null) {
                return linearTransformation;
            }
            LinearTransformation m27269a = m27269a();
            this.f34972c = m27269a;
            return m27269a;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return this.f34970a == 0.0d;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            return this.f34970a;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f34970a), Double.valueOf(this.f34971b));
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            return (d * this.f34970a) + this.f34971b;
        }

        public C6246c(double d, double d2, LinearTransformation linearTransformation) {
            this.f34970a = d;
            this.f34971b = d2;
            this.f34972c = linearTransformation;
        }
    }
}
