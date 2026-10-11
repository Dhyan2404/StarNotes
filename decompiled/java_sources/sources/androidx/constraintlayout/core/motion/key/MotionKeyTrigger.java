package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes3.dex */
public class MotionKeyTrigger extends MotionKey {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final int TYPE_CROSS = 312;
    public static final int TYPE_NEGATIVE_CROSS = 310;
    public static final int TYPE_POSITIVE_CROSS = 309;
    public static final int TYPE_POST_LAYOUT = 304;
    public static final int TYPE_TRIGGER_COLLISION_ID = 307;
    public static final int TYPE_TRIGGER_COLLISION_VIEW = 306;
    public static final int TYPE_TRIGGER_ID = 308;
    public static final int TYPE_TRIGGER_RECEIVER = 311;
    public static final int TYPE_TRIGGER_SLACK = 305;
    public static final int TYPE_VIEW_TRANSITION_ON_CROSS = 301;
    public static final int TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS = 303;
    public static final int TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS = 302;
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";

    /* renamed from: v */
    public static final String f2851v = "KeyTrigger";

    /* renamed from: c */
    public int f2852c = -1;

    /* renamed from: d */
    public String f2853d = null;

    /* renamed from: e */
    public int f2854e;

    /* renamed from: f */
    public String f2855f;

    /* renamed from: g */
    public String f2856g;

    /* renamed from: h */
    public int f2857h;

    /* renamed from: i */
    public int f2858i;

    /* renamed from: j */
    public float f2859j;

    /* renamed from: k */
    public boolean f2860k;

    /* renamed from: l */
    public boolean f2861l;

    /* renamed from: m */
    public boolean f2862m;

    /* renamed from: n */
    public float f2863n;

    /* renamed from: o */
    public float f2864o;

    /* renamed from: p */
    public boolean f2865p;

    /* renamed from: q */
    public int f2866q;

    /* renamed from: r */
    public int f2867r;

    /* renamed from: s */
    public int f2868s;

    /* renamed from: t */
    public FloatRect f2869t;

    /* renamed from: u */
    public FloatRect f2870u;

    public MotionKeyTrigger() {
        int i = MotionKey.UNSET;
        this.f2854e = i;
        this.f2855f = null;
        this.f2856g = null;
        this.f2857h = i;
        this.f2858i = i;
        this.f2859j = 0.1f;
        this.f2860k = true;
        this.f2861l = true;
        this.f2862m = true;
        this.f2863n = Float.NaN;
        this.f2865p = false;
        this.f2866q = i;
        this.f2867r = i;
        this.f2868s = i;
        this.f2869t = new FloatRect();
        this.f2870u = new FloatRect();
        this.mType = 5;
        this.mCustom = new HashMap<>();
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    public void conditionallyFire(float f, MotionWidget motionWidget) {
    }

    /* renamed from: e */
    public final void m1472e(String str, MotionWidget motionWidget) {
        boolean z = str.length() == 1;
        if (!z) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustom.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z || lowerCase.matches(str)) {
                CustomVariable customVariable = this.mCustom.get(str2);
                if (customVariable != null) {
                    customVariable.applyToWidget(motionWidget);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        char c;
        str.hashCode();
        switch (str.hashCode()) {
            case -1594793529:
                if (str.equals("positiveCross")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -966421266:
                if (str.equals("viewTransitionOnPositiveCross")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -786670827:
                if (str.equals("triggerCollisionId")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -648752941:
                if (str.equals("triggerID")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -638126837:
                if (str.equals("negativeCross")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -76025313:
                if (str.equals("triggerCollisionView")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -9754574:
                if (str.equals("viewTransitionOnNegativeCross")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 364489912:
                if (str.equals("triggerSlack")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1301930599:
                if (str.equals("viewTransitionOnCross")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1401391082:
                if (str.equals("postLayout")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1535404999:
                if (str.equals("triggerReceiver")) {
                    c = '\n';
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
                return 309;
            case 1:
                return 302;
            case 2:
                return 307;
            case 3:
                return 308;
            case 4:
                return 310;
            case 5:
                return 306;
            case 6:
                return 303;
            case 7:
                return 305;
            case '\b':
                return 301;
            case '\t':
                return 304;
            case '\n':
                return 311;
            default:
                return -1;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        if (i == 307) {
            this.f2858i = i2;
            return true;
        }
        if (i == 308) {
            this.f2857h = m1461d(Integer.valueOf(i2));
            return true;
        }
        if (i != 311) {
            switch (i) {
                case 301:
                    this.f2868s = i2;
                    return true;
                case 302:
                    this.f2867r = i2;
                    return true;
                case 303:
                    this.f2866q = i2;
                    return true;
                default:
                    return super.setValue(i, i2);
            }
        }
        this.f2854e = i2;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo72117clone() {
        return new MotionKeyTrigger().copy((MotionKey) this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKeyTrigger copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyTrigger motionKeyTrigger = (MotionKeyTrigger) motionKey;
        this.f2852c = motionKeyTrigger.f2852c;
        this.f2853d = motionKeyTrigger.f2853d;
        this.f2854e = motionKeyTrigger.f2854e;
        this.f2855f = motionKeyTrigger.f2855f;
        this.f2856g = motionKeyTrigger.f2856g;
        this.f2857h = motionKeyTrigger.f2857h;
        this.f2858i = motionKeyTrigger.f2858i;
        this.f2859j = motionKeyTrigger.f2859j;
        this.f2860k = motionKeyTrigger.f2860k;
        this.f2861l = motionKeyTrigger.f2861l;
        this.f2862m = motionKeyTrigger.f2862m;
        this.f2863n = motionKeyTrigger.f2863n;
        this.f2864o = motionKeyTrigger.f2864o;
        this.f2865p = motionKeyTrigger.f2865p;
        this.f2869t = motionKeyTrigger.f2869t;
        this.f2870u = motionKeyTrigger.f2870u;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        if (i != 305) {
            return super.setValue(i, f);
        }
        this.f2859j = f;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        if (i == 309) {
            this.f2856g = str;
            return true;
        }
        if (i == 310) {
            this.f2855f = str;
            return true;
        }
        if (i != 312) {
            return super.setValue(i, str);
        }
        this.f2853d = str;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        if (i != 304) {
            return super.setValue(i, z);
        }
        this.f2865p = z;
        return true;
    }
}
