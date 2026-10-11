package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.C0503R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class KeyTimeCycle extends Key {
    public static final int KEY_TYPE = 3;
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_SHAPE = "waveShape";

    /* renamed from: w */
    public static final String f3649w = "KeyTimeCycle";

    /* renamed from: x */
    public static final String f3650x = "KeyTimeCycle";

    /* renamed from: e */
    public String f3651e;

    /* renamed from: f */
    public int f3652f = -1;

    /* renamed from: g */
    public float f3653g = Float.NaN;

    /* renamed from: h */
    public float f3654h = Float.NaN;

    /* renamed from: i */
    public float f3655i = Float.NaN;

    /* renamed from: j */
    public float f3656j = Float.NaN;

    /* renamed from: k */
    public float f3657k = Float.NaN;

    /* renamed from: l */
    public float f3658l = Float.NaN;

    /* renamed from: m */
    public float f3659m = Float.NaN;

    /* renamed from: n */
    public float f3660n = Float.NaN;

    /* renamed from: o */
    public float f3661o = Float.NaN;

    /* renamed from: p */
    public float f3662p = Float.NaN;

    /* renamed from: q */
    public float f3663q = Float.NaN;

    /* renamed from: r */
    public float f3664r = Float.NaN;

    /* renamed from: s */
    public int f3665s = 0;

    /* renamed from: t */
    public String f3666t = null;

    /* renamed from: u */
    public float f3667u = Float.NaN;

    /* renamed from: v */
    public float f3668v = 0.0f;

    /* renamed from: androidx.constraintlayout.motion.widget.KeyTimeCycle$a */
    /* loaded from: classes3.dex */
    public static class C0467a {

        /* renamed from: a */
        public static final int f3669a = 1;

        /* renamed from: b */
        public static final int f3670b = 2;

        /* renamed from: c */
        public static final int f3671c = 4;

        /* renamed from: d */
        public static final int f3672d = 5;

        /* renamed from: e */
        public static final int f3673e = 6;

        /* renamed from: f */
        public static final int f3674f = 8;

        /* renamed from: g */
        public static final int f3675g = 7;

        /* renamed from: h */
        public static final int f3676h = 9;

        /* renamed from: i */
        public static final int f3677i = 10;

        /* renamed from: j */
        public static final int f3678j = 12;

        /* renamed from: k */
        public static final int f3679k = 13;

        /* renamed from: l */
        public static final int f3680l = 14;

        /* renamed from: m */
        public static final int f3681m = 15;

        /* renamed from: n */
        public static final int f3682n = 16;

        /* renamed from: o */
        public static final int f3683o = 17;

        /* renamed from: p */
        public static final int f3684p = 18;

        /* renamed from: q */
        public static final int f3685q = 19;

        /* renamed from: r */
        public static final int f3686r = 20;

        /* renamed from: s */
        public static final int f3687s = 21;

        /* renamed from: t */
        public static SparseIntArray f3688t;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3688t = sparseIntArray;
            sparseIntArray.append(C0503R.styleable.KeyTimeCycle_android_alpha, 1);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_elevation, 2);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_rotation, 4);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_rotationX, 5);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_rotationY, 6);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_scaleX, 7);
            f3688t.append(C0503R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            f3688t.append(C0503R.styleable.KeyTimeCycle_transitionEasing, 9);
            f3688t.append(C0503R.styleable.KeyTimeCycle_motionTarget, 10);
            f3688t.append(C0503R.styleable.KeyTimeCycle_framePosition, 12);
            f3688t.append(C0503R.styleable.KeyTimeCycle_curveFit, 13);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_scaleY, 14);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_translationX, 15);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_translationY, 16);
            f3688t.append(C0503R.styleable.KeyTimeCycle_android_translationZ, 17);
            f3688t.append(C0503R.styleable.KeyTimeCycle_motionProgress, 18);
            f3688t.append(C0503R.styleable.KeyTimeCycle_wavePeriod, 20);
            f3688t.append(C0503R.styleable.KeyTimeCycle_waveOffset, 21);
            f3688t.append(C0503R.styleable.KeyTimeCycle_waveShape, 19);
        }

        /* renamed from: a */
        public static void m1833a(KeyTimeCycle c, TypedArray a) {
            int indexCount = a.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = a.getIndex(i);
                switch (f3688t.get(index)) {
                    case 1:
                        c.f3653g = a.getFloat(index, c.f3653g);
                        break;
                    case 2:
                        c.f3654h = a.getDimension(index, c.f3654h);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f3688t.get(index));
                        break;
                    case 4:
                        c.f3655i = a.getFloat(index, c.f3655i);
                        break;
                    case 5:
                        c.f3656j = a.getFloat(index, c.f3656j);
                        break;
                    case 6:
                        c.f3657k = a.getFloat(index, c.f3657k);
                        break;
                    case 7:
                        c.f3659m = a.getFloat(index, c.f3659m);
                        break;
                    case 8:
                        c.f3658l = a.getFloat(index, c.f3658l);
                        break;
                    case 9:
                        c.f3651e = a.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a.getResourceId(index, c.f3530b);
                            c.f3530b = resourceId;
                            if (resourceId == -1) {
                                c.f3531c = a.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (a.peekValue(index).type == 3) {
                            c.f3531c = a.getString(index);
                            break;
                        } else {
                            c.f3530b = a.getResourceId(index, c.f3530b);
                            break;
                        }
                    case 12:
                        c.f3529a = a.getInt(index, c.f3529a);
                        break;
                    case 13:
                        c.f3652f = a.getInteger(index, c.f3652f);
                        break;
                    case 14:
                        c.f3660n = a.getFloat(index, c.f3660n);
                        break;
                    case 15:
                        c.f3661o = a.getDimension(index, c.f3661o);
                        break;
                    case 16:
                        c.f3662p = a.getDimension(index, c.f3662p);
                        break;
                    case 17:
                        c.f3663q = a.getDimension(index, c.f3663q);
                        break;
                    case 18:
                        c.f3664r = a.getFloat(index, c.f3664r);
                        break;
                    case 19:
                        if (a.peekValue(index).type == 3) {
                            c.f3666t = a.getString(index);
                            c.f3665s = 7;
                            break;
                        } else {
                            c.f3665s = a.getInt(index, c.f3665s);
                            break;
                        }
                    case 20:
                        c.f3667u = a.getFloat(index, c.f3667u);
                        break;
                    case 21:
                        if (a.peekValue(index).type == 5) {
                            c.f3668v = a.getDimension(index, c.f3668v);
                            break;
                        } else {
                            c.f3668v = a.getFloat(index, c.f3668v);
                            break;
                        }
                }
            }
        }
    }

    public KeyTimeCycle() {
        this.mType = 3;
        this.f3532d = new HashMap<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0089, code lost:
    
        if (r1.equals("scaleY") == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addTimeValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.utils.ViewTimeCycle> r11) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTimeCycle.addTimeValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyTimeCycle keyTimeCycle = (KeyTimeCycle) src;
        this.f3651e = keyTimeCycle.f3651e;
        this.f3652f = keyTimeCycle.f3652f;
        this.f3665s = keyTimeCycle.f3665s;
        this.f3667u = keyTimeCycle.f3667u;
        this.f3668v = keyTimeCycle.f3668v;
        this.f3664r = keyTimeCycle.f3664r;
        this.f3653g = keyTimeCycle.f3653g;
        this.f3654h = keyTimeCycle.f3654h;
        this.f3655i = keyTimeCycle.f3655i;
        this.f3658l = keyTimeCycle.f3658l;
        this.f3656j = keyTimeCycle.f3656j;
        this.f3657k = keyTimeCycle.f3657k;
        this.f3659m = keyTimeCycle.f3659m;
        this.f3660n = keyTimeCycle.f3660n;
        this.f3661o = keyTimeCycle.f3661o;
        this.f3662p = keyTimeCycle.f3662p;
        this.f3663q = keyTimeCycle.f3663q;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
        if (!Float.isNaN(this.f3653g)) {
            attributes.add("alpha");
        }
        if (!Float.isNaN(this.f3654h)) {
            attributes.add("elevation");
        }
        if (!Float.isNaN(this.f3655i)) {
            attributes.add("rotation");
        }
        if (!Float.isNaN(this.f3656j)) {
            attributes.add("rotationX");
        }
        if (!Float.isNaN(this.f3657k)) {
            attributes.add("rotationY");
        }
        if (!Float.isNaN(this.f3661o)) {
            attributes.add("translationX");
        }
        if (!Float.isNaN(this.f3662p)) {
            attributes.add("translationY");
        }
        if (!Float.isNaN(this.f3663q)) {
            attributes.add("translationZ");
        }
        if (!Float.isNaN(this.f3658l)) {
            attributes.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f3659m)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.f3660n)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.f3664r)) {
            attributes.add("progress");
        }
        if (this.f3532d.size() > 0) {
            Iterator<String> it2 = this.f3532d.keySet().iterator();
            while (it2.hasNext()) {
                attributes.add("CUSTOM," + it2.next());
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        C0467a.m1833a(this, context.obtainStyledAttributes(attrs, C0503R.styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setInterpolation(HashMap<String, Integer> interpolation) {
        if (this.f3652f == -1) {
            return;
        }
        if (!Float.isNaN(this.f3653g)) {
            interpolation.put("alpha", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3654h)) {
            interpolation.put("elevation", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3655i)) {
            interpolation.put("rotation", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3656j)) {
            interpolation.put("rotationX", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3657k)) {
            interpolation.put("rotationY", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3661o)) {
            interpolation.put("translationX", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3662p)) {
            interpolation.put("translationY", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3663q)) {
            interpolation.put("translationZ", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3658l)) {
            interpolation.put("transitionPathRotate", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3659m)) {
            interpolation.put("scaleX", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3659m)) {
            interpolation.put("scaleY", Integer.valueOf(this.f3652f));
        }
        if (!Float.isNaN(this.f3664r)) {
            interpolation.put("progress", Integer.valueOf(this.f3652f));
        }
        if (this.f3532d.size() > 0) {
            Iterator<String> it2 = this.f3532d.keySet().iterator();
            while (it2.hasNext()) {
                interpolation.put("CUSTOM," + it2.next(), Integer.valueOf(this.f3652f));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c = 65535;
        switch (tag.hashCode()) {
            case -1913008125:
                if (tag.equals(Key.MOTIONPROGRESS)) {
                    c = 0;
                    break;
                }
                break;
            case -1812823328:
                if (tag.equals("transitionEasing")) {
                    c = 1;
                    break;
                }
                break;
            case -1249320806:
                if (tag.equals("rotationX")) {
                    c = 2;
                    break;
                }
                break;
            case -1249320805:
                if (tag.equals("rotationY")) {
                    c = 3;
                    break;
                }
                break;
            case -1225497657:
                if (tag.equals("translationX")) {
                    c = 4;
                    break;
                }
                break;
            case -1225497656:
                if (tag.equals("translationY")) {
                    c = 5;
                    break;
                }
                break;
            case -1225497655:
                if (tag.equals("translationZ")) {
                    c = 6;
                    break;
                }
                break;
            case -908189618:
                if (tag.equals("scaleX")) {
                    c = 7;
                    break;
                }
                break;
            case -908189617:
                if (tag.equals("scaleY")) {
                    c = '\b';
                    break;
                }
                break;
            case -40300674:
                if (tag.equals("rotation")) {
                    c = '\t';
                    break;
                }
                break;
            case -4379043:
                if (tag.equals("elevation")) {
                    c = '\n';
                    break;
                }
                break;
            case 37232917:
                if (tag.equals("transitionPathRotate")) {
                    c = 11;
                    break;
                }
                break;
            case 92909918:
                if (tag.equals("alpha")) {
                    c = '\f';
                    break;
                }
                break;
            case 156108012:
                if (tag.equals("waveOffset")) {
                    c = '\r';
                    break;
                }
                break;
            case 184161818:
                if (tag.equals("wavePeriod")) {
                    c = 14;
                    break;
                }
                break;
            case 579057826:
                if (tag.equals("curveFit")) {
                    c = 15;
                    break;
                }
                break;
            case 1532805160:
                if (tag.equals("waveShape")) {
                    c = 16;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f3664r = m1712c(value);
                return;
            case 1:
                this.f3651e = value.toString();
                return;
            case 2:
                this.f3656j = m1712c(value);
                return;
            case 3:
                this.f3657k = m1712c(value);
                return;
            case 4:
                this.f3661o = m1712c(value);
                return;
            case 5:
                this.f3662p = m1712c(value);
                return;
            case 6:
                this.f3663q = m1712c(value);
                return;
            case 7:
                this.f3659m = m1712c(value);
                return;
            case '\b':
                this.f3660n = m1712c(value);
                return;
            case '\t':
                this.f3655i = m1712c(value);
                return;
            case '\n':
                this.f3654h = m1712c(value);
                return;
            case 11:
                this.f3658l = m1712c(value);
                return;
            case '\f':
                this.f3653g = m1712c(value);
                return;
            case '\r':
                this.f3668v = m1712c(value);
                return;
            case 14:
                this.f3667u = m1712c(value);
                return;
            case 15:
                this.f3652f = m1713d(value);
                return;
            case 16:
                if (value instanceof Integer) {
                    this.f3665s = m1713d(value);
                    return;
                } else {
                    this.f3665s = 7;
                    this.f3666t = value.toString();
                    return;
                }
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo72118clone() {
        return new KeyTimeCycle().copy(this);
    }
}
