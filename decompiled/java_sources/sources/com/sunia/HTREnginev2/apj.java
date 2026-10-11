package com.sunia.HTREnginev2;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* loaded from: classes3.dex */
public class apj implements Comparable<apj> {

    /* renamed from: u0 */
    public static final String f64937u0 = "MotionPaths";

    /* renamed from: v0 */
    public static final boolean f64938v0 = false;

    /* renamed from: w0 */
    public static final int f64939w0 = 1;

    /* renamed from: x0 */
    public static final int f64940x0 = 2;

    /* renamed from: y0 */
    public static String[] f64941y0 = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: g */
    public int f64948g;

    /* renamed from: t */
    public Easing f64963t;

    /* renamed from: v */
    public float f64966v;

    /* renamed from: w */
    public float f64967w;

    /* renamed from: x */
    public float f64968x;

    /* renamed from: y */
    public float f64969y;

    /* renamed from: z */
    public float f64970z;

    /* renamed from: e */
    public float f64946e = 1.0f;

    /* renamed from: f */
    public int f64947f = 0;

    /* renamed from: h */
    public boolean f64949h = false;

    /* renamed from: i */
    public float f64950i = 0.0f;

    /* renamed from: j */
    public float f64951j = 0.0f;

    /* renamed from: k */
    public float f64952k = 0.0f;

    /* renamed from: l */
    public float f64954l = 0.0f;

    /* renamed from: m */
    public float f64955m = 1.0f;

    /* renamed from: n */
    public float f64956n = 1.0f;

    /* renamed from: o */
    public float f64957o = Float.NaN;

    /* renamed from: p */
    public float f64958p = Float.NaN;

    /* renamed from: q */
    public float f64959q = 0.0f;

    /* renamed from: r */
    public float f64961r = 0.0f;

    /* renamed from: s */
    public float f64962s = 0.0f;

    /* renamed from: u */
    public int f64965u = 0;

    /* renamed from: J */
    public float f64942J = Float.NaN;

    /* renamed from: O */
    public float f64943O = Float.NaN;

    /* renamed from: Q */
    public int f64944Q = -1;

    /* renamed from: Z */
    public LinkedHashMap<String, CustomVariable> f64945Z = new LinkedHashMap<>();

    /* renamed from: k0 */
    public int f64953k0 = 0;

    /* renamed from: q0 */
    public double[] f64960q0 = new double[18];

    /* renamed from: t0 */
    public double[] f64964t0 = new double[18];

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0023. Please report as an issue. */
    /* renamed from: a */
    public void m53061a(HashMap<String, SplineSet> hashMap, int i) {
        for (String str : hashMap.keySet()) {
            SplineSet splineSet = hashMap.get(str);
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
                case -1249320804:
                    if (str.equals("rotationZ")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c = 6;
                        break;
                    }
                    break;
                case -987906986:
                    if (str.equals("pivotX")) {
                        c = 7;
                        break;
                    }
                    break;
                case -987906985:
                    if (str.equals("pivotY")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c = 11;
                        break;
                    }
                    break;
                case 803192288:
                    if (str.equals("pathRotate")) {
                        c = '\f';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    splineSet.setPoint(i, Float.isNaN(this.f64952k) ? 0.0f : this.f64952k);
                    break;
                case 1:
                    splineSet.setPoint(i, Float.isNaN(this.f64954l) ? 0.0f : this.f64954l);
                    break;
                case 2:
                    splineSet.setPoint(i, Float.isNaN(this.f64951j) ? 0.0f : this.f64951j);
                    break;
                case 3:
                    splineSet.setPoint(i, Float.isNaN(this.f64959q) ? 0.0f : this.f64959q);
                    break;
                case 4:
                    splineSet.setPoint(i, Float.isNaN(this.f64961r) ? 0.0f : this.f64961r);
                    break;
                case 5:
                    splineSet.setPoint(i, Float.isNaN(this.f64962s) ? 0.0f : this.f64962s);
                    break;
                case 6:
                    splineSet.setPoint(i, Float.isNaN(this.f64943O) ? 0.0f : this.f64943O);
                    break;
                case 7:
                    splineSet.setPoint(i, Float.isNaN(this.f64957o) ? 0.0f : this.f64957o);
                    break;
                case '\b':
                    splineSet.setPoint(i, Float.isNaN(this.f64958p) ? 0.0f : this.f64958p);
                    break;
                case '\t':
                    splineSet.setPoint(i, Float.isNaN(this.f64955m) ? 1.0f : this.f64955m);
                    break;
                case '\n':
                    splineSet.setPoint(i, Float.isNaN(this.f64956n) ? 1.0f : this.f64956n);
                    break;
                case 11:
                    splineSet.setPoint(i, Float.isNaN(this.f64946e) ? 1.0f : this.f64946e);
                    break;
                case '\f':
                    splineSet.setPoint(i, Float.isNaN(this.f64942J) ? 0.0f : this.f64942J);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.f64945Z.containsKey(str2)) {
                            CustomVariable customVariable = this.f64945Z.get(str2);
                            if (splineSet instanceof SplineSet.CustomSpline) {
                                ((SplineSet.CustomSpline) splineSet).setPoint(i, customVariable);
                                break;
                            } else {
                                Utils.loge("MotionPaths", str + " ViewSpline not a CustomSet frame = " + i + ", value" + customVariable.getValueToInterpolate() + splineSet);
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        Utils.loge("MotionPaths", "UNKNOWN spline " + str);
                        break;
                    }
            }
        }
    }

