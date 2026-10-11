package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.FloatLayout;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.KeyPosition;
import androidx.constraintlayout.motion.widget.MotionController;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* loaded from: classes3.dex */
public class bpj implements Comparable<bpj> {

    /* renamed from: J */
    public static final int f65978J = 0;

    /* renamed from: O */
    public static final int f65979O = 1;

    /* renamed from: Q */
    public static final int f65980Q = 2;

    /* renamed from: Z */
    public static final int f65981Z = 3;

    /* renamed from: k0 */
    public static final int f65982k0 = 4;

    /* renamed from: q0 */
    public static final int f65983q0 = 5;

    /* renamed from: t0 */
    public static final int f65984t0 = 1;

    /* renamed from: u0 */
    public static final int f65985u0 = 0;

    /* renamed from: v0 */
    public static final int f65986v0 = 2;

    /* renamed from: w0 */
    public static String[] f65987w0 = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: x */
    public static final String f65988x = "MotionPaths";

    /* renamed from: y */
    public static final boolean f65989y = false;

    /* renamed from: z */
    public static final boolean f65990z = false;

    /* renamed from: e */
    public Easing f65991e;

    /* renamed from: g */
    public float f65993g;

    /* renamed from: h */
    public float f65994h;

    /* renamed from: i */
    public float f65995i;

    /* renamed from: j */
    public float f65996j;

    /* renamed from: k */
    public float f65997k;

    /* renamed from: l */
    public float f65998l;

    /* renamed from: o */
    public int f66001o;

    /* renamed from: p */
    public int f66002p;

    /* renamed from: q */
    public float f66003q;

    /* renamed from: r */
    public MotionController f66004r;

    /* renamed from: s */
    public LinkedHashMap<String, ConstraintAttribute> f66005s;

    /* renamed from: t */
    public int f66006t;

    /* renamed from: u */
    public int f66007u;

    /* renamed from: v */
    public double[] f66008v;

    /* renamed from: w */
    public double[] f66009w;

    /* renamed from: f */
    public int f65992f = 0;

    /* renamed from: m */
    public float f65999m = Float.NaN;

    /* renamed from: n */
    public float f66000n = Float.NaN;

    public bpj() {
        int i = Key.UNSET;
        this.f66001o = i;
        this.f66002p = i;
        this.f66003q = Float.NaN;
        this.f66004r = null;
        this.f66005s = new LinkedHashMap<>();
        this.f66006t = 0;
        this.f66008v = new double[18];
        this.f66009w = new double[18];
    }

    /* renamed from: w */
    public static final float m53293w(float sin, float cos, float cx, float cy, float x, float y) {
        return (((x - cx) * cos) - ((y - cy) * sin)) + cx;
    }

    /* renamed from: x */
    public static final float m53294x(float sin, float cos, float cx, float cy, float x, float y) {
        return ((x - cx) * sin) + ((y - cy) * cos) + cy;
    }

