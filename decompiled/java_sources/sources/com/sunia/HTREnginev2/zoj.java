package com.sunia.HTREnginev2;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* loaded from: classes3.dex */
public class zoj implements Comparable<zoj> {

    /* renamed from: u0 */
    public static final String f92013u0 = "MotionPaths";

    /* renamed from: v0 */
    public static final boolean f92014v0 = false;

    /* renamed from: w0 */
    public static final int f92015w0 = 1;

    /* renamed from: x0 */
    public static final int f92016x0 = 2;

    /* renamed from: y0 */
    public static String[] f92017y0 = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: g */
    public int f92024g;

    /* renamed from: t */
    public Easing f92039t;

    /* renamed from: v */
    public float f92042v;

    /* renamed from: w */
    public float f92043w;

    /* renamed from: x */
    public float f92044x;

    /* renamed from: y */
    public float f92045y;

    /* renamed from: z */
    public float f92046z;

    /* renamed from: e */
    public float f92022e = 1.0f;

    /* renamed from: f */
    public int f92023f = 0;

    /* renamed from: h */
    public boolean f92025h = false;

    /* renamed from: i */
    public float f92026i = 0.0f;

    /* renamed from: j */
    public float f92027j = 0.0f;

    /* renamed from: k */
    public float f92028k = 0.0f;

    /* renamed from: l */
    public float f92030l = 0.0f;

    /* renamed from: m */
    public float f92031m = 1.0f;

    /* renamed from: n */
    public float f92032n = 1.0f;

    /* renamed from: o */
    public float f92033o = Float.NaN;

    /* renamed from: p */
    public float f92034p = Float.NaN;

    /* renamed from: q */
    public float f92035q = 0.0f;

    /* renamed from: r */
    public float f92037r = 0.0f;

    /* renamed from: s */
    public float f92038s = 0.0f;

    /* renamed from: u */
    public int f92041u = 0;

    /* renamed from: J */
    public float f92018J = Float.NaN;

    /* renamed from: O */
    public float f92019O = Float.NaN;

    /* renamed from: Q */
    public int f92020Q = -1;

    /* renamed from: Z */
    public LinkedHashMap<String, ConstraintAttribute> f92021Z = new LinkedHashMap<>();

    /* renamed from: k0 */
    public int f92029k0 = 0;

    /* renamed from: q0 */
    public double[] f92036q0 = new double[18];

