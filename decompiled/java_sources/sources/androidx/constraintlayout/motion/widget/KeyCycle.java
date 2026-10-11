package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class KeyCycle extends Key {
    public static final int KEY_TYPE = 4;
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_PHASE = "wavePhase";
    public static final String WAVE_SHAPE = "waveShape";

    /* renamed from: y */
    public static final String f3572y = "KeyCycle";

    /* renamed from: z */
    public static final String f3573z = "KeyCycle";

    /* renamed from: e */
    public String f3574e = null;

    /* renamed from: f */
    public int f3575f = 0;

    /* renamed from: g */
    public int f3576g = -1;

    /* renamed from: h */
    public String f3577h = null;

    /* renamed from: i */
    public float f3578i = Float.NaN;

    /* renamed from: j */
    public float f3579j = 0.0f;

    /* renamed from: k */
    public float f3580k = 0.0f;

    /* renamed from: l */
    public float f3581l = Float.NaN;

    /* renamed from: m */
    public int f3582m = -1;

    /* renamed from: n */
    public float f3583n = Float.NaN;

    /* renamed from: o */
    public float f3584o = Float.NaN;

    /* renamed from: p */
    public float f3585p = Float.NaN;

    /* renamed from: q */
    public float f3586q = Float.NaN;

    /* renamed from: r */
    public float f3587r = Float.NaN;

    /* renamed from: s */
    public float f3588s = Float.NaN;

    /* renamed from: t */
    public float f3589t = Float.NaN;

    /* renamed from: u */
    public float f3590u = Float.NaN;

    /* renamed from: v */
    public float f3591v = Float.NaN;

    /* renamed from: w */
    public float f3592w = Float.NaN;

    /* renamed from: x */
    public float f3593x = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.KeyCycle$a */
    /* loaded from: classes3.dex */
    public static class C0465a {

        /* renamed from: a */
        public static final int f3594a = 1;

        /* renamed from: b */
        public static final int f3595b = 2;

        /* renamed from: c */
        public static final int f3596c = 3;

        /* renamed from: d */
        public static final int f3597d = 4;

        /* renamed from: e */
        public static final int f3598e = 5;

        /* renamed from: f */
        public static final int f3599f = 6;

        /* renamed from: g */
        public static final int f3600g = 7;

        /* renamed from: h */
        public static final int f3601h = 8;

        /* renamed from: i */
        public static final int f3602i = 9;

        /* renamed from: j */
        public static final int f3603j = 10;

        /* renamed from: k */
        public static final int f3604k = 11;

        /* renamed from: l */
        public static final int f3605l = 12;

        /* renamed from: m */
        public static final int f3606m = 13;

        /* renamed from: n */
        public static final int f3607n = 14;

        /* renamed from: o */
        public static final int f3608o = 15;

        /* renamed from: p */
        public static final int f3609p = 16;

        /* renamed from: q */
        public static final int f3610q = 17;

        /* renamed from: r */
        public static final int f3611r = 18;

        /* renamed from: s */
        public static final int f3612s = 19;

        /* renamed from: t */
        public static final int f3613t = 20;

        /* renamed from: u */
        public static final int f3614u = 21;

        /* renamed from: v */
        public static SparseIntArray f3615v;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3615v = sparseIntArray;
            sparseIntArray.append(C0503R.styleable.KeyCycle_motionTarget, 1);
            f3615v.append(C0503R.styleable.KeyCycle_framePosition, 2);
            f3615v.append(C0503R.styleable.KeyCycle_transitionEasing, 3);
            f3615v.append(C0503R.styleable.KeyCycle_curveFit, 4);
            f3615v.append(C0503R.styleable.KeyCycle_waveShape, 5);
            f3615v.append(C0503R.styleable.KeyCycle_wavePeriod, 6);
            f3615v.append(C0503R.styleable.KeyCycle_waveOffset, 7);
            f3615v.append(C0503R.styleable.KeyCycle_waveVariesBy, 8);
            f3615v.append(C0503R.styleable.KeyCycle_android_alpha, 9);
            f3615v.append(C0503R.styleable.KeyCycle_android_elevation, 10);
            f3615v.append(C0503R.styleable.KeyCycle_android_rotation, 11);
            f3615v.append(C0503R.styleable.KeyCycle_android_rotationX, 12);
            f3615v.append(C0503R.styleable.KeyCycle_android_rotationY, 13);
            f3615v.append(C0503R.styleable.KeyCycle_transitionPathRotate, 14);
            f3615v.append(C0503R.styleable.KeyCycle_android_scaleX, 15);
            f3615v.append(C0503R.styleable.KeyCycle_android_scaleY, 16);
            f3615v.append(C0503R.styleable.KeyCycle_android_translationX, 17);
            f3615v.append(C0503R.styleable.KeyCycle_android_translationY, 18);
            f3615v.append(C0503R.styleable.KeyCycle_android_translationZ, 19);
            f3615v.append(C0503R.styleable.KeyCycle_motionProgress, 20);
            f3615v.append(C0503R.styleable.KeyCycle_wavePhase, 21);
        }

        /* renamed from: b */
        public static void m1786b(KeyCycle c, TypedArray a) {
            int indexCount = a.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = a.getIndex(i);
                switch (f3615v.get(index)) {
                    case 1:
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
                    case 2:
                        c.f3529a = a.getInt(index, c.f3529a);
                        break;
                    case 3:
                        c.f3574e = a.getString(index);
                        break;
                    case 4:
                        c.f3575f = a.getInteger(index, c.f3575f);
                        break;
                    case 5:
                        if (a.peekValue(index).type == 3) {
                            c.f3577h = a.getString(index);
                            c.f3576g = 7;
                            break;
                        } else {
                            c.f3576g = a.getInt(index, c.f3576g);
                            break;
                        }
                    case 6:
                        c.f3578i = a.getFloat(index, c.f3578i);
                        break;
                    case 7:
                        if (a.peekValue(index).type == 5) {
                            c.f3579j = a.getDimension(index, c.f3579j);
                            break;
                        } else {
                            c.f3579j = a.getFloat(index, c.f3579j);
                            break;
                        }
                    case 8:
                        c.f3582m = a.getInt(index, c.f3582m);
                        break;
                    case 9:
                        c.f3583n = a.getFloat(index, c.f3583n);
                        break;
                    case 10:
                        c.f3584o = a.getDimension(index, c.f3584o);
                        break;
                    case 11:
                        c.f3585p = a.getFloat(index, c.f3585p);
                        break;
                    case 12:
                        c.f3587r = a.getFloat(index, c.f3587r);
                        break;
                    case 13:
                        c.f3588s = a.getFloat(index, c.f3588s);
                        break;
                    case 14:
                        c.f3586q = a.getFloat(index, c.f3586q);
                        break;
                    case 15:
                        c.f3589t = a.getFloat(index, c.f3589t);
                        break;
                    case 16:
                        c.f3590u = a.getFloat(index, c.f3590u);
                        break;
                    case 17:
                        c.f3591v = a.getDimension(index, c.f3591v);
                        break;
                    case 18:
                        c.f3592w = a.getDimension(index, c.f3592w);
                        break;
                    case 19:
                        c.f3593x = a.getDimension(index, c.f3593x);
                        break;
                    case 20:
                        c.f3581l = a.getFloat(index, c.f3581l);
                        break;
                    case 21:
                        c.f3580k = a.getFloat(index, c.f3580k) / 360.0f;
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f3615v.get(index));
                        break;
                }
            }
        }
    }

    public KeyCycle() {
        this.mType = 4;
        this.f3532d = new HashMap<>();
    }

    public void addCycleValues(HashMap<String, ViewOscillator> oscSet) {
        ViewOscillator viewOscillator;
        ViewOscillator viewOscillator2;
        for (String str : oscSet.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = this.f3532d.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.getType() == ConstraintAttribute.AttributeType.FLOAT_TYPE && (viewOscillator = oscSet.get(str)) != null) {
                    viewOscillator.setPoint(this.f3529a, this.f3576g, this.f3577h, this.f3582m, this.f3578i, this.f3579j, this.f3580k, constraintAttribute.getValueToInterpolate(), constraintAttribute);
                }
            } else {
                float value = getValue(str);
                if (!Float.isNaN(value) && (viewOscillator2 = oscSet.get(str)) != null) {
                    viewOscillator2.setPoint(this.f3529a, this.f3576g, this.f3577h, this.f3582m, this.f3578i, this.f3579j, this.f3580k, value);
                }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0045. Please report as an issue. */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
        Debug.logStack("KeyCycle", "add " + splines.size() + " values", 2);
        for (String str : splines.keySet()) {
            ViewSpline viewSpline = splines.get(str);
            if (viewSpline != null) {
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
                    case -40300674:
                        if (str.equals("rotation")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -4379043:
                        if (str.equals("elevation")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 37232917:
                        if (str.equals("transitionPathRotate")) {
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
                    case 156108012:
                        if (str.equals("waveOffset")) {
                            c = '\f';
                            break;
                        }
                        break;
                    case 1530034690:
                        if (str.equals("wavePhase")) {
                            c = '\r';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        viewSpline.setPoint(this.f3529a, this.f3587r);
                        break;
                    case 1:
                        viewSpline.setPoint(this.f3529a, this.f3588s);
                        break;
                    case 2:
                        viewSpline.setPoint(this.f3529a, this.f3591v);
                        break;
                    case 3:
                        viewSpline.setPoint(this.f3529a, this.f3592w);
                        break;
                    case 4:
                        viewSpline.setPoint(this.f3529a, this.f3593x);
                        break;
                    case 5:
                        viewSpline.setPoint(this.f3529a, this.f3581l);
                        break;
                    case 6:
                        viewSpline.setPoint(this.f3529a, this.f3589t);
                        break;
                    case 7:
                        viewSpline.setPoint(this.f3529a, this.f3590u);
                        break;
                    case '\b':
                        viewSpline.setPoint(this.f3529a, this.f3585p);
                        break;
                    case '\t':
                        viewSpline.setPoint(this.f3529a, this.f3584o);
                        break;
                    case '\n':
                        viewSpline.setPoint(this.f3529a, this.f3586q);
                        break;
                    case 11:
                        viewSpline.setPoint(this.f3529a, this.f3583n);
                        break;
                    case '\f':
                        viewSpline.setPoint(this.f3529a, this.f3579j);
                        break;
                    case '\r':
                        viewSpline.setPoint(this.f3529a, this.f3580k);
                        break;
                    default:
                        if (str.startsWith("CUSTOM")) {
                            break;
                        } else {
                            Log.v("WARNING KeyCycle", "  UNKNOWN  " + str);
                            break;
                        }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyCycle keyCycle = (KeyCycle) src;
        this.f3574e = keyCycle.f3574e;
        this.f3575f = keyCycle.f3575f;
        this.f3576g = keyCycle.f3576g;
        this.f3577h = keyCycle.f3577h;
        this.f3578i = keyCycle.f3578i;
        this.f3579j = keyCycle.f3579j;
        this.f3580k = keyCycle.f3580k;
        this.f3581l = keyCycle.f3581l;
        this.f3582m = keyCycle.f3582m;
        this.f3583n = keyCycle.f3583n;
        this.f3584o = keyCycle.f3584o;
        this.f3585p = keyCycle.f3585p;
        this.f3586q = keyCycle.f3586q;
        this.f3587r = keyCycle.f3587r;
        this.f3588s = keyCycle.f3588s;
        this.f3589t = keyCycle.f3589t;
        this.f3590u = keyCycle.f3590u;
        this.f3591v = keyCycle.f3591v;
        this.f3592w = keyCycle.f3592w;
        this.f3593x = keyCycle.f3593x;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
        if (!Float.isNaN(this.f3583n)) {
            attributes.add("alpha");
        }
        if (!Float.isNaN(this.f3584o)) {
            attributes.add("elevation");
        }
        if (!Float.isNaN(this.f3585p)) {
            attributes.add("rotation");
        }
        if (!Float.isNaN(this.f3587r)) {
            attributes.add("rotationX");
        }
        if (!Float.isNaN(this.f3588s)) {
            attributes.add("rotationY");
        }
        if (!Float.isNaN(this.f3589t)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.f3590u)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.f3586q)) {
            attributes.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f3591v)) {
            attributes.add("translationX");
        }
        if (!Float.isNaN(this.f3592w)) {
            attributes.add("translationY");
        }
        if (!Float.isNaN(this.f3593x)) {
            attributes.add("translationZ");
        }
        if (this.f3532d.size() > 0) {
            Iterator<String> it2 = this.f3532d.keySet().iterator();
            while (it2.hasNext()) {
                attributes.add("CUSTOM," + it2.next());
            }
        }
    }

    public float getValue(String key) {
        key.hashCode();
        char c = 65535;
        switch (key.hashCode()) {
            case -1249320806:
                if (key.equals("rotationX")) {
                    c = 0;
                    break;
                }
                break;
            case -1249320805:
                if (key.equals("rotationY")) {
                    c = 1;
                    break;
                }
                break;
            case -1225497657:
                if (key.equals("translationX")) {
                    c = 2;
                    break;
                }
                break;
            case -1225497656:
                if (key.equals("translationY")) {
                    c = 3;
                    break;
                }
                break;
            case -1225497655:
                if (key.equals("translationZ")) {
                    c = 4;
                    break;
                }
                break;
            case -1001078227:
                if (key.equals("progress")) {
                    c = 5;
                    break;
                }
                break;
            case -908189618:
                if (key.equals("scaleX")) {
                    c = 6;
                    break;
                }
                break;
            case -908189617:
                if (key.equals("scaleY")) {
                    c = 7;
                    break;
                }
                break;
            case -40300674:
                if (key.equals("rotation")) {
                    c = '\b';
                    break;
                }
                break;
            case -4379043:
                if (key.equals("elevation")) {
                    c = '\t';
                    break;
                }
                break;
            case 37232917:
                if (key.equals("transitionPathRotate")) {
                    c = '\n';
                    break;
                }
                break;
            case 92909918:
                if (key.equals("alpha")) {
                    c = 11;
                    break;
                }
                break;
            case 156108012:
                if (key.equals("waveOffset")) {
                    c = '\f';
                    break;
                }
                break;
            case 1530034690:
                if (key.equals("wavePhase")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return this.f3587r;
            case 1:
                return this.f3588s;
            case 2:
                return this.f3591v;
            case 3:
                return this.f3592w;
            case 4:
                return this.f3593x;
            case 5:
                return this.f3581l;
            case 6:
                return this.f3589t;
            case 7:
                return this.f3590u;
            case '\b':
                return this.f3585p;
            case '\t':
                return this.f3584o;
            case '\n':
                return this.f3586q;
            case 11:
                return this.f3583n;
            case '\f':
                return this.f3579j;
            case '\r':
                return this.f3580k;
            default:
                if (key.startsWith("CUSTOM")) {
                    return Float.NaN;
                }
                Log.v("WARNING! KeyCycle", "  UNKNOWN  " + key);
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        C0465a.m1786b(this, context.obtainStyledAttributes(attrs, C0503R.styleable.KeyCycle));
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
            case 1530034690:
                if (tag.equals("wavePhase")) {
                    c = 16;
                    break;
                }
                break;
            case 1532805160:
                if (tag.equals("waveShape")) {
                    c = 17;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f3581l = m1712c(value);
                return;
            case 1:
                this.f3574e = value.toString();
                return;
            case 2:
                this.f3587r = m1712c(value);
                return;
            case 3:
                this.f3588s = m1712c(value);
                return;
            case 4:
                this.f3591v = m1712c(value);
                return;
            case 5:
                this.f3592w = m1712c(value);
                return;
            case 6:
                this.f3593x = m1712c(value);
                return;
            case 7:
                this.f3589t = m1712c(value);
                return;
            case '\b':
                this.f3590u = m1712c(value);
                return;
            case '\t':
                this.f3585p = m1712c(value);
                return;
            case '\n':
                this.f3584o = m1712c(value);
                return;
            case 11:
                this.f3586q = m1712c(value);
                return;
            case '\f':
                this.f3583n = m1712c(value);
                return;
            case '\r':
                this.f3579j = m1712c(value);
                return;
            case 14:
                this.f3578i = m1712c(value);
                return;
            case 15:
                this.f3575f = m1713d(value);
                return;
            case 16:
                this.f3580k = m1712c(value);
                return;
            case 17:
                if (value instanceof Integer) {
                    this.f3576g = m1713d(value);
                    return;
                } else {
                    this.f3576g = 7;
                    this.f3577h = value.toString();
                    return;
                }
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo72118clone() {
        return new KeyCycle().copy(this);
    }
}