    /* renamed from: b */
    public void m53062b(MotionWidget motionWidget) {
        this.f64948g = motionWidget.getVisibility();
        this.f64946e = motionWidget.getVisibility() != 4 ? 0.0f : motionWidget.getAlpha();
        this.f64949h = false;
        this.f64951j = motionWidget.getRotationZ();
        this.f64952k = motionWidget.getRotationX();
        this.f64954l = motionWidget.getRotationY();
        this.f64955m = motionWidget.getScaleX();
        this.f64956n = motionWidget.getScaleY();
        this.f64957o = motionWidget.getPivotX();
        this.f64958p = motionWidget.getPivotY();
        this.f64959q = motionWidget.getTranslationX();
        this.f64961r = motionWidget.getTranslationY();
        this.f64962s = motionWidget.getTranslationZ();
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.f64945Z.put(str, customAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(apj apjVar) {
        return Float.compare(this.f64966v, apjVar.f64966v);
    }

    /* renamed from: d */
    public final boolean m53064d(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    /* renamed from: e */
    public void m53065e(apj apjVar, HashSet<String> hashSet) {
        if (m53064d(this.f64946e, apjVar.f64946e)) {
            hashSet.add("alpha");
        }
        if (m53064d(this.f64950i, apjVar.f64950i)) {
            hashSet.add("translationZ");
        }
        int i = this.f64948g;
        int i2 = apjVar.f64948g;
        if (i != i2 && this.f64947f == 0 && (i == 4 || i2 == 4)) {
            hashSet.add("alpha");
        }
        if (m53064d(this.f64951j, apjVar.f64951j)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.f64942J) || !Float.isNaN(apjVar.f64942J)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.f64943O) || !Float.isNaN(apjVar.f64943O)) {
            hashSet.add("progress");
        }
        if (m53064d(this.f64952k, apjVar.f64952k)) {
            hashSet.add("rotationX");
        }
        if (m53064d(this.f64954l, apjVar.f64954l)) {
            hashSet.add("rotationY");
        }
        if (m53064d(this.f64957o, apjVar.f64957o)) {
            hashSet.add("pivotX");
        }
        if (m53064d(this.f64958p, apjVar.f64958p)) {
            hashSet.add("pivotY");
        }
        if (m53064d(this.f64955m, apjVar.f64955m)) {
            hashSet.add("scaleX");
        }
        if (m53064d(this.f64956n, apjVar.f64956n)) {
            hashSet.add("scaleY");
        }
        if (m53064d(this.f64959q, apjVar.f64959q)) {
            hashSet.add("translationX");
        }
        if (m53064d(this.f64961r, apjVar.f64961r)) {
            hashSet.add("translationY");
        }
        if (m53064d(this.f64962s, apjVar.f64962s)) {
            hashSet.add("translationZ");
        }
        if (m53064d(this.f64950i, apjVar.f64950i)) {
            hashSet.add("elevation");
        }
    }

    /* renamed from: f */
    public void m53066f(apj apjVar, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | m53064d(this.f64966v, apjVar.f64966v);
        zArr[1] = zArr[1] | m53064d(this.f64967w, apjVar.f64967w);
        zArr[2] = zArr[2] | m53064d(this.f64968x, apjVar.f64968x);
        zArr[3] = zArr[3] | m53064d(this.f64969y, apjVar.f64969y);
        zArr[4] = m53064d(this.f64970z, apjVar.f64970z) | zArr[4];
    }

    /* renamed from: g */
    public void m53067g(double[] dArr, int[] iArr) {
        float[] fArr = {this.f64966v, this.f64967w, this.f64968x, this.f64969y, this.f64970z, this.f64946e, this.f64950i, this.f64951j, this.f64952k, this.f64954l, this.f64955m, this.f64956n, this.f64957o, this.f64958p, this.f64959q, this.f64961r, this.f64962s, this.f64942J};
        int i = 0;
        for (int i2 : iArr) {
            if (i2 < 18) {
                dArr[i] = fArr[r2];
                i++;
            }
        }
    }

    /* renamed from: h */
    public int m53068h(String str, double[] dArr, int i) {
        CustomVariable customVariable = this.f64945Z.get(str);
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i] = customVariable.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        customVariable.getValuesToInterpolate(new float[numberOfInterpolatedValues]);
        int i2 = 0;
        while (i2 < numberOfInterpolatedValues) {
            dArr[i] = r0[i2];
            i2++;
            i++;
        }
        return numberOfInterpolatedValues;
    }

    /* renamed from: i */
    public int m53069i(String str) {
        return this.f64945Z.get(str).numberOfInterpolatedValues();
    }

    /* renamed from: j */
    public boolean m53070j(String str) {
        return this.f64945Z.containsKey(str);
    }

    /* renamed from: k */
    public void m53071k(float f, float f2, float f3, float f4) {
        this.f64967w = f;
        this.f64968x = f2;
        this.f64969y = f3;
        this.f64970z = f4;
    }

    /* renamed from: l */
    public void m53072l(MotionWidget motionWidget) {
        m53071k(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        m53062b(motionWidget);
    }

    /* renamed from: m */
    public void m53073m(Rect rect, MotionWidget motionWidget, int i, float f) {
        m53071k(rect.left, rect.top, rect.width(), rect.height());
        m53062b(motionWidget);
        this.f64957o = Float.NaN;
        this.f64958p = Float.NaN;
        if (i == 1) {
            this.f64951j = f - 90.0f;
        } else {
            if (i != 2) {
                return;
            }
            this.f64951j = f + 90.0f;
        }
    }
}