    /* renamed from: t0 */
    public double[] f92040t0 = new double[18];

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0023. Please report as an issue. */
    /* renamed from: a */
    public void m58737a(HashMap<String, ViewSpline> splines, int mFramePosition) {
        for (String str : splines.keySet()) {
            ViewSpline viewSpline = splines.get(str);
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c = 5;
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c = 7;
                        break;
                    }
                    break;
                case -760884510:
                    if (str.equals(Key.PIVOT_X)) {
                        c = '\b';
                        break;
                    }
                    break;
                case -760884509:
                    if (str.equals(Key.PIVOT_Y)) {
                        c = '\t';
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c = 11;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c = '\r';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92028k) ? 0.0f : this.f92028k);
                    break;
                case 1:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92030l) ? 0.0f : this.f92030l);
                    break;
                case 2:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92035q) ? 0.0f : this.f92035q);
                    break;
                case 3:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92037r) ? 0.0f : this.f92037r);
                    break;
                case 4:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92038s) ? 0.0f : this.f92038s);
                    break;
                case 5:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92019O) ? 0.0f : this.f92019O);
                    break;
                case 6:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92031m) ? 1.0f : this.f92031m);
                    break;
                case 7:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92032n) ? 1.0f : this.f92032n);
                    break;
                case '\b':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92033o) ? 0.0f : this.f92033o);
                    break;
                case '\t':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92034p) ? 0.0f : this.f92034p);
                    break;
                case '\n':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92027j) ? 0.0f : this.f92027j);
                    break;
                case 11:
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92026i) ? 0.0f : this.f92026i);
                    break;
                case '\f':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92018J) ? 0.0f : this.f92018J);
                    break;
                case '\r':
                    viewSpline.setPoint(mFramePosition, Float.isNaN(this.f92022e) ? 1.0f : this.f92022e);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.f92021Z.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = this.f92021Z.get(str2);
                            if (viewSpline instanceof ViewSpline.CustomSet) {
                                ((ViewSpline.CustomSet) viewSpline).setPoint(mFramePosition, constraintAttribute);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " ViewSpline not a CustomSet frame = " + mFramePosition + ", value" + constraintAttribute.getValueToInterpolate() + viewSpline);
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                        break;
                    }
            }
        }
    }

    /* renamed from: b */
    public void m58738b(View view) {
        this.f92024g = view.getVisibility();
        this.f92022e = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.f92025h = false;
        this.f92026i = view.getElevation();
        this.f92027j = view.getRotation();
        this.f92028k = view.getRotationX();
        this.f92030l = view.getRotationY();
        this.f92031m = view.getScaleX();
        this.f92032n = view.getScaleY();
        this.f92033o = view.getPivotX();
        this.f92034p = view.getPivotY();
        this.f92035q = view.getTranslationX();
        this.f92037r = view.getTranslationY();
        this.f92038s = view.getTranslationZ();
    }

    /* renamed from: c */
    public void m58739c(ConstraintSet.Constraint c) {
        ConstraintSet.PropertySet propertySet = c.propertySet;
        int i = propertySet.mVisibilityMode;
        this.f92023f = i;
        int i2 = propertySet.visibility;
        this.f92024g = i2;
        this.f92022e = (i2 == 0 || i != 0) ? propertySet.alpha : 0.0f;
        ConstraintSet.Transform transform = c.transform;
        this.f92025h = transform.applyElevation;
        this.f92026i = transform.elevation;
        this.f92027j = transform.rotation;
        this.f92028k = transform.rotationX;
        this.f92030l = transform.rotationY;
        this.f92031m = transform.scaleX;
        this.f92032n = transform.scaleY;
        this.f92033o = transform.transformPivotX;
        this.f92034p = transform.transformPivotY;
        this.f92035q = transform.translationX;
        this.f92037r = transform.translationY;
        this.f92038s = transform.translationZ;
        this.f92039t = Easing.getInterpolator(c.motion.mTransitionEasing);
        ConstraintSet.Motion motion = c.motion;
        this.f92018J = motion.mPathRotate;
        this.f92041u = motion.mDrawPath;
        this.f92020Q = motion.mAnimateRelativeTo;
        this.f92019O = c.propertySet.mProgress;
        for (String str : c.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = c.mCustomConstraints.get(str);
            if (constraintAttribute.isContinuous()) {
                this.f92021Z.put(str, constraintAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public int compareTo(zoj o) {
        return Float.compare(this.f92042v, o.f92042v);
    }

    /* renamed from: e */
    public final boolean m58741e(float a, float b) {
        return (Float.isNaN(a) || Float.isNaN(b)) ? Float.isNaN(a) != Float.isNaN(b) : Math.abs(a - b) > 1.0E-6f;
    }

    /* renamed from: f */
    public void m58742f(zoj points, HashSet<String> keySet) {
        if (m58741e(this.f92022e, points.f92022e)) {
            keySet.add("alpha");
        }
        if (m58741e(this.f92026i, points.f92026i)) {
            keySet.add("elevation");
        }
        int i = this.f92024g;
        int i2 = points.f92024g;
        if (i != i2 && this.f92023f == 0 && (i == 0 || i2 == 0)) {
            keySet.add("alpha");
        }
        if (m58741e(this.f92027j, points.f92027j)) {
            keySet.add("rotation");
        }
        if (!Float.isNaN(this.f92018J) || !Float.isNaN(points.f92018J)) {
            keySet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f92019O) || !Float.isNaN(points.f92019O)) {
            keySet.add("progress");
        }
        if (m58741e(this.f92028k, points.f92028k)) {
            keySet.add("rotationX");
        }
        if (m58741e(this.f92030l, points.f92030l)) {
            keySet.add("rotationY");
        }
        if (m58741e(this.f92033o, points.f92033o)) {
            keySet.add(Key.PIVOT_X);
        }
        if (m58741e(this.f92034p, points.f92034p)) {
            keySet.add(Key.PIVOT_Y);
        }
        if (m58741e(this.f92031m, points.f92031m)) {
            keySet.add("scaleX");
        }
        if (m58741e(this.f92032n, points.f92032n)) {
            keySet.add("scaleY");
        }
        if (m58741e(this.f92035q, points.f92035q)) {
            keySet.add("translationX");
        }
        if (m58741e(this.f92037r, points.f92037r)) {
            keySet.add("translationY");
        }
        if (m58741e(this.f92038s, points.f92038s)) {
            keySet.add("translationZ");
        }
    }

    /* renamed from: g */
    public void m58743g(zoj points, boolean[] mask, String[] custom) {
        mask[0] = mask[0] | m58741e(this.f92042v, points.f92042v);
        mask[1] = mask[1] | m58741e(this.f92043w, points.f92043w);
        mask[2] = mask[2] | m58741e(this.f92044x, points.f92044x);
        mask[3] = mask[3] | m58741e(this.f92045y, points.f92045y);
        mask[4] = m58741e(this.f92046z, points.f92046z) | mask[4];
    }

    /* renamed from: h */
    public void m58744h(double[] data, int[] toUse) {
        float[] fArr = {this.f92042v, this.f92043w, this.f92044x, this.f92045y, this.f92046z, this.f92022e, this.f92026i, this.f92027j, this.f92028k, this.f92030l, this.f92031m, this.f92032n, this.f92033o, this.f92034p, this.f92035q, this.f92037r, this.f92038s, this.f92018J};
        int i = 0;
        for (int i2 : toUse) {
            if (i2 < 18) {
                data[i] = fArr[r2];
                i++;
            }
        }
    }

    /* renamed from: i */
    public int m58745i(String name, double[] value, int offset) {
        ConstraintAttribute constraintAttribute = this.f92021Z.get(name);
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            value[offset] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        constraintAttribute.getValuesToInterpolate(new float[numberOfInterpolatedValues]);
        int i = 0;
        while (i < numberOfInterpolatedValues) {
            value[offset] = r0[i];
            i++;
            offset++;
        }
        return numberOfInterpolatedValues;
    }

    /* renamed from: j */
    public int m58746j(String name) {
        return this.f92021Z.get(name).numberOfInterpolatedValues();
    }

    /* renamed from: k */
    public boolean m58747k(String name) {
        return this.f92021Z.containsKey(name);
    }

    /* renamed from: l */
    public void m58748l(float x, float y, float w, float h) {
        this.f92043w = x;
        this.f92044x = y;
        this.f92045y = w;
        this.f92046z = h;
    }

    /* renamed from: m */
    public void m58749m(Rect rect, View view, int rotation, float prevous) {
        m58748l(rect.left, rect.top, rect.width(), rect.height());
        m58738b(view);
        this.f92033o = Float.NaN;
        this.f92034p = Float.NaN;
        if (rotation == 1) {
            this.f92027j = prevous - 90.0f;
        } else {
            if (rotation != 2) {
                return;
            }
            this.f92027j = prevous + 90.0f;
        }
    }

    /* renamed from: n */
    public void m58750n(Rect cw, ConstraintSet constraintSet, int rotation, int viewId) {
        m58748l(cw.left, cw.top, cw.width(), cw.height());
        m58739c(constraintSet.getParameters(viewId));
        if (rotation != 1) {
            if (rotation != 2) {
                if (rotation != 3) {
                    if (rotation != 4) {
                        return;
                    }
                }
            }
            float f = this.f92027j + 90.0f;
            this.f92027j = f;
            if (f > 180.0f) {
                this.f92027j = f - 360.0f;
                return;
            }
            return;
        }
        this.f92027j -= 90.0f;
    }

    /* renamed from: o */
    public void m58751o(View view) {
        m58748l(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        m58738b(view);
    }
}
