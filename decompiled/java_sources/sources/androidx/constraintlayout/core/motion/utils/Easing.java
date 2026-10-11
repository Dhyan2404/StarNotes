package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes3.dex */
public class Easing {

    /* renamed from: c */
    public static final String f2901c = "cubic(0.4, 0.0, 0.2, 1)";

    /* renamed from: d */
    public static final String f2902d = "cubic(0.4, 0.05, 0.8, 0.7)";

    /* renamed from: e */
    public static final String f2903e = "cubic(0.0, 0.0, 0.2, 0.95)";

    /* renamed from: f */
    public static final String f2904f = "cubic(1, 1, 0, 0)";

    /* renamed from: g */
    public static final String f2905g = "cubic(0.36, 0, 0.66, -0.56)";

    /* renamed from: h */
    public static final String f2906h = "cubic(0.34, 1.56, 0.64, 1)";

    /* renamed from: k */
    public static final String f2909k = "standard";

    /* renamed from: m */
    public static final String f2911m = "anticipate";

    /* renamed from: n */
    public static final String f2912n = "overshoot";

    /* renamed from: a */
    public String f2913a = "identity";

    /* renamed from: b */
    public static Easing f2900b = new Easing();

    /* renamed from: j */
    public static final String f2908j = "accelerate";

    /* renamed from: i */
    public static final String f2907i = "decelerate";

    /* renamed from: l */
    public static final String f2910l = "linear";
    public static String[] NAMED_EASING = {"standard", f2908j, f2907i, f2910l};

    public static Easing getInterpolator(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new C0396a(str);
        }
        if (str.startsWith("spline")) {
            return new StepCurve(str);
        }
        if (str.startsWith("Schlick")) {
            return new Schlick(str);
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals(f2908j)) {
                    c = 0;
                    break;
                }
                break;
            case -1263948740:
                if (str.equals(f2907i)) {
                    c = 1;
                    break;
                }
                break;
            case -1197605014:
                if (str.equals(f2911m)) {
                    c = 2;
                    break;
                }
                break;
            case -1102672091:
                if (str.equals(f2910l)) {
                    c = 3;
                    break;
                }
                break;
            case -749065269:
                if (str.equals(f2912n)) {
                    c = 4;
                    break;
                }
                break;
            case 1312628413:
                if (str.equals("standard")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new C0396a(f2902d);
            case 1:
                return new C0396a(f2903e);
            case 2:
                return new C0396a(f2905g);
            case 3:
                return new C0396a(f2904f);
            case 4:
                return new C0396a(f2906h);
            case 5:
                return new C0396a(f2901c);
            default:
                System.err.println("transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(NAMED_EASING));
                return f2900b;
        }
    }

    public double get(double d) {
        return d;
    }

    public double getDiff(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.f2913a;
    }

    /* renamed from: androidx.constraintlayout.core.motion.utils.Easing$a */
    /* loaded from: classes3.dex */
    public static class C0396a extends Easing {

        /* renamed from: s */
        public static double f2914s = 0.01d;

        /* renamed from: t */
        public static double f2915t = 1.0E-4d;

        /* renamed from: o */
        public double f2916o;

        /* renamed from: p */
        public double f2917p;

        /* renamed from: q */
        public double f2918q;

        /* renamed from: r */
        public double f2919r;

        public C0396a(String str) {
            this.f2913a = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f2916o = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i);
            this.f2917p = Double.parseDouble(str.substring(i, indexOf3).trim());
            int i2 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i2);
            this.f2918q = Double.parseDouble(str.substring(i2, indexOf4).trim());
            int i3 = indexOf4 + 1;
            this.f2919r = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        /* renamed from: a */
        public final double m1485a(double d) {
            double d2 = 1.0d - d;
            double d3 = this.f2916o;
            double d4 = this.f2918q;
            return (d2 * 3.0d * d2 * d3) + (d2 * 6.0d * d * (d4 - d3)) + (3.0d * d * d * (1.0d - d4));
        }

        /* renamed from: b */
        public final double m1486b(double d) {
            double d2 = 1.0d - d;
            double d3 = this.f2917p;
            double d4 = this.f2919r;
            return (d2 * 3.0d * d2 * d3) + (d2 * 6.0d * d * (d4 - d3)) + (3.0d * d * d * (1.0d - d4));
        }

        /* renamed from: c */
        public final double m1487c(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f2916o * d2 * d3 * d) + (this.f2918q * d3 * d * d) + (d * d * d);
        }

        /* renamed from: d */
        public final double m1488d(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f2917p * d2 * d3 * d) + (this.f2919r * d3 * d * d) + (d * d * d);
        }

        /* renamed from: e */
        public void m1489e(double d, double d2, double d3, double d4) {
            this.f2916o = d;
            this.f2917p = d2;
            this.f2918q = d3;
            this.f2919r = d4;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double get(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > f2914s) {
                d2 *= 0.5d;
                d3 = m1487c(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double m1487c = m1487c(d4);
            double d5 = d3 + d2;
            double m1487c2 = m1487c(d5);
            double m1488d = m1488d(d4);
            return (((m1488d(d5) - m1488d) * (d - m1487c)) / (m1487c2 - m1487c)) + m1488d;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double getDiff(double d) {
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > f2915t) {
                d2 *= 0.5d;
                d3 = m1487c(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double d5 = d3 + d2;
            return (m1488d(d5) - m1488d(d4)) / (m1487c(d5) - m1487c(d4));
        }

        public C0396a(double d, double d2, double d3, double d4) {
            m1489e(d, d2, d3, d4);
        }
    }
}
