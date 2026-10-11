package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class MotionKeyCycle extends MotionKey {
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

    /* renamed from: v */
    public static final String f2806v = "KeyCycle";

    /* renamed from: w */
    public static final String f2807w = "KeyCycle";

    /* renamed from: c */
    public String f2808c = null;

    /* renamed from: d */
    public int f2809d = 0;

    /* renamed from: e */
    public int f2810e = -1;

    /* renamed from: f */
    public String f2811f = null;

    /* renamed from: g */
    public float f2812g = Float.NaN;

    /* renamed from: h */
    public float f2813h = 0.0f;

    /* renamed from: i */
    public float f2814i = 0.0f;

    /* renamed from: j */
    public float f2815j = Float.NaN;

    /* renamed from: k */
    public float f2816k = Float.NaN;

    /* renamed from: l */
    public float f2817l = Float.NaN;

    /* renamed from: m */
    public float f2818m = Float.NaN;

    /* renamed from: n */
    public float f2819n = Float.NaN;

    /* renamed from: o */
    public float f2820o = Float.NaN;

    /* renamed from: p */
    public float f2821p = Float.NaN;

    /* renamed from: q */
    public float f2822q = Float.NaN;

    /* renamed from: r */
    public float f2823r = Float.NaN;

    /* renamed from: s */
    public float f2824s = Float.NaN;

    /* renamed from: t */
    public float f2825t = Float.NaN;

    /* renamed from: u */
    public float f2826u = Float.NaN;

    public MotionKeyCycle() {
        this.mType = 4;
        this.mCustom = new HashMap<>();
    }

    public void addCycleValues(HashMap<String, KeyCycleOscillator> hashMap) {
        KeyCycleOscillator keyCycleOscillator;
        KeyCycleOscillator keyCycleOscillator2;
        for (String str : hashMap.keySet()) {
            if (str.startsWith("CUSTOM")) {
                CustomVariable customVariable = this.mCustom.get(str.substring(7));
                if (customVariable != null && customVariable.getType() == 901 && (keyCycleOscillator = hashMap.get(str)) != null) {
                    keyCycleOscillator.setPoint(this.mFramePosition, this.f2810e, this.f2811f, -1, this.f2812g, this.f2813h, this.f2814i, customVariable.getValueToInterpolate(), customVariable);
                }
            } else {
                float value = getValue(str);
                if (!Float.isNaN(value) && (keyCycleOscillator2 = hashMap.get(str)) != null) {
                    keyCycleOscillator2.setPoint(this.mFramePosition, this.f2810e, this.f2811f, -1, this.f2812g, this.f2813h, this.f2814i, value);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo72117clone() {
        return null;
    }

    public void dump() {
        System.out.println("MotionKeyCycle{mWaveShape=" + this.f2810e + ", mWavePeriod=" + this.f2812g + ", mWaveOffset=" + this.f2813h + ", mWavePhase=" + this.f2814i + ", mRotation=" + this.f2818m + '}');
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2816k)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2817l)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2818m)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.f2820o)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2821p)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2822q)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2823r)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2819n)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.f2824s)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2825t)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2826u)) {
            hashSet.add("translationZ");
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it2 = this.mCustom.keySet().iterator();
            while (it2.hasNext()) {
                hashSet.add("CUSTOM," + it2.next());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        char c;
        str.hashCode();
        switch (str.hashCode()) {
            case -1581616630:
                if (str.equals(TypedValues.CycleType.S_CUSTOM_WAVE_SHAPE)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1310311125:
                if (str.equals("easing")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1019779949:
                if (str.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -991726143:
                if (str.equals(TypedValues.CycleType.S_WAVE_PERIOD)) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 106629499:
                if (str.equals(TypedValues.CycleType.S_WAVE_PHASE)) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 579057826:
                if (str.equals("curveFit")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 803192288:
                if (str.equals("pathRotate")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 1532805160:
                if (str.equals("waveShape")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 422;
            case 1:
                return 420;
            case 2:
                return 308;
            case 3:
                return 309;
            case 4:
                return 310;
            case 5:
                return 304;
            case 6:
                return 305;
            case 7:
                return 306;
            case '\b':
                return 424;
            case '\t':
                return 315;
            case '\n':
                return 423;
            case 11:
                return 313;
            case '\f':
                return 314;
            case '\r':
                return 311;
            case 14:
                return 312;
            case 15:
                return 403;
            case 16:
                return TypedValues.CycleType.TYPE_WAVE_PHASE;
            case 17:
                return 401;
            case 18:
                return 416;
            case 19:
                return 421;
            case 20:
                return 402;
            default:
                return -1;
        }
    }

    public float getValue(String str) {
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
            case -1019779949:
                if (str.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
                    c = 6;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = 7;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = '\b';
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = '\t';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
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
            case 106629499:
                if (str.equals(TypedValues.CycleType.S_WAVE_PHASE)) {
                    c = '\f';
                    break;
                }
                break;
            case 803192288:
                if (str.equals("pathRotate")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return this.f2820o;
            case 1:
                return this.f2821p;
            case 2:
                return this.f2818m;
            case 3:
                return this.f2824s;
            case 4:
                return this.f2825t;
            case 5:
                return this.f2826u;
            case 6:
                return this.f2813h;
            case 7:
                return this.f2815j;
            case '\b':
                return this.f2822q;
            case '\t':
                return this.f2823r;
            case '\n':
                return this.f2817l;
            case 11:
                return this.f2816k;
            case '\f':
                return this.f2814i;
            case '\r':
                return this.f2819n;
            default:
                return Float.NaN;
        }
    }

    public void printAttributes() {
        HashSet<String> hashSet = new HashSet<>();
        getAttributeNames(hashSet);
        Utils.log(" ------------- " + this.mFramePosition + " -------------");
        Utils.log("MotionKeyCycle{Shape=" + this.f2810e + ", Period=" + this.f2812g + ", Offset=" + this.f2813h + ", Phase=" + this.f2814i + '}');
        String[] strArr = (String[]) hashSet.toArray(new String[0]);
        for (int i = 0; i < strArr.length; i++) {
            TypedValues.AttributesType.getId(strArr[i]);
            Utils.log(strArr[i] + ":" + getValue(strArr[i]));
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        if (i == 401) {
            this.f2809d = i2;
            return true;
        }
        if (i != 421) {
            if (setValue(i, i2)) {
                return true;
            }
            return super.setValue(i, i2);
        }
        this.f2810e = i2;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        if (i == 420) {
            this.f2808c = str;
            return true;
        }
        if (i != 422) {
            return super.setValue(i, str);
        }
        this.f2811f = str;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        if (i == 315) {
            this.f2815j = f;
            return true;
        }
        if (i == 403) {
            this.f2816k = f;
            return true;
        }
        if (i != 416) {
            switch (i) {
                case 304:
                    this.f2824s = f;
                    return true;
                case 305:
                    this.f2825t = f;
                    return true;
                case 306:
                    this.f2826u = f;
                    return true;
                case 307:
                    this.f2817l = f;
                    return true;
                case 308:
                    this.f2820o = f;
                    return true;
                case 309:
                    this.f2821p = f;
                    return true;
                case 310:
                    this.f2818m = f;
                    return true;
                case 311:
                    this.f2822q = f;
                    return true;
                case 312:
                    this.f2823r = f;
                    return true;
                default:
                    switch (i) {
                        case 423:
                            this.f2812g = f;
                            return true;
                        case 424:
                            this.f2813h = f;
                            return true;
                        case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                            this.f2814i = f;
                            return true;
                        default:
                            return super.setValue(i, f);
                    }
            }
        }
        this.f2819n = f;
        return true;
    }
}
