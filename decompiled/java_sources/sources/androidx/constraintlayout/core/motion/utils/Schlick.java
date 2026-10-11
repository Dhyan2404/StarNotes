package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes3.dex */
public class Schlick extends Easing {

    /* renamed from: r */
    public static final boolean f2998r = false;

    /* renamed from: o */
    public double f2999o;

    /* renamed from: p */
    public double f3000p;

    /* renamed from: q */
    public double f3001q;

    public Schlick(String str) {
        this.f2913a = str;
        int indexOf = str.indexOf(40);
        int indexOf2 = str.indexOf(44, indexOf);
        this.f2999o = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
        int i = indexOf2 + 1;
        this.f3000p = Double.parseDouble(str.substring(i, str.indexOf(44, i)).trim());
    }

    /* renamed from: a */
    public final double m1516a(double d) {
        double d2 = this.f3000p;
        if (d < d2) {
            double d3 = this.f2999o;
            return ((d3 * d2) * d2) / ((((d2 - d) * d3) + d) * ((d3 * (d2 - d)) + d));
        }
        double d4 = this.f2999o;
        return (((d2 - 1.0d) * d4) * (d2 - 1.0d)) / (((((-d4) * (d2 - d)) - d) + 1.0d) * ((((-d4) * (d2 - d)) - d) + 1.0d));
    }

    /* renamed from: b */
    public final double m1517b(double d) {
        double d2 = this.f3000p;
        return d < d2 ? (d2 * d) / (d + (this.f2999o * (d2 - d))) : ((1.0d - d2) * (d - 1.0d)) / ((1.0d - d) - (this.f2999o * (d2 - d)));
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d) {
        return m1517b(d);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d) {
        return m1516a(d);
    }
}
