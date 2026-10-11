package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public abstract class KeyCycleOscillator {

    /* renamed from: g */
    public static final String f2931g = "KeyCycleOscillator";

    /* renamed from: a */
    public CurveFit f2932a;

    /* renamed from: b */
    public C0399c f2933b;

    /* renamed from: c */
    public String f2934c;

    /* renamed from: d */
    public int f2935d = 0;

    /* renamed from: e */
    public String f2936e = null;
    public int mVariesBy = 0;

    /* renamed from: f */
    public ArrayList<C0402f> f2937f = new ArrayList<>();

    /* loaded from: classes3.dex */
    public static class PathRotateSet extends KeyCycleOscillator {

        /* renamed from: h */
        public String f2938h;

        /* renamed from: i */
        public int f2939i;

        public PathRotateSet(String str) {
            this.f2938h = str;
            this.f2939i = TypedValues.CycleType.getId(str);
        }

        public void setPathRotate(MotionWidget motionWidget, float f, double d, double d2) {
            motionWidget.setRotationZ(get(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f) {
            motionWidget.setValue(this.f2939i, get(f));
        }
    }

    /* renamed from: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$a */
    /* loaded from: classes3.dex */
    public class C0397a implements Comparator<C0402f> {
        public C0397a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C0402f c0402f, C0402f c0402f2) {
            return Integer.compare(c0402f.f2961a, c0402f2.f2961a);
        }
    }

    /* renamed from: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$b */
    /* loaded from: classes3.dex */
    public static class C0398b extends KeyCycleOscillator {

        /* renamed from: h */
        public String f2941h;

        /* renamed from: i */
        public int f2942i;

        public C0398b(String str) {
            this.f2941h = str;
            this.f2942i = TypedValues.CycleType.getId(str);
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f) {
            motionWidget.setValue(this.f2942i, get(f));
        }
    }

    /* renamed from: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$c */
    /* loaded from: classes3.dex */
    public static class C0399c {

        /* renamed from: q */
        public static final int f2943q = -1;

        /* renamed from: r */
        public static final String f2944r = "CycleOscillator";

        /* renamed from: a */
        public final int f2945a;

        /* renamed from: b */
        public Oscillator f2946b;

        /* renamed from: c */
        public final int f2947c;

        /* renamed from: d */
        public final int f2948d;

        /* renamed from: e */
        public final int f2949e;

        /* renamed from: f */
        public float[] f2950f;

        /* renamed from: g */
        public double[] f2951g;

        /* renamed from: h */
        public float[] f2952h;

        /* renamed from: i */
        public float[] f2953i;

        /* renamed from: j */
        public float[] f2954j;

        /* renamed from: k */
        public float[] f2955k;

        /* renamed from: l */
        public int f2956l;

        /* renamed from: m */
        public CurveFit f2957m;

        /* renamed from: n */
        public double[] f2958n;

        /* renamed from: o */
        public double[] f2959o;

        /* renamed from: p */
        public float f2960p;

        public C0399c(int i, String str, int i2, int i3) {
            Oscillator oscillator = new Oscillator();
            this.f2946b = oscillator;
            this.f2947c = 0;
            this.f2948d = 1;
            this.f2949e = 2;
            this.f2956l = i;
            this.f2945a = i2;
            oscillator.setType(i, str);
            this.f2950f = new float[i3];
            this.f2951g = new double[i3];
            this.f2952h = new float[i3];
            this.f2953i = new float[i3];
            this.f2954j = new float[i3];
            this.f2955k = new float[i3];
        }

        /* renamed from: a */
        public double m1492a() {
            return this.f2958n[1];
        }

        /* renamed from: b */
        public double m1493b(float f) {
            CurveFit curveFit = this.f2957m;
            if (curveFit != null) {
                double d = f;
                curveFit.getSlope(d, this.f2959o);
                this.f2957m.getPos(d, this.f2958n);
            } else {
                double[] dArr = this.f2959o;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d2 = f;
            double value = this.f2946b.getValue(d2, this.f2958n[1]);
            double slope = this.f2946b.getSlope(d2, this.f2958n[1], this.f2959o[1]);
            double[] dArr2 = this.f2959o;
            return dArr2[0] + (value * dArr2[2]) + (slope * this.f2958n[2]);
        }

        /* renamed from: c */
        public double m1494c(float f) {
            CurveFit curveFit = this.f2957m;
            if (curveFit != null) {
                curveFit.getPos(f, this.f2958n);
            } else {
                double[] dArr = this.f2958n;
                dArr[0] = this.f2953i[0];
                dArr[1] = this.f2954j[0];
                dArr[2] = this.f2950f[0];
            }
            double[] dArr2 = this.f2958n;
            return dArr2[0] + (this.f2946b.getValue(f, dArr2[1]) * this.f2958n[2]);
        }

        /* renamed from: d */
        public void m1495d(int i, int i2, float f, float f2, float f3, float f4) {
            this.f2951g[i] = i2 / 100.0d;
            this.f2952h[i] = f;
            this.f2953i[i] = f2;
            this.f2954j[i] = f3;
            this.f2950f[i] = f4;
        }

        /* renamed from: e */
        public void m1496e(float f) {
            this.f2960p = f;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.f2951g.length, 3);
            float[] fArr = this.f2950f;
            this.f2958n = new double[fArr.length + 2];
            this.f2959o = new double[fArr.length + 2];
            if (this.f2951g[0] > 0.0d) {
                this.f2946b.addPoint(0.0d, this.f2952h[0]);
            }
            double[] dArr2 = this.f2951g;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f2946b.addPoint(1.0d, this.f2952h[length]);
            }
            for (int i = 0; i < dArr.length; i++) {
                double[] dArr3 = dArr[i];
                dArr3[0] = this.f2953i[i];
                dArr3[1] = this.f2954j[i];
                dArr3[2] = this.f2950f[i];
                this.f2946b.addPoint(this.f2951g[i], this.f2952h[i]);
            }
            this.f2946b.normalize();
            double[] dArr4 = this.f2951g;
            if (dArr4.length > 1) {
                this.f2957m = CurveFit.get(0, dArr4, dArr);
            } else {
                this.f2957m = null;
            }
        }
    }

    /* renamed from: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$d */
    /* loaded from: classes3.dex */
    public static class C0400d {
        /* renamed from: a */
        public static int m1497a(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                if (iArr[i] <= i3) {
                    m1499c(iArr, fArr, i4, i);
                    i4++;
                }
                i++;
            }
            m1499c(iArr, fArr, i4, i2);
            return i4;
        }

        /* renamed from: b */
        public static void m1498b(int[] iArr, float[] fArr, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                i3 = i4 - 1;
                int i6 = iArr2[i3];
                if (i5 < i6) {
                    int m1497a = m1497a(iArr, fArr, i5, i6);
                    int i7 = i3 + 1;
                    iArr2[i3] = m1497a - 1;
                    int i8 = i7 + 1;
                    iArr2[i7] = i5;
                    int i9 = i8 + 1;
                    iArr2[i8] = i6;
                    i3 = i9 + 1;
                    iArr2[i9] = m1497a + 1;
                }
            }
        }

        /* renamed from: c */
        public static void m1499c(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    /* renamed from: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$e */
    /* loaded from: classes3.dex */
    public static class C0401e {
        /* renamed from: a */
        public static int m1500a(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                if (iArr[i] <= i3) {
                    m1502c(iArr, fArr, fArr2, i4, i);
                    i4++;
                }
                i++;
            }
            m1502c(iArr, fArr, fArr2, i4, i2);
            return i4;
        }

        /* renamed from: b */
        public static void m1501b(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                i3 = i4 - 1;
                int i6 = iArr2[i3];
                if (i5 < i6) {
                    int m1500a = m1500a(iArr, fArr, fArr2, i5, i6);
                    int i7 = i3 + 1;
                    iArr2[i3] = m1500a - 1;
                    int i8 = i7 + 1;
                    iArr2[i7] = i5;
                    int i9 = i8 + 1;
                    iArr2[i8] = i6;
                    i3 = i9 + 1;
                    iArr2[i9] = m1500a + 1;
                }
            }
        }

        /* renamed from: c */
        public static void m1502c(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
            float f2 = fArr2[i];
            fArr2[i] = fArr2[i2];
            fArr2[i2] = f2;
        }
    }

    /* renamed from: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$f */
    /* loaded from: classes3.dex */
    public static class C0402f {

        /* renamed from: a */
        public int f2961a;

        /* renamed from: b */
        public float f2962b;

        /* renamed from: c */
        public float f2963c;

        /* renamed from: d */
        public float f2964d;

        /* renamed from: e */
        public float f2965e;

        public C0402f(int i, float f, float f2, float f3, float f4) {
            this.f2961a = i;
            this.f2962b = f4;
            this.f2963c = f2;
            this.f2964d = f;
            this.f2965e = f3;
        }
    }

    public static KeyCycleOscillator makeWidgetCycle(String str) {
        return str.equals("pathRotate") ? new PathRotateSet(str) : new C0398b(str);
    }

    public float get(float f) {
        return (float) this.f2933b.m1494c(f);
    }

    public CurveFit getCurveFit() {
        return this.f2932a;
    }

    public float getSlope(float f) {
        return (float) this.f2933b.m1493b(f);
    }

    public void setCustom(Object obj) {
    }

    public void setPoint(int i, int i2, String str, int i3, float f, float f2, float f3, float f4, Object obj) {
        this.f2937f.add(new C0402f(i, f, f2, f3, f4));
        if (i3 != -1) {
            this.mVariesBy = i3;
        }
        this.f2935d = i2;
        setCustom(obj);
        this.f2936e = str;
    }

    public void setProperty(MotionWidget motionWidget, float f) {
    }

    public void setType(String str) {
        this.f2934c = str;
    }

    public void setup(float f) {
        int size = this.f2937f.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f2937f, new C0397a());
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
        this.f2933b = new C0399c(this.f2935d, this.f2936e, this.mVariesBy, size);
        Iterator<C0402f> it2 = this.f2937f.iterator();
        int i = 0;
        while (it2.hasNext()) {
            C0402f next = it2.next();
            float f2 = next.f2964d;
            dArr[i] = f2 * 0.01d;
            double[] dArr3 = dArr2[i];
            float f3 = next.f2962b;
            dArr3[0] = f3;
            float f4 = next.f2963c;
            dArr3[1] = f4;
            float f5 = next.f2965e;
            dArr3[2] = f5;
            this.f2933b.m1495d(i, next.f2961a, f2, f4, f5, f3);
            i++;
        }
        this.f2933b.m1496e(f);
        this.f2932a = CurveFit.get(0, dArr, dArr2);
    }

    public String toString() {
        String str = this.f2934c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<C0402f> it2 = this.f2937f.iterator();
        while (it2.hasNext()) {
            str = str + IteratorUtils.f104923a + it2.next().f2961a + " , " + decimalFormat.format(r2.f2962b) + "] ";
        }
        return str;
    }

    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }

    public void setPoint(int i, int i2, String str, int i3, float f, float f2, float f3, float f4) {
        this.f2937f.add(new C0402f(i, f, f2, f3, f4));
        if (i3 != -1) {
            this.mVariesBy = i3;
        }
        this.f2935d = i2;
        this.f2936e = str;
    }
}
