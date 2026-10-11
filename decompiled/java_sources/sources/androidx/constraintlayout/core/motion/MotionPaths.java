package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;

    /* renamed from: J */
    public static final int f2740J = 3;

    /* renamed from: O */
    public static final int f2741O = 4;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;

    /* renamed from: Q */
    public static final int f2742Q = 5;
    public static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";

    /* renamed from: Z */
    public static String[] f2743Z = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: x */
    public static final int f2744x = 0;

    /* renamed from: y */
    public static final int f2745y = 1;

    /* renamed from: z */
    public static final int f2746z = 2;

    /* renamed from: e */
    public Easing f2747e;

    /* renamed from: f */
    public int f2748f;

    /* renamed from: g */
    public float f2749g;

    /* renamed from: h */
    public float f2750h;

    /* renamed from: i */
    public float f2751i;

    /* renamed from: j */
    public float f2752j;

    /* renamed from: k */
    public float f2753k;

    /* renamed from: l */
    public float f2754l;

    /* renamed from: m */
    public float f2755m;

    /* renamed from: n */
    public float f2756n;

    /* renamed from: o */
    public int f2757o;

    /* renamed from: p */
    public int f2758p;

    /* renamed from: q */
    public float f2759q;

    /* renamed from: r */
    public Motion f2760r;

    /* renamed from: s */
    public HashMap<String, CustomVariable> f2761s;

    /* renamed from: t */
    public int f2762t;

    /* renamed from: u */
    public int f2763u;

    /* renamed from: v */
    public double[] f2764v;

    /* renamed from: w */
    public double[] f2765w;

    public MotionPaths() {
        this.f2748f = 0;
        this.f2755m = Float.NaN;
        this.f2756n = Float.NaN;
        this.f2757o = -1;
        this.f2758p = -1;
        this.f2759q = Float.NaN;
        this.f2760r = null;
        this.f2761s = new HashMap<>();
        this.f2762t = 0;
        this.f2764v = new double[18];
        this.f2765w = new double[18];
    }

    /* renamed from: s */
    public static final float m1438s(float f, float f2, float f3, float f4, float f5, float f6) {
        return (((f5 - f3) * f2) - ((f6 - f4) * f)) + f3;
    }

    /* renamed from: t */
    public static final float m1439t(float f, float f2, float f3, float f4, float f5, float f6) {
        return ((f5 - f3) * f) + ((f6 - f4) * f2) + f4;
    }

    /* renamed from: a */
    public final boolean m1440a(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.f2747e = Easing.getInterpolator(motionWidget.f2771b.mTransitionEasing);
        MotionWidget.Motion motion = motionWidget.f2771b;
        this.f2757o = motion.mPathMotionArc;
        this.f2758p = motion.mAnimateRelativeTo;
        this.f2755m = motion.mPathRotate;
        this.f2748f = motion.mDrawPath;
        this.f2763u = motion.mAnimateCircleAngleTo;
        this.f2756n = motionWidget.f2772c.mProgress;
        this.f2759q = 0.0f;
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.f2761s.put(str, customAttribute);
            }
        }
    }

    /* renamed from: b */
    public void m1441b(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z) {
        boolean m1440a = m1440a(this.f2751i, motionPaths.f2751i);
        boolean m1440a2 = m1440a(this.f2752j, motionPaths.f2752j);
        zArr[0] = zArr[0] | m1440a(this.f2750h, motionPaths.f2750h);
        boolean z2 = m1440a | m1440a2 | z;
        zArr[1] = zArr[1] | z2;
        zArr[2] = z2 | zArr[2];
        zArr[3] = zArr[3] | m1440a(this.f2753k, motionPaths.f2753k);
        zArr[4] = m1440a(this.f2754l, motionPaths.f2754l) | zArr[4];
    }

    /* renamed from: c */
    public void m1442c(double[] dArr, int[] iArr) {
        float[] fArr = {this.f2750h, this.f2751i, this.f2752j, this.f2753k, this.f2754l, this.f2755m};
        int i = 0;
        for (int i2 : iArr) {
            if (i2 < 6) {
                dArr[i] = fArr[r2];
                i++;
            }
        }
    }

    public void configureRelativeTo(Motion motion) {
        motion.m1428k(this.f2756n);
    }

    /* renamed from: d */
    public void m1443d(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f2753k;
        float f2 = this.f2754l;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f3 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 3) {
                f = f3;
            } else if (i3 == 4) {
                f2 = f3;
            }
        }
        fArr[i] = f;
        fArr[i + 1] = f2;
    }

    /* renamed from: e */
    public void m1444e(double d, int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f2751i;
        float f2 = this.f2752j;
        float f3 = this.f2753k;
        float f4 = this.f2754l;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        Motion motion = this.f2760r;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d, fArr2, new float[2]);
            float f6 = fArr2[0];
            float f7 = fArr2[1];
            double d2 = f;
            double d3 = f2;
            float sin = (float) ((f6 + (Math.sin(d3) * d2)) - (f3 / 2.0f));
            f2 = (float) ((f7 - (d2 * Math.cos(d3))) - (f4 / 2.0f));
            f = sin;
        }
        fArr[i] = f + (f3 / 2.0f) + 0.0f;
        fArr[i + 1] = f2 + (f4 / 2.0f) + 0.0f;
    }

    /* renamed from: f */
    public void m1445f(double d, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f;
        float f2;
        float f3 = this.f2751i;
        float f4 = this.f2752j;
        float f5 = this.f2753k;
        float f6 = this.f2754l;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f11 = (float) dArr[i];
            float f12 = (float) dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f11;
                f7 = f12;
            } else if (i2 == 2) {
                f4 = f11;
                f9 = f12;
            } else if (i2 == 3) {
                f5 = f11;
                f8 = f12;
            } else if (i2 == 4) {
                f6 = f11;
                f10 = f12;
            }
        }
        float f13 = (f8 / 2.0f) + f7;
        float f14 = (f10 / 2.0f) + f9;
        Motion motion = this.f2760r;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d, fArr3, fArr4);
            float f15 = fArr3[0];
            float f16 = fArr3[1];
            float f17 = fArr4[0];
            float f18 = fArr4[1];
            double d2 = f3;
            double d3 = f4;
            f = f5;
            float sin = (float) ((f15 + (Math.sin(d3) * d2)) - (f5 / 2.0f));
            float cos = (float) ((f16 - (d2 * Math.cos(d3))) - (f6 / 2.0f));
            double d4 = f7;
            double d5 = f9;
            float sin2 = (float) (f17 + (Math.sin(d3) * d4) + (Math.cos(d3) * d5));
            f14 = (float) ((f18 - (d4 * Math.cos(d3))) + (Math.sin(d3) * d5));
            f3 = sin;
            f4 = cos;
            f13 = sin2;
            f2 = 2.0f;
        } else {
            f = f5;
            f2 = 2.0f;
        }
        fArr[0] = f3 + (f / f2) + 0.0f;
        fArr[1] = f4 + (f6 / f2) + 0.0f;
        fArr2[0] = f13;
        fArr2[1] = f14;
    }

    /* renamed from: g */
    public void m1446g(double d, int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f2751i;
        float f2 = this.f2752j;
        float f3 = this.f2753k;
        float f4 = this.f2754l;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        Motion motion = this.f2760r;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d, fArr2, new float[2]);
            float f6 = fArr2[0];
            float f7 = fArr2[1];
            double d2 = f;
            double d3 = f2;
            float sin = (float) ((f6 + (Math.sin(d3) * d2)) - (f3 / 2.0f));
            f2 = (float) ((f7 - (d2 * Math.cos(d3))) - (f4 / 2.0f));
            f = sin;
        }
        fArr[i] = f + (f3 / 2.0f) + 0.0f;
        fArr[i + 1] = f2 + (f4 / 2.0f) + 0.0f;
    }

    /* renamed from: h */
    public int m1447h(String str, double[] dArr, int i) {
        CustomVariable customVariable = this.f2761s.get(str);
        int i2 = 0;
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i] = customVariable.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        customVariable.getValuesToInterpolate(new float[numberOfInterpolatedValues]);
        while (i2 < numberOfInterpolatedValues) {
            dArr[i] = r1[i2];
            i2++;
            i++;
        }
        return numberOfInterpolatedValues;
    }

    /* renamed from: i */
    public int m1448i(String str) {
        CustomVariable customVariable = this.f2761s.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
    }

    /* renamed from: j */
    public void m1449j(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f2751i;
        float f2 = this.f2752j;
        float f3 = this.f2753k;
        float f4 = this.f2754l;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        Motion motion = this.f2760r;
        if (motion != null) {
            float centerX = motion.getCenterX();
            float centerY = this.f2760r.getCenterY();
            double d = f;
            double d2 = f2;
            float sin = (float) ((centerX + (Math.sin(d2) * d)) - (f3 / 2.0f));
            f2 = (float) ((centerY - (d * Math.cos(d2))) - (f4 / 2.0f));
            f = sin;
        }
        float f6 = f3 + f;
        float f7 = f4 + f2;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i4 = i + 1;
        fArr[i] = f + 0.0f;
        int i5 = i4 + 1;
        fArr[i4] = f2 + 0.0f;
        int i6 = i5 + 1;
        fArr[i5] = f6 + 0.0f;
        int i7 = i6 + 1;
        fArr[i6] = f2 + 0.0f;
        int i8 = i7 + 1;
        fArr[i7] = f6 + 0.0f;
        int i9 = i8 + 1;
        fArr[i8] = f7 + 0.0f;
        fArr[i9] = f + 0.0f;
        fArr[i9 + 1] = f7 + 0.0f;
    }

    /* renamed from: k */
    public boolean m1450k(String str) {
        return this.f2761s.containsKey(str);
    }

    /* renamed from: l */
    public void m1451l(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.f2749g = f;
        this.f2748f = motionKeyPosition.mDrawPath;
        float f2 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f3 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f4 = motionPaths2.f2753k;
        float f5 = motionPaths.f2753k;
        float f6 = motionPaths2.f2754l;
        float f7 = motionPaths.f2754l;
        this.f2750h = this.f2749g;
        float f8 = motionPaths.f2751i;
        float f9 = motionPaths.f2752j;
        float f10 = (motionPaths2.f2751i + (f4 / 2.0f)) - ((f5 / 2.0f) + f8);
        float f11 = (motionPaths2.f2752j + (f6 / 2.0f)) - (f9 + (f7 / 2.0f));
        float f12 = ((f4 - f5) * f2) / 2.0f;
        this.f2751i = (int) ((f8 + (f10 * f)) - f12);
        float f13 = ((f6 - f7) * f3) / 2.0f;
        this.f2752j = (int) ((f9 + (f11 * f)) - f13);
        this.f2753k = (int) (f5 + r9);
        this.f2754l = (int) (f7 + r12);
        float f14 = Float.isNaN(motionKeyPosition.mPercentX) ? f : motionKeyPosition.mPercentX;
        float f15 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f = motionKeyPosition.mPercentY;
        }
        float f16 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.f2762t = 0;
        this.f2751i = (int) (((motionPaths.f2751i + (f14 * f10)) + (f16 * f11)) - f12);
        this.f2752j = (int) (((motionPaths.f2752j + (f10 * f15)) + (f11 * f)) - f13);
        this.f2747e = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.f2757o = motionKeyPosition.mPathMotionArc;
    }

    /* renamed from: m */
    public void m1452m(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.f2749g = f;
        this.f2748f = motionKeyPosition.mDrawPath;
        float f2 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f3 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f4 = motionPaths2.f2753k - motionPaths.f2753k;
        float f5 = motionPaths2.f2754l - motionPaths.f2754l;
        this.f2750h = this.f2749g;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f = motionKeyPosition.mPercentX;
        }
        float f6 = motionPaths.f2751i;
        float f7 = motionPaths.f2753k;
        float f8 = motionPaths.f2752j;
        float f9 = motionPaths.f2754l;
        float f10 = (motionPaths2.f2751i + (motionPaths2.f2753k / 2.0f)) - ((f7 / 2.0f) + f6);
        float f11 = (motionPaths2.f2752j + (motionPaths2.f2754l / 2.0f)) - ((f9 / 2.0f) + f8);
        float f12 = f10 * f;
        float f13 = (f4 * f2) / 2.0f;
        this.f2751i = (int) ((f6 + f12) - f13);
        float f14 = f * f11;
        float f15 = (f5 * f3) / 2.0f;
        this.f2752j = (int) ((f8 + f14) - f15);
        this.f2753k = (int) (f7 + r7);
        this.f2754l = (int) (f9 + r8);
        float f16 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.f2762t = 1;
        float f17 = (int) ((motionPaths.f2751i + f12) - f13);
        float f18 = (int) ((motionPaths.f2752j + f14) - f15);
        this.f2751i = f17 + ((-f11) * f16);
        this.f2752j = f18 + (f10 * f16);
        this.f2758p = this.f2758p;
        this.f2747e = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.f2757o = motionKeyPosition.mPathMotionArc;
    }

    /* renamed from: n */
    public void m1453n(int i, int i2, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float min;
        float f;
        float f2 = motionKeyPosition.mFramePosition / 100.0f;
        this.f2749g = f2;
        this.f2748f = motionKeyPosition.mDrawPath;
        this.f2762t = motionKeyPosition.mPositionType;
        float f3 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f2 : motionKeyPosition.mPercentWidth;
        float f4 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f2 : motionKeyPosition.mPercentHeight;
        float f5 = motionPaths2.f2753k;
        float f6 = motionPaths.f2753k;
        float f7 = motionPaths2.f2754l;
        float f8 = motionPaths.f2754l;
        this.f2750h = this.f2749g;
        this.f2753k = (int) (f6 + ((f5 - f6) * f3));
        this.f2754l = (int) (f8 + ((f7 - f8) * f4));
        int i3 = motionKeyPosition.mPositionType;
        if (i3 == 1) {
            float f9 = Float.isNaN(motionKeyPosition.mPercentX) ? f2 : motionKeyPosition.mPercentX;
            float f10 = motionPaths2.f2751i;
            float f11 = motionPaths.f2751i;
            this.f2751i = (f9 * (f10 - f11)) + f11;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f2 = motionKeyPosition.mPercentY;
            }
            float f12 = motionPaths2.f2752j;
            float f13 = motionPaths.f2752j;
            this.f2752j = (f2 * (f12 - f13)) + f13;
        } else if (i3 != 2) {
            float f14 = Float.isNaN(motionKeyPosition.mPercentX) ? f2 : motionKeyPosition.mPercentX;
            float f15 = motionPaths2.f2751i;
            float f16 = motionPaths.f2751i;
            this.f2751i = (f14 * (f15 - f16)) + f16;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f2 = motionKeyPosition.mPercentY;
            }
            float f17 = motionPaths2.f2752j;
            float f18 = motionPaths.f2752j;
            this.f2752j = (f2 * (f17 - f18)) + f18;
        } else {
            if (Float.isNaN(motionKeyPosition.mPercentX)) {
                float f19 = motionPaths2.f2751i;
                float f20 = motionPaths.f2751i;
                min = ((f19 - f20) * f2) + f20;
            } else {
                min = Math.min(f4, f3) * motionKeyPosition.mPercentX;
            }
            this.f2751i = min;
            if (Float.isNaN(motionKeyPosition.mPercentY)) {
                float f21 = motionPaths2.f2752j;
                float f22 = motionPaths.f2752j;
                f = (f2 * (f21 - f22)) + f22;
            } else {
                f = motionKeyPosition.mPercentY;
            }
            this.f2752j = f;
        }
        this.f2758p = motionPaths.f2758p;
        this.f2747e = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.f2757o = motionKeyPosition.mPathMotionArc;
    }

    /* renamed from: o */
    public void m1454o(int i, int i2, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.f2749g = f;
        this.f2748f = motionKeyPosition.mDrawPath;
        float f2 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f3 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f4 = motionPaths2.f2753k;
        float f5 = motionPaths.f2753k;
        float f6 = motionPaths2.f2754l;
        float f7 = motionPaths.f2754l;
        this.f2750h = this.f2749g;
        float f8 = motionPaths.f2751i;
        float f9 = motionPaths.f2752j;
        float f10 = motionPaths2.f2751i + (f4 / 2.0f);
        float f11 = motionPaths2.f2752j + (f6 / 2.0f);
        float f12 = (f4 - f5) * f2;
        this.f2751i = (int) ((f8 + ((f10 - ((f5 / 2.0f) + f8)) * f)) - (f12 / 2.0f));
        float f13 = (f6 - f7) * f3;
        this.f2752j = (int) ((f9 + ((f11 - (f9 + (f7 / 2.0f))) * f)) - (f13 / 2.0f));
        this.f2753k = (int) (f5 + f12);
        this.f2754l = (int) (f7 + f13);
        this.f2762t = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.f2751i = (int) (motionKeyPosition.mPercentX * ((int) (i - this.f2753k)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.f2752j = (int) (motionKeyPosition.mPercentY * ((int) (i2 - this.f2754l)));
        }
        this.f2758p = this.f2758p;
        this.f2747e = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.f2757o = motionKeyPosition.mPathMotionArc;
    }

    /* renamed from: p */
    public void m1455p(float f, float f2, float f3, float f4) {
        this.f2751i = f;
        this.f2752j = f2;
        this.f2753k = f3;
        this.f2754l = f4;
    }

    /* renamed from: q */
    public void m1456q(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f7;
            } else if (i2 == 2) {
                f5 = f7;
            } else if (i2 == 3) {
                f4 = f7;
            } else if (i2 == 4) {
                f6 = f7;
            }
        }
        float f8 = f3 - ((0.0f * f4) / 2.0f);
        float f9 = f5 - ((0.0f * f6) / 2.0f);
        fArr[0] = (f8 * (1.0f - f)) + (((f4 * 1.0f) + f8) * f) + 0.0f;
        fArr[1] = (f9 * (1.0f - f2)) + (((f6 * 1.0f) + f9) * f2) + 0.0f;
    }

    /* renamed from: r */
    public void m1457r(float f, MotionWidget motionWidget, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f2;
        float f3;
        float f4 = this.f2751i;
        float f5 = this.f2752j;
        float f6 = this.f2753k;
        float f7 = this.f2754l;
        if (iArr.length != 0 && this.f2764v.length <= iArr[iArr.length - 1]) {
            int i = iArr[iArr.length - 1] + 1;
            this.f2764v = new double[i];
            this.f2765w = new double[i];
        }
        Arrays.fill(this.f2764v, Double.NaN);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            double[] dArr4 = this.f2764v;
            int i3 = iArr[i2];
            dArr4[i3] = dArr[i2];
            this.f2765w[i3] = dArr2[i2];
        }
        float f8 = Float.NaN;
        int i4 = 0;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        while (true) {
            double[] dArr5 = this.f2764v;
            if (i4 >= dArr5.length) {
                break;
            }
            if (Double.isNaN(dArr5[i4]) && (dArr3 == null || dArr3[i4] == 0.0d)) {
                f3 = f8;
            } else {
                double d = dArr3 != null ? dArr3[i4] : 0.0d;
                if (!Double.isNaN(this.f2764v[i4])) {
                    d = this.f2764v[i4] + d;
                }
                f3 = f8;
                float f13 = (float) d;
                float f14 = (float) this.f2765w[i4];
                if (i4 == 1) {
                    f8 = f3;
                    f4 = f13;
                    f9 = f14;
                } else if (i4 == 2) {
                    f8 = f3;
                    f5 = f13;
                    f10 = f14;
                } else if (i4 == 3) {
                    f8 = f3;
                    f6 = f13;
                    f11 = f14;
                } else if (i4 == 4) {
                    f8 = f3;
                    f7 = f13;
                    f12 = f14;
                } else if (i4 == 5) {
                    f8 = f13;
                }
                i4++;
            }
            f8 = f3;
            i4++;
        }
        float f15 = f8;
        Motion motion = this.f2760r;
        if (motion != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motion.getCenter(f, fArr, fArr2);
            float f16 = fArr[0];
            float f17 = fArr[1];
            float f18 = fArr2[0];
            float f19 = fArr2[1];
            double d2 = f4;
            double d3 = f5;
            float sin = (float) ((f16 + (Math.sin(d3) * d2)) - (f6 / 2.0f));
            f2 = f7;
            float cos = (float) ((f17 - (Math.cos(d3) * d2)) - (f7 / 2.0f));
            double d4 = f9;
            double d5 = f10;
            float sin2 = (float) (f18 + (Math.sin(d3) * d4) + (Math.cos(d3) * d2 * d5));
            float cos2 = (float) ((f19 - (d4 * Math.cos(d3))) + (d2 * Math.sin(d3) * d5));
            if (dArr2.length >= 2) {
                dArr2[0] = sin2;
                dArr2[1] = cos2;
            }
            if (!Float.isNaN(f15)) {
                motionWidget.setRotationZ((float) (f15 + Math.toDegrees(Math.atan2(cos2, sin2))));
            }
            f4 = sin;
            f5 = cos;
        } else {
            f2 = f7;
            if (!Float.isNaN(f15)) {
                motionWidget.setRotationZ((float) (0.0f + f15 + Math.toDegrees(Math.atan2(f10 + (f12 / 2.0f), f9 + (f11 / 2.0f)))));
            }
        }
        float f20 = f4 + 0.5f;
        float f21 = f5 + 0.5f;
        motionWidget.layout((int) f20, (int) f21, (int) (f20 + f6), (int) (f21 + f2));
    }

    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d = ((this.f2751i + (this.f2753k / 2.0f)) - motionPaths.f2751i) - (motionPaths.f2753k / 2.0f);
        double d2 = ((this.f2752j + (this.f2754l / 2.0f)) - motionPaths.f2752j) - (motionPaths.f2754l / 2.0f);
        this.f2760r = motion;
        this.f2751i = (float) Math.hypot(d2, d);
        if (Float.isNaN(this.f2759q)) {
            this.f2752j = (float) (Math.atan2(d2, d) + 1.5707963267948966d);
        } else {
            this.f2752j = (float) Math.toRadians(this.f2759q);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.f2750h, motionPaths.f2750h);
    }

    public MotionPaths(int i, int i2, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.f2748f = 0;
        this.f2755m = Float.NaN;
        this.f2756n = Float.NaN;
        this.f2757o = -1;
        this.f2758p = -1;
        this.f2759q = Float.NaN;
        this.f2760r = null;
        this.f2761s = new HashMap<>();
        this.f2762t = 0;
        this.f2764v = new double[18];
        this.f2765w = new double[18];
        if (motionPaths.f2758p != -1) {
            m1453n(i, i2, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int i3 = motionKeyPosition.mPositionType;
        if (i3 == 1) {
            m1452m(motionKeyPosition, motionPaths, motionPaths2);
        } else if (i3 != 2) {
            m1451l(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            m1454o(i, i2, motionKeyPosition, motionPaths, motionPaths2);
        }
    }
}
