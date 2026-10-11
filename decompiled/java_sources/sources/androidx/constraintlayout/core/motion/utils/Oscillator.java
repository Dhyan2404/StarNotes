package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes3.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;

    /* renamed from: c */
    public double[] f2992c;

    /* renamed from: d */
    public String f2993d;

    /* renamed from: e */
    public MonotonicCurveFit f2994e;

    /* renamed from: f */
    public int f2995f;

    /* renamed from: a */
    public float[] f2990a = new float[0];

    /* renamed from: b */
    public double[] f2991b = new double[0];

    /* renamed from: g */
    public double f2996g = 6.283185307179586d;

    /* renamed from: h */
    public boolean f2997h = false;

    /* renamed from: a */
    public double m1514a(double d) {
        if (d <= 0.0d) {
            d = 1.0E-5d;
        } else if (d >= 1.0d) {
            d = 0.999999d;
        }
        int binarySearch = Arrays.binarySearch(this.f2991b, d);
        if (binarySearch > 0 || binarySearch == 0) {
            return 0.0d;
        }
        int i = (-binarySearch) - 1;
        float[] fArr = this.f2990a;
        float f = fArr[i];
        int i2 = i - 1;
        float f2 = fArr[i2];
        double d2 = f - f2;
        double[] dArr = this.f2991b;
        double d3 = dArr[i];
        double d4 = dArr[i2];
        double d5 = d2 / (d3 - d4);
        return (f2 - (d5 * d4)) + (d * d5);
    }

    public void addPoint(double d, float f) {
        int length = this.f2990a.length + 1;
        int binarySearch = Arrays.binarySearch(this.f2991b, d);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        this.f2991b = Arrays.copyOf(this.f2991b, length);
        this.f2990a = Arrays.copyOf(this.f2990a, length);
        this.f2992c = new double[length];
        double[] dArr = this.f2991b;
        System.arraycopy(dArr, binarySearch, dArr, binarySearch + 1, (length - binarySearch) - 1);
        this.f2991b[binarySearch] = d;
        this.f2990a[binarySearch] = f;
        this.f2997h = false;
    }

    /* renamed from: b */
    public double m1515b(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.f2991b, d);
        if (binarySearch > 0) {
            return 1.0d;
        }
        if (binarySearch == 0) {
            return 0.0d;
        }
        int i = (-binarySearch) - 1;
        float[] fArr = this.f2990a;
        float f = fArr[i];
        int i2 = i - 1;
        float f2 = fArr[i2];
        double d2 = f - f2;
        double[] dArr = this.f2991b;
        double d3 = dArr[i];
        double d4 = dArr[i2];
        double d5 = d2 / (d3 - d4);
        return this.f2992c[i2] + ((f2 - (d5 * d4)) * (d - d4)) + ((d5 * ((d * d) - (d4 * d4))) / 2.0d);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0010. Please report as an issue. */
    public double getSlope(double d, double d2, double d3) {
        double d4;
        double signum;
        double m1515b = d2 + m1515b(d);
        double m1514a = m1514a(d) + d3;
        switch (this.f2995f) {
            case 1:
                return 0.0d;
            case 2:
                d4 = m1514a * 4.0d;
                signum = Math.signum((((m1515b * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                return d4 * signum;
            case 3:
                return m1514a * 2.0d;
            case 4:
                return (-m1514a) * 2.0d;
            case 5:
                double d5 = this.f2996g;
                return (-d5) * m1514a * Math.sin(d5 * m1515b);
            case 6:
                d4 = m1514a * 4.0d;
                signum = (((m1515b * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                return d4 * signum;
            case 7:
                return this.f2994e.getSlope(m1515b % 1.0d, 0);
            default:
                double d6 = this.f2996g;
                d4 = m1514a * d6;
                signum = Math.cos(d6 * m1515b);
                return d4 * signum;
        }
    }

    public double getValue(double d, double d2) {
        double m1515b = m1515b(d) + d2;
        switch (this.f2995f) {
            case 1:
                return Math.signum(0.5d - (m1515b % 1.0d));
            case 2:
                return 1.0d - Math.abs((((m1515b * 4.0d) + 1.0d) % 4.0d) - 2.0d);
            case 3:
                return (((m1515b * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                return 1.0d - (((m1515b * 2.0d) + 1.0d) % 2.0d);
            case 5:
                return Math.cos(this.f2996g * (d2 + m1515b));
            case 6:
                double abs = 1.0d - Math.abs(((m1515b * 4.0d) % 4.0d) - 2.0d);
                return 1.0d - (abs * abs);
            case 7:
                return this.f2994e.getPos(m1515b % 1.0d, 0);
            default:
                return Math.sin(this.f2996g * m1515b);
        }
    }

    public void normalize() {
        double d = 0.0d;
        int i = 0;
        while (true) {
            if (i >= this.f2990a.length) {
                break;
            }
            d += r7[i];
            i++;
        }
        double d2 = 0.0d;
        int i2 = 1;
        while (true) {
            float[] fArr = this.f2990a;
            if (i2 >= fArr.length) {
                break;
            }
            int i3 = i2 - 1;
            float f = (fArr[i3] + fArr[i2]) / 2.0f;
            double[] dArr = this.f2991b;
            d2 += (dArr[i2] - dArr[i3]) * f;
            i2++;
        }
        int i4 = 0;
        while (true) {
            float[] fArr2 = this.f2990a;
            if (i4 >= fArr2.length) {
                break;
            }
            fArr2[i4] = (float) (fArr2[i4] * (d / d2));
            i4++;
        }
        this.f2992c[0] = 0.0d;
        int i5 = 1;
        while (true) {
            float[] fArr3 = this.f2990a;
            if (i5 >= fArr3.length) {
                this.f2997h = true;
                return;
            }
            int i6 = i5 - 1;
            float f2 = (fArr3[i6] + fArr3[i5]) / 2.0f;
            double[] dArr2 = this.f2991b;
            double d3 = dArr2[i5] - dArr2[i6];
            double[] dArr3 = this.f2992c;
            dArr3[i5] = dArr3[i6] + (d3 * f2);
            i5++;
        }
    }

    public void setType(int i, String str) {
        this.f2995f = i;
        this.f2993d = str;
        if (str != null) {
            this.f2994e = MonotonicCurveFit.buildWave(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.f2991b) + " period=" + Arrays.toString(this.f2990a);
    }
}