    /* renamed from: a */
    public void m53295a(ConstraintSet.Constraint c) {
        this.f65991e = Easing.getInterpolator(c.motion.mTransitionEasing);
        ConstraintSet.Motion motion = c.motion;
        this.f66001o = motion.mPathMotionArc;
        this.f66002p = motion.mAnimateRelativeTo;
        this.f65999m = motion.mPathRotate;
        this.f65992f = motion.mDrawPath;
        this.f66007u = motion.mAnimateCircleAngleTo;
        this.f66000n = c.propertySet.mProgress;
        this.f66003q = c.layout.circleAngle;
        for (String str : c.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = c.mCustomConstraints.get(str);
            if (constraintAttribute != null && constraintAttribute.isContinuous()) {
                this.f66005s.put(str, constraintAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull bpj o) {
        return Float.compare(this.f65994h, o.f65994h);
    }

    /* renamed from: c */
    public void m53297c(MotionController toOrbit) {
        toOrbit.m1867o(this.f66000n);
    }

    /* renamed from: d */
    public final boolean m53298d(float a, float b) {
        return (Float.isNaN(a) || Float.isNaN(b)) ? Float.isNaN(a) != Float.isNaN(b) : Math.abs(a - b) > 1.0E-6f;
    }

    /* renamed from: e */
    public void m53299e(bpj points, boolean[] mask, String[] custom, boolean arcMode) {
        boolean m53298d = m53298d(this.f65995i, points.f65995i);
        boolean m53298d2 = m53298d(this.f65996j, points.f65996j);
        mask[0] = mask[0] | m53298d(this.f65994h, points.f65994h);
        boolean z = m53298d | m53298d2 | arcMode;
        mask[1] = mask[1] | z;
        mask[2] = z | mask[2];
        mask[3] = mask[3] | m53298d(this.f65997k, points.f65997k);
        mask[4] = m53298d(this.f65998l, points.f65998l) | mask[4];
    }

    /* renamed from: f */
    public void m53300f(double[] data, int[] toUse) {
        float[] fArr = {this.f65994h, this.f65995i, this.f65996j, this.f65997k, this.f65998l, this.f65999m};
        int i = 0;
        for (int i2 : toUse) {
            if (i2 < 6) {
                data[i] = fArr[r2];
                i++;
            }
        }
    }

    /* renamed from: g */
    public void m53301g(int[] toUse, double[] data, float[] point, int offset) {
        float f = this.f65997k;
        float f2 = this.f65998l;
        for (int i = 0; i < toUse.length; i++) {
            float f3 = (float) data[i];
            int i2 = toUse[i];
            if (i2 == 3) {
                f = f3;
            } else if (i2 == 4) {
                f2 = f3;
            }
        }
        point[offset] = f;
        point[offset + 1] = f2;
    }

    /* renamed from: h */
    public void m53302h(double p, int[] toUse, double[] data, float[] point, int offset) {
        float f = this.f65995i;
        float f2 = this.f65996j;
        float f3 = this.f65997k;
        float f4 = this.f65998l;
        for (int i = 0; i < toUse.length; i++) {
            float f5 = (float) data[i];
            int i2 = toUse[i];
            if (i2 == 1) {
                f = f5;
            } else if (i2 == 2) {
                f2 = f5;
            } else if (i2 == 3) {
                f3 = f5;
            } else if (i2 == 4) {
                f4 = f5;
            }
        }
        MotionController motionController = this.f66004r;
        if (motionController != null) {
            float[] fArr = new float[2];
            motionController.getCenter(p, fArr, new float[2]);
            float f6 = fArr[0];
            float f7 = fArr[1];
            double d = f;
            double d2 = f2;
            float sin = (float) ((f6 + (Math.sin(d2) * d)) - (f3 / 2.0f));
            f2 = (float) ((f7 - (d * Math.cos(d2))) - (f4 / 2.0f));
            f = sin;
        }
        point[offset] = f + (f3 / 2.0f) + 0.0f;
        point[offset + 1] = f2 + (f4 / 2.0f) + 0.0f;
    }

    /* renamed from: i */
    public void m53303i(double p, int[] toUse, double[] data, float[] point, double[] vdata, float[] velocity) {
        float f;
        float f2;
        float f3 = this.f65995i;
        float f4 = this.f65996j;
        float f5 = this.f65997k;
        float f6 = this.f65998l;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        for (int i = 0; i < toUse.length; i++) {
            float f11 = (float) data[i];
            float f12 = (float) vdata[i];
            int i2 = toUse[i];
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
        MotionController motionController = this.f66004r;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(p, fArr, fArr2);
            float f15 = fArr[0];
            float f16 = fArr[1];
            float f17 = fArr2[0];
            float f18 = fArr2[1];
            double d = f3;
            double d2 = f4;
            f = f5;
            float sin = (float) ((f15 + (Math.sin(d2) * d)) - (f5 / 2.0f));
            float cos = (float) ((f16 - (d * Math.cos(d2))) - (f6 / 2.0f));
            double d3 = f7;
            double d4 = f9;
            float sin2 = (float) (f17 + (Math.sin(d2) * d3) + (Math.cos(d2) * d4));
            f14 = (float) ((f18 - (d3 * Math.cos(d2))) + (Math.sin(d2) * d4));
            f3 = sin;
            f4 = cos;
            f13 = sin2;
            f2 = 2.0f;
        } else {
            f = f5;
            f2 = 2.0f;
        }
        point[0] = f3 + (f / f2) + 0.0f;
        point[1] = f4 + (f6 / f2) + 0.0f;
        velocity[0] = f13;
        velocity[1] = f14;
    }

    /* renamed from: j */
    public void m53304j(double p, int[] toUse, double[] data, float[] point, int offset) {
        float f = this.f65995i;
        float f2 = this.f65996j;
        float f3 = this.f65997k;
        float f4 = this.f65998l;
        for (int i = 0; i < toUse.length; i++) {
            float f5 = (float) data[i];
            int i2 = toUse[i];
            if (i2 == 1) {
                f = f5;
            } else if (i2 == 2) {
                f2 = f5;
            } else if (i2 == 3) {
                f3 = f5;
            } else if (i2 == 4) {
                f4 = f5;
            }
        }
        MotionController motionController = this.f66004r;
        if (motionController != null) {
            float[] fArr = new float[2];
            motionController.getCenter(p, fArr, new float[2]);
            float f6 = fArr[0];
            float f7 = fArr[1];
            double d = f;
            double d2 = f2;
            float sin = (float) ((f6 + (Math.sin(d2) * d)) - (f3 / 2.0f));
            f2 = (float) ((f7 - (d * Math.cos(d2))) - (f4 / 2.0f));
            f = sin;
        }
        point[offset] = f + (f3 / 2.0f) + 0.0f;
        point[offset + 1] = f2 + (f4 / 2.0f) + 0.0f;
    }

    /* renamed from: k */
    public int m53305k(String name, double[] value, int offset) {
        ConstraintAttribute constraintAttribute = this.f66005s.get(name);
        int i = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            value[offset] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        constraintAttribute.getValuesToInterpolate(new float[numberOfInterpolatedValues]);
        while (i < numberOfInterpolatedValues) {
            value[offset] = r1[i];
            i++;
            offset++;
        }
        return numberOfInterpolatedValues;
    }

    /* renamed from: l */
    public int m53306l(String name) {
        ConstraintAttribute constraintAttribute = this.f66005s.get(name);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.numberOfInterpolatedValues();
    }

    /* renamed from: m */
    public void m53307m(int[] toUse, double[] data, float[] path, int offset) {
        float f = this.f65995i;
        float f2 = this.f65996j;
        float f3 = this.f65997k;
        float f4 = this.f65998l;
        for (int i = 0; i < toUse.length; i++) {
            float f5 = (float) data[i];
            int i2 = toUse[i];
            if (i2 == 1) {
                f = f5;
            } else if (i2 == 2) {
                f2 = f5;
            } else if (i2 == 3) {
                f3 = f5;
            } else if (i2 == 4) {
                f4 = f5;
            }
        }
        MotionController motionController = this.f66004r;
        if (motionController != null) {
            float centerX = motionController.getCenterX();
            float centerY = this.f66004r.getCenterY();
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
        int i3 = offset + 1;
        path[offset] = f + 0.0f;
        int i4 = i3 + 1;
        path[i3] = f2 + 0.0f;
        int i5 = i4 + 1;
        path[i4] = f6 + 0.0f;
        int i6 = i5 + 1;
        path[i5] = f2 + 0.0f;
        int i7 = i6 + 1;
        path[i6] = f6 + 0.0f;
        int i8 = i7 + 1;
        path[i7] = f7 + 0.0f;
        path[i8] = f + 0.0f;
        path[i8 + 1] = f7 + 0.0f;
    }

    /* renamed from: n */
    public boolean m53308n(String name) {
        return this.f66005s.containsKey(name);
    }

    /* renamed from: o */
    public void m53309o(KeyPosition c, bpj startTimePoint, bpj endTimePoint) {
        float f = c.f3529a / 100.0f;
        this.f65993g = f;
        this.f65992f = c.f3626h;
        float f2 = Float.isNaN(c.f3627i) ? f : c.f3627i;
        float f3 = Float.isNaN(c.f3628j) ? f : c.f3628j;
        float f4 = endTimePoint.f65997k;
        float f5 = startTimePoint.f65997k;
        float f6 = endTimePoint.f65998l;
        float f7 = startTimePoint.f65998l;
        this.f65994h = this.f65993g;
        float f8 = startTimePoint.f65995i;
        float f9 = startTimePoint.f65996j;
        float f10 = (endTimePoint.f65995i + (f4 / 2.0f)) - ((f5 / 2.0f) + f8);
        float f11 = (endTimePoint.f65996j + (f6 / 2.0f)) - (f9 + (f7 / 2.0f));
        float f12 = ((f4 - f5) * f2) / 2.0f;
        this.f65995i = (int) ((f8 + (f10 * f)) - f12);
        float f13 = ((f6 - f7) * f3) / 2.0f;
        this.f65996j = (int) ((f9 + (f11 * f)) - f13);
        this.f65997k = (int) (f5 + r9);
        this.f65998l = (int) (f7 + r12);
        float f14 = Float.isNaN(c.f3629k) ? f : c.f3629k;
        float f15 = Float.isNaN(c.f3632n) ? 0.0f : c.f3632n;
        if (!Float.isNaN(c.f3630l)) {
            f = c.f3630l;
        }
        float f16 = Float.isNaN(c.f3631m) ? 0.0f : c.f3631m;
        this.f66006t = 0;
        this.f65995i = (int) (((startTimePoint.f65995i + (f14 * f10)) + (f16 * f11)) - f12);
        this.f65996j = (int) (((startTimePoint.f65996j + (f10 * f15)) + (f11 * f)) - f13);
        this.f65991e = Easing.getInterpolator(c.f3624f);
        this.f66001o = c.f3625g;
    }

    /* renamed from: p */
    public void m53310p(KeyPosition c, bpj startTimePoint, bpj endTimePoint) {
        float f = c.f3529a / 100.0f;
        this.f65993g = f;
        this.f65992f = c.f3626h;
        float f2 = Float.isNaN(c.f3627i) ? f : c.f3627i;
        float f3 = Float.isNaN(c.f3628j) ? f : c.f3628j;
        float f4 = endTimePoint.f65997k - startTimePoint.f65997k;
        float f5 = endTimePoint.f65998l - startTimePoint.f65998l;
        this.f65994h = this.f65993g;
        if (!Float.isNaN(c.f3629k)) {
            f = c.f3629k;
        }
        float f6 = startTimePoint.f65995i;
        float f7 = startTimePoint.f65997k;
        float f8 = startTimePoint.f65996j;
        float f9 = startTimePoint.f65998l;
        float f10 = (endTimePoint.f65995i + (endTimePoint.f65997k / 2.0f)) - ((f7 / 2.0f) + f6);
        float f11 = (endTimePoint.f65996j + (endTimePoint.f65998l / 2.0f)) - ((f9 / 2.0f) + f8);
        float f12 = f10 * f;
        float f13 = (f4 * f2) / 2.0f;
        this.f65995i = (int) ((f6 + f12) - f13);
        float f14 = f * f11;
        float f15 = (f5 * f3) / 2.0f;
        this.f65996j = (int) ((f8 + f14) - f15);
        this.f65997k = (int) (f7 + r7);
        this.f65998l = (int) (f9 + r8);
        float f16 = Float.isNaN(c.f3630l) ? 0.0f : c.f3630l;
        this.f66006t = 1;
        float f17 = (int) ((startTimePoint.f65995i + f12) - f13);
        float f18 = (int) ((startTimePoint.f65996j + f14) - f15);
        this.f65995i = f17 + ((-f11) * f16);
        this.f65996j = f18 + (f10 * f16);
        this.f66002p = this.f66002p;
        this.f65991e = Easing.getInterpolator(c.f3624f);
        this.f66001o = c.f3625g;
    }

    /* renamed from: q */
    public void m53311q(int parentWidth, int parentHeight, KeyPosition c, bpj s, bpj e) {
        float min;
        float f;
        float f2 = c.f3529a / 100.0f;
        this.f65993g = f2;
        this.f65992f = c.f3626h;
        this.f66006t = c.f3633o;
        float f3 = Float.isNaN(c.f3627i) ? f2 : c.f3627i;
        float f4 = Float.isNaN(c.f3628j) ? f2 : c.f3628j;
        float f5 = e.f65997k;
        float f6 = s.f65997k;
        float f7 = e.f65998l;
        float f8 = s.f65998l;
        this.f65994h = this.f65993g;
        this.f65997k = (int) (f6 + ((f5 - f6) * f3));
        this.f65998l = (int) (f8 + ((f7 - f8) * f4));
        int i = c.f3633o;
        if (i == 1) {
            float f9 = Float.isNaN(c.f3629k) ? f2 : c.f3629k;
            float f10 = e.f65995i;
            float f11 = s.f65995i;
            this.f65995i = (f9 * (f10 - f11)) + f11;
            if (!Float.isNaN(c.f3630l)) {
                f2 = c.f3630l;
            }
            float f12 = e.f65996j;
            float f13 = s.f65996j;
            this.f65996j = (f2 * (f12 - f13)) + f13;
        } else if (i != 2) {
            float f14 = Float.isNaN(c.f3629k) ? f2 : c.f3629k;
            float f15 = e.f65995i;
            float f16 = s.f65995i;
            this.f65995i = (f14 * (f15 - f16)) + f16;
            if (!Float.isNaN(c.f3630l)) {
                f2 = c.f3630l;
            }
            float f17 = e.f65996j;
            float f18 = s.f65996j;
            this.f65996j = (f2 * (f17 - f18)) + f18;
        } else {
            if (Float.isNaN(c.f3629k)) {
                float f19 = e.f65995i;
                float f20 = s.f65995i;
                min = ((f19 - f20) * f2) + f20;
            } else {
                min = Math.min(f4, f3) * c.f3629k;
            }
            this.f65995i = min;
            if (Float.isNaN(c.f3630l)) {
                float f21 = e.f65996j;
                float f22 = s.f65996j;
                f = (f2 * (f21 - f22)) + f22;
            } else {
                f = c.f3630l;
            }
            this.f65996j = f;
        }
        this.f66002p = s.f66002p;
        this.f65991e = Easing.getInterpolator(c.f3624f);
        this.f66001o = c.f3625g;
    }

    /* renamed from: r */
    public void m53312r(int parentWidth, int parentHeight, KeyPosition c, bpj startTimePoint, bpj endTimePoint) {
        float f = c.f3529a / 100.0f;
        this.f65993g = f;
        this.f65992f = c.f3626h;
        float f2 = Float.isNaN(c.f3627i) ? f : c.f3627i;
        float f3 = Float.isNaN(c.f3628j) ? f : c.f3628j;
        float f4 = endTimePoint.f65997k;
        float f5 = startTimePoint.f65997k;
        float f6 = endTimePoint.f65998l;
        float f7 = startTimePoint.f65998l;
        this.f65994h = this.f65993g;
        float f8 = startTimePoint.f65995i;
        float f9 = startTimePoint.f65996j;
        float f10 = endTimePoint.f65995i + (f4 / 2.0f);
        float f11 = endTimePoint.f65996j + (f6 / 2.0f);
        float f12 = (f4 - f5) * f2;
        this.f65995i = (int) ((f8 + ((f10 - ((f5 / 2.0f) + f8)) * f)) - (f12 / 2.0f));
        float f13 = (f6 - f7) * f3;
        this.f65996j = (int) ((f9 + ((f11 - (f9 + (f7 / 2.0f))) * f)) - (f13 / 2.0f));
        this.f65997k = (int) (f5 + f12);
        this.f65998l = (int) (f7 + f13);
        this.f66006t = 2;
        if (!Float.isNaN(c.f3629k)) {
            this.f65995i = (int) (c.f3629k * ((int) (parentWidth - this.f65997k)));
        }
        if (!Float.isNaN(c.f3630l)) {
            this.f65996j = (int) (c.f3630l * ((int) (parentHeight - this.f65998l)));
        }
        this.f66002p = this.f66002p;
        this.f65991e = Easing.getInterpolator(c.f3624f);
        this.f66001o = c.f3625g;
    }

    /* renamed from: s */
    public void m53313s(float x, float y, float w, float h) {
        this.f65995i = x;
        this.f65996j = y;
        this.f65997k = w;
        this.f65998l = h;
    }

    /* renamed from: t */
    public void m53314t(float locationX, float locationY, float[] mAnchorDpDt, int[] toUse, double[] deltaData, double[] data) {
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        for (int i = 0; i < toUse.length; i++) {
            float f5 = (float) deltaData[i];
            double d = data[i];
            int i2 = toUse[i];
            if (i2 == 1) {
                f = f5;
            } else if (i2 == 2) {
                f3 = f5;
            } else if (i2 == 3) {
                f2 = f5;
            } else if (i2 == 4) {
                f4 = f5;
            }
        }
        float f6 = f - ((0.0f * f2) / 2.0f);
        float f7 = f3 - ((0.0f * f4) / 2.0f);
        mAnchorDpDt[0] = (f6 * (1.0f - locationX)) + (((f2 * 1.0f) + f6) * locationX) + 0.0f;
        mAnchorDpDt[1] = (f7 * (1.0f - locationY)) + (((f4 * 1.0f) + f7) * locationY) + 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u */
    public void m53315u(float position, View view, int[] toUse, double[] data, double[] slope, double[] cycle, boolean mForceMeasure) {
        float f;
        boolean z;
        boolean z2;
        float f2;
        float f3 = this.f65995i;
        float f4 = this.f65996j;
        float f5 = this.f65997k;
        float f6 = this.f65998l;
        if (toUse.length != 0 && this.f66008v.length <= toUse[toUse.length - 1]) {
            int i = toUse[toUse.length - 1] + 1;
            this.f66008v = new double[i];
            this.f66009w = new double[i];
        }
        Arrays.fill(this.f66008v, Double.NaN);
        for (int i2 = 0; i2 < toUse.length; i2++) {
            double[] dArr = this.f66008v;
            int i3 = toUse[i2];
            dArr[i3] = data[i2];
            this.f66009w[i3] = slope[i2];
        }
        float f7 = Float.NaN;
        int i4 = 0;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        while (true) {
            double[] dArr2 = this.f66008v;
            if (i4 >= dArr2.length) {
                break;
            }
            if (Double.isNaN(dArr2[i4]) && (cycle == null || cycle[i4] == 0.0d)) {
                f2 = f7;
            } else {
                double d = cycle != null ? cycle[i4] : 0.0d;
                if (!Double.isNaN(this.f66008v[i4])) {
                    d = this.f66008v[i4] + d;
                }
                f2 = f7;
                float f12 = (float) d;
                float f13 = (float) this.f66009w[i4];
                if (i4 == 1) {
                    f7 = f2;
                    f3 = f12;
                    f8 = f13;
                } else if (i4 == 2) {
                    f7 = f2;
                    f4 = f12;
                    f9 = f13;
                } else if (i4 == 3) {
                    f7 = f2;
                    f5 = f12;
                    f10 = f13;
                } else if (i4 == 4) {
                    f7 = f2;
                    f6 = f12;
                    f11 = f13;
                } else if (i4 == 5) {
                    f7 = f12;
                }
                i4++;
            }
            f7 = f2;
            i4++;
        }
        float f14 = f7;
        MotionController motionController = this.f66004r;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(position, fArr, fArr2);
            float f15 = fArr[0];
            float f16 = fArr[1];
            float f17 = fArr2[0];
            float f18 = fArr2[1];
            double d2 = f3;
            double d3 = f4;
            float sin = (float) ((f15 + (Math.sin(d3) * d2)) - (f5 / 2.0f));
            f = f6;
            float cos = (float) ((f16 - (Math.cos(d3) * d2)) - (f6 / 2.0f));
            double d4 = f8;
            double d5 = f9;
            float sin2 = (float) (f17 + (Math.sin(d3) * d4) + (Math.cos(d3) * d2 * d5));
            float cos2 = (float) ((f18 - (d4 * Math.cos(d3))) + (d2 * Math.sin(d3) * d5));
            if (slope.length >= 2) {
                z = false;
                slope[0] = sin2;
                z2 = true;
                slope[1] = cos2;
            } else {
                z = false;
                z2 = true;
            }
            if (!Float.isNaN(f14)) {
                view.setRotation((float) (f14 + Math.toDegrees(Math.atan2(cos2, sin2))));
            }
            f3 = sin;
            f4 = cos;
        } else {
            f = f6;
            z = false;
            z2 = true;
            if (!Float.isNaN(f14)) {
                view.setRotation((float) (0.0f + f14 + Math.toDegrees(Math.atan2(f9 + (f11 / 2.0f), f8 + (f10 / 2.0f)))));
            }
        }
        if (view instanceof FloatLayout) {
            ((FloatLayout) view).layout(f3, f4, f5 + f3, f4 + f);
            return;
        }
        float f19 = f3 + 0.5f;
        int i5 = (int) f19;
        float f20 = f4 + 0.5f;
        int i6 = (int) f20;
        int i7 = (int) (f19 + f5);
        int i8 = (int) (f20 + f);
        int i9 = i7 - i5;
        int i10 = i8 - i6;
        if (i9 != view.getMeasuredWidth() || i10 != view.getMeasuredHeight()) {
            z = z2;
        }
        if (z || mForceMeasure) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i9, 1073741824), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
        }
        view.layout(i5, i6, i7, i8);
    }

    /* renamed from: v */
    public void m53316v(MotionController mc, bpj relative) {
        double d = ((this.f65995i + (this.f65997k / 2.0f)) - relative.f65995i) - (relative.f65997k / 2.0f);
        double d2 = ((this.f65996j + (this.f65998l / 2.0f)) - relative.f65996j) - (relative.f65998l / 2.0f);
        this.f66004r = mc;
        this.f65995i = (float) Math.hypot(d2, d);
        if (Float.isNaN(this.f66003q)) {
            this.f65996j = (float) (Math.atan2(d2, d) + 1.5707963267948966d);
        } else {
            this.f65996j = (float) Math.toRadians(this.f66003q);
        }
    }

    public bpj(int parentWidth, int parentHeight, KeyPosition c, bpj startTimePoint, bpj endTimePoint) {
        int i = Key.UNSET;
        this.f66001o = i;
        this.f66002p = i;
        this.f66003q = Float.NaN;
        this.f66004r = null;
        this.f66005s = new LinkedHashMap<>();
        this.f66006t = 0;
        this.f66008v = new double[18];
        this.f66009w = new double[18];
        if (startTimePoint.f66002p != Key.UNSET) {
            m53311q(parentWidth, parentHeight, c, startTimePoint, endTimePoint);
            return;
        }
        int i2 = c.f3633o;
        if (i2 == 1) {
            m53310p(c, startTimePoint, endTimePoint);
        } else if (i2 != 2) {
            m53309o(c, startTimePoint, endTimePoint);
        } else {
            m53312r(parentWidth, parentHeight, c, startTimePoint, endTimePoint);
        }
    }
}
